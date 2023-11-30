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
    public partial class ManagerController : IFriendship {
        public int AddFriendPlayer(FriendshipModel friendshipModel) {
            int result = 0;
            try {
                using (var context = new ChineseCheckersEntities()) {
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
                return result;
            } catch (EntityException ex) {
                MessageBox.Show($"Error al agregar una amistad: {ex.Message}");
                return -1;
            }
        }

        public int UpdateFriendPlayer(int idUser, int idFriend, string requestStatus) {
            int result = 0;
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var friendPlayer = context.FriendPlayer
                        .FirstOrDefault(friend =>
                            (friend.IdPlayer == idUser && friend.IdFriend == idFriend));
                    if (friendPlayer != null) {  
                        friendPlayer.RequestStatus = requestStatus;
                        result = context.SaveChanges();
                    }
                }
                return result;
            } catch (EntityException ex) {
                MessageBox.Show($"Error al actualizar una amistad: {ex.Message}");
                return -1;
            }
        }

        public int DeleteFriendPlayer(FriendshipModel friendshipModel) {
            int result = 0;
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var friendPlayer = context.FriendPlayer
                        .Where(friend => friend.IdPlayer == friendshipModel.IdUser && friend.IdFriend == friendshipModel.IdFriend && friend.TypeNotification == friendshipModel.TypeNotification)
                        .FirstOrDefault();
                    if (friendPlayer != null) {
                        context.FriendPlayer.Remove(friendPlayer);
                        result = context.SaveChanges();
                    }
                }
                return result;
            } catch (EntityException ex) {
                MessageBox.Show($"Error al eliminar una amistad: {ex.Message}");
                return -1;
            }
        }

        public int ValidateFriendRequest(int idUser, int idFriend, string resquestStatus) {
            int friendRequestValidate = 0;
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var validatedRequest = (from userFriend in context.FriendPlayer
                                            join user in context.UserAccount on userFriend.IdPlayer equals user.Id
                                            where userFriend.IdPlayer == idUser && userFriend.IdFriend == idFriend && userFriend.RequestStatus == resquestStatus
                                            select user).FirstOrDefault();
                    if (validatedRequest != null) {
                        friendRequestValidate = 1;
                    }
                    return friendRequestValidate;
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al validar una solicitud de amistad: {ex.Message}");
                return -1;
            }
        }
    }

    public partial class ManagerController : IUserFriendRequest {
        public void GetFriendRequest(int idUser) {
            Dictionary<string, (string, string, string)> friendsDictionary = new Dictionary<string, (string, string, string)>();
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var friendData = (from friend in context.FriendPlayer
                                      join user in context.UserAccount on friend.IdPlayer equals user.Id
                                      where friend.RequestStatus == "Pending" && friend.IdFriend == idUser
                                      select new {
                                          user.Id,
                                          Gamertag = user.GamertagUser,
                                          user.ImageProfile,
                                          friend.TypeNotification,
                                          SingletonClass.Instance.IdRoom
                                      }).ToList();

                    if (friendData != null) {
                        foreach (var friend in friendData) {
                            friendsDictionary[friend.Gamertag] = (friend.ImageProfile, friend.TypeNotification, friend.IdRoom);
                        }
                        IUserFriendRequestCallback callback = OperationContext.Current.GetCallbackChannel<IUserFriendRequestCallback>();
                        callback.GetFriendRequestCallback(friendsDictionary);
                    }
                }
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error al obtener la solicitud de amistad: {ex.Message}");
            } catch (EntityException ex) {
                MessageBox.Show($"Error al obtener la solicitud de amistad: {ex.Message}");
            }
        }
    }
}
