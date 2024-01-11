using ChineseCheckersDataAccess;
using ChineseCheckersLogicServer.Contracts;
using ChineseCheckersLogicServer.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Data.SqlClient;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace ChineseCheckersLogicServer.Controller {

    /// <summary>
    /// Esta Interface incluye los métodos que se ocupan para la funcionalidad de la amistad de los jugadores.
    /// </summary>
    public partial class ManagerController : IFriendship {
        /**
            * <summary>
            * Añade una relación de amistad entre dos jugadores
            * </summary>
            * <param name="friendshipModel">El objeto de tipo FriendshipModel que contiene el id del jugador, el id del amigo y el tipo de notificación</param>
            * <returns>Retorna 1 sí se añadio correctamente la relación de amistad entre los jugadores</returns>
            */
        public int AddFriendPlayer(FriendshipModel friendshipModel) {
            int result = 0;
            try {
                using (var context = new ChineseCheckersEntities()) {
                    bool friendshipExists = context.FriendPlayer.Any(friendPlayer =>
                        friendPlayer.IdPlayer == friendshipModel.IdUser &&
                        friendPlayer.IdFriend == friendshipModel.IdFriend &&
                        friendPlayer.TypeNotification == friendshipModel.TypeNotification);

                    if (!friendshipExists) {
                        var friendPlayer = new FriendPlayer {
                            IdPlayer = friendshipModel.IdUser,
                            IdFriend = friendshipModel.IdFriend,
                            RequestStatus = friendshipModel.RequestStatus,
                            TypeNotification = friendshipModel.TypeNotification,
                        };
                        SingletonClass.Instance.IdRoom = friendshipModel.IdRoom;
                        context.FriendPlayer.Add(friendPlayer);
                        result = context.SaveChanges();
                    }
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogError($"Error al añadir una amistad: ", ex);
            }
            return result;
        }
        /**
            * <summary>
            * Actualiza una relación de amistad entre dos jugadores. Se ocupa para aceptar o rechazar una solicitud de amistad
            * </summary>
            * <param name="idFriend">El id del amigo</param>
            * <param name="idUser">El id del jugador</param>
            * <param name="requestStatus">El estado de la solicitud de amistad</param>
            * <returns>Retorna 1 sí se añadio correctamente la relación de amistad entre los jugadores</returns>
            */
        public int UpdateFriendPlayer(int idUser, int idFriend, string requestStatus) {
            int result = 0;
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var friendPlayer = context.FriendPlayer
                        .FirstOrDefault(friend =>
                            friend.IdPlayer == idUser && friend.IdFriend == idFriend);

                    if (friendPlayer != null) {
                        friendPlayer.RequestStatus = requestStatus;
                        result = context.SaveChanges();
                    }
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogError($"Error al actualizar una amistad: ", ex);
            }
            return result;
        }
        /**
            * <summary>
            * Elimina una solicitud de amistad o una invitación a una partida
            * </summary>
            * <param name="friendshipModel">El objeto de tipo FriendshipModel que contiene el id del jugador, el id del amigo y el tipo de notificación</param>
            * <returns>Retorna 1 sí se elimino correctamente la solicitud de amistad o la invitación a una partida</returns>
            */
        public int DeleteFriendPlayer(FriendshipModel friendshipModel) {
            int result = 0;
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var friendPlayer = context.FriendPlayer
                        .FirstOrDefault(friend =>
                            friend.IdPlayer == friendshipModel.IdUser &&
                            friend.IdFriend == friendshipModel.IdFriend &&
                            friend.TypeNotification == friendshipModel.TypeNotification);

                    if (friendPlayer != null) {
                        context.FriendPlayer.Remove(friendPlayer);
                        result = context.SaveChanges();
                    } 
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogError($"Error al eliminar una amistad: ", ex);
            }
            return result;
        }
        /**
            * <summary>
            * Valida las solicitudes de amistad, si existe una solicitud de amistad entre dos jugadores al mismo tiempo.
            * </summary>
            * <param name="idFriend">El id del amigo</param>
            * <param name="idUser">El id del jugador</param>
            * <param name="requestStatus">El estado de la solicitud de amistad</param>
            * <returns>Retorna 1 sí el jugador existe</returns>
            */
        private static readonly object validationLock = new object();
        public int ValidateFriendRequest(int idUser, int idFriend, string requestStatus) {
            int result = 0;
            try {
                lock (validationLock) {
                    using (var context = new ChineseCheckersEntities()) {
                        bool isValidatedRequest = context.FriendPlayer
                            .Any(userFriend => userFriend.IdPlayer == idUser &&
                                               userFriend.IdFriend == idFriend &&
                                               userFriend.RequestStatus == requestStatus);
                        result = isValidatedRequest ? 1 : -2;
                    }
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal($"Error al validar una amistad: ", ex);
            }
            return result;
        }
    }
    /// <summary>
    /// Esta Interface incluye los métodos que se ocupa de mostrar los callback para la funcionalidad de la amistad de los jugadores.
    /// </summary>
    public partial class ManagerController : IUserFriendRequest {
        /**
            * <summary>
            * Regresa la lista de amigos de un jugador
            * </summary>
            * <param name="idUser">El id del jugador</param>
            */
        public void GetFriendRequest(int idUser) {
            Dictionary<string, (string, string, string)> friendsDictionary = new Dictionary<string, (string, string, string)>();
            try {
                const string FRIEND_REQUEST = "Pending";
                using (var context = new ChineseCheckersEntities()) {
                    var friendData = (from friend in context.FriendPlayer
                                      join user in context.UserAccount on friend.IdPlayer equals user.Id
                                      where friend.RequestStatus == FRIEND_REQUEST && friend.IdFriend == idUser
                                      select new {
                                          user.Id,
                                          Gamertag = user.GamertagUser,
                                          user.ImageProfile,
                                          friend.TypeNotification,
                                          SingletonClass.Instance.IdRoom
                                      }).ToList();
                    foreach (var friend in friendData) {
                        friendsDictionary[friend.Gamertag] = (friend.ImageProfile, friend.TypeNotification, friend.IdRoom);
                    }
                    IUserFriendRequestCallback callback = OperationContext.Current.GetCallbackChannel<IUserFriendRequestCallback>();
                    callback.GetFriendRequestCallback(friendsDictionary);
                }
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal($"Error al obtener la lista de amigos: ", ex);
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal($"Error al obtener la lista de amigos: ", ex);
            }
        }
    }
}
