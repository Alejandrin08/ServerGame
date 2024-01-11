using ChineseCheckersDataAccess;
using ChineseCheckersLogicServer.Contracts;
using ChineseCheckersLogicServer.Model;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Linq.Expressions;
using System.Net;
using System.Runtime.Remoting.Contexts;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace ChineseCheckersLogicServer.Controller {

    [ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant)]
    /// <summary>
    /// Interface que contiene los métodos para el manejo de la funcionalidad de los usuarios
    /// </summary>
    public partial class ManagerController : IUser {
<<<<<<< HEAD
        /** 
            * <summary> 
            * Método que agrega un usuario a la base de datos 
            * </summary>
            * <param name="userModel"> Objeto de tipo UserModel que regresa el gamertag y el estado del jugador </param>
            * <returns> 1 si se agrega correctamente, -1 si ocurre un error </returns>
            */
        public int AddUserGame(UserModel userModel) {
            int result = 0;
=======

        public int AddUserGame(UserModel userModel) { 
>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
            try {
                using (var context = new ChineseCheckersEntities())
                using (var transaction = context.Database.BeginTransaction()) {
                    var userGame = new User {
                        Gamertag = userModel.Gamertag,
                        PlayerStatus = userModel.PlayerStatus,
                    }; 
                    context.User.Add(userGame);
                    try {
                        result = context.SaveChanges();
                    } catch (DbUpdateException ex) {
                        transaction.Rollback();
                        MessageBox.Show($"Error de concurrencia al agregar el usuario: {ex.Message}");
                    }
                    transaction.Commit();
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al agregar al usuario: {ex.Message}");
            }
            return result;
        }
        /** 
            * <summary> 
            * Método que agrega una cuenta de un usuario a la base de datos
            * </summary>
            * <param name="userModel"> Objeto de tipo UserModel que regresa el gamertag, el email, la contraseña y la imagen de perfil seleccionada por el usuario </param>
            * <returns> 1 si se agrega correctamente, -1 si ocurre un error </returns>
            */
        public int AddUserAccount(UserModel userModel) {
            int result = 0;
            try {
                using (var context = new ChineseCheckersEntities())
                using (var transaction = context.Database.BeginTransaction()) {
                    var userAccountGame = new UserAccount {
                        GamertagUser = userModel.Gamertag,
                        Email = userModel.Email,
                        Password = BCrypt.Net.BCrypt.HashPassword(userModel.Password),
                        ImageProfile = userModel.ImageProfile,
                    };
                    context.UserAccount.Add(userAccountGame);
                    try {
                        result = context.SaveChanges();
                    } catch (DbUpdateException ex) {
                        transaction.Rollback();
                        LoggerManager.Instance.LogFatal("Error de concurrencia al agregar la cuenta de usuario: ", ex);
                    }
                    transaction.Commit();
                }
            } catch (EntityException ex) {
<<<<<<< HEAD
                LoggerManager.Instance.LogFatal("Error al agregar la cuenta de usuario: ", ex);
=======
                MessageBox.Show($"Error al agregar una cuenta de usuario: {ex.Message}");
                return -1; 
>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
            }
            return result;
        }
        /** 
            * <summary>
            * Método que obtiene la información de un usuario 
            * </summary>
            * <param name="gamertag"> Gamertag del usuario que se trata de obtener la información </param>
            * <returns> Retorna un objeto UserModel </returns>
            */
        public UserModel InfoUser(string gamertag) {
            UserModel userModel = null;
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var userFound = context.UserAccount
                        .Where(user => user.GamertagUser == gamertag)
                        .Select(user => new {
                            user.GamertagUser,
                            user.ImageProfile,
                            user.Email
                        })
                        .FirstOrDefault();
                    userModel = new UserModel();
                    if (userFound != null) {
                        userModel.Gamertag = userFound.GamertagUser;
                        userModel.ImageProfile = userFound.ImageProfile;
                        userModel.Email = userFound.Email;
                    }
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al obtener la información del usuario: ", ex);
            }
            return userModel;
        }
        /**
            * <summary> 
            * Método que actualiza la información de un usuario 
            * </summary>
            * <param name="usermodel"> Objeto de tipo UserModel que se usa para actualizar el gamertag, el email o la imagen de perfil seleccionada por el usuario </param>
            * <param name="gamertag"> Gamertag del usuario que se trata de actualizar la información </param>
            * <returns> Retorna un 1 sí se hizo la actualización de manera correcta, -1 si no se logro realizar </returns>
            */
        public int UpdateInfoUser(UserModel usermodel, string gamertag) {
            int result = 0;
            try {
                using (var context = new ChineseCheckersEntities())
                using (var transaction = context.Database.BeginTransaction()) {
                    try {
                        var user = context.UserAccount
                            .Where(userUpdate => userUpdate.GamertagUser == gamertag)
                            .FirstOrDefault();

                        if (user != null) {
                            user.GamertagUser = usermodel.Gamertag;
                            user.ImageProfile = usermodel.ImageProfile;
                            user.Email = usermodel.Email;
                            RemoveClient(usermodel.Id);
                        }
                        transaction.Commit();
                        result = context.SaveChanges();
                    } catch (DbUpdateException ex) {
                        transaction.Rollback();
                        LoggerManager.Instance.LogFatal("Error de concurrencia al actualizar la información del usuario: ", ex);
                    }
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al actualizar la información del usuario: ", ex);
            }
            return result;
        }
        /** 
            * <summary>
            * Método que actualiza la contraseña de un usuario 
            * </summary>
            * <param name="userModel"> Objeto de tipo UserModel que se usa para actualizar la contraseña del usuario </param>
            * <returns> Retorna un 1 sí se hizo la actualización de manera correcta, -1 si no se logro realizar </returns>
            */
        public int UpdatePassword(UserModel userModel) {
            int result = 0;
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var userAccountUpdate = context.UserAccount
                                        .Where(user => user.Email == userModel.Email)
                                        .FirstOrDefault();
                    if (userAccountUpdate != null) {
                        userAccountUpdate.Password = BCrypt.Net.BCrypt.HashPassword(userModel.Password);
                    }
                    result = context.SaveChanges();
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al actualizar la contraseña del usuario: ", ex);
            }
            return result;
        }
        /** 
            * <summary> 
            * Método que valida la existencia de un usuario 
            * </summary>
            * <param name="userModel"> Objeto de tipo userModel que recibe el gamertag y contraseña para poder llevar a cabo la validación  </param>
            * <returns> Retorna un 1 sí se hizo la validación, -1 si no se logro realizar </returns>
            */
        public int ValidateUser(UserModel userModel) {
            int result = 0;
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var validateUser = (from user in context.UserAccount
                                        where string.Equals(user.GamertagUser, userModel.Gamertag)
                                        select user).FirstOrDefault();
                    if (validateUser != null && BCrypt.Net.BCrypt.Verify(userModel.Password, validateUser.Password)) {
                        result = 1;
                    }
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al validar el usuario: ", ex);
            }
            return result;
        }
        /** 
            * <summary> 
            * Método que valida la existencia de un email 
            * </summary>
            * <param name="userModel"> Objeto de tipo userModel que recibe el email para poder llevar a cabo la validación  </param>
            * <returns> Retorna un 1 sí se hizo la validación, -1 si no se logro realizar </returns>
            */
        public int ValidateEmail(UserModel userModel) {
            int result = 0;
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var validatedEmail = (from user in context.UserAccount
                                          where user.Email == userModel.Email
                                          select user).FirstOrDefault();
                    if (validatedEmail != null) {
                        result = 1;
                    }
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al validar el email: ", ex);
            }
            return result;
        }
<<<<<<< HEAD
        /** 
            * <summary> 
            * Método que valida la existencia de un gamertag 
            * </summary>
            * <param name="userModel"> Objeto de tipo userModel que recibe el gamertag para poder llevar a cabo la validación  </param>
            * <returns> Retorna un 1 sí se hizo la validación, -1 si no se logro realizar </returns>
            */
=======
         
>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
        public int ValidateGamertag(UserModel userModel) {
            int result = 0;
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var validatedEmail = (from user in context.UserAccount
                                          where user.GamertagUser == userModel.Gamertag
                                          select user).FirstOrDefault();
                    if (validatedEmail != null) {
                        result = 1;
                    }
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al validar el gamertag: ", ex);
            }
            return result;
        }
        /** 
            * <summary> 
            * Método que obtiene la imagen de perfil de un usuario 
            * </summary>
            * <param name="gamertag"> Gamertag del usuario que se trata de obtener la imagen de perfil </param>
            * <returns> Retorna un string con la ruta de la imagen de perfil </returns>
            */
        public string GetPlayerImage(string gamertag) {
            string result = null;
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var playerImage = (from user in context.UserAccount
                                       where string.Equals(user.GamertagUser, gamertag)
                                       select user).FirstOrDefault();
                    if (playerImage != null) {
                        result = "/Resources/Images/" + playerImage.ImageProfile;
                    }
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al obtener la imagen de perfil del usuario: ", ex);
            }
            return result;
        }
        /** 
            * <summary> 
            * Método para poder llevar acabo la desconexión de un usuario
            * </summary>
            * <param name="idUser"> Id del usuario </param>
            */
        public void LogoutUser(int idUser) {
            try {
                RemoveClient(idUser);
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal("Error al cerrar la sesión del usuario: ", ex);
            }
        }
        /** 
            * <summary> 
            * Método que obtiene el gamertag de un usuario al que se trata buscar 
            * </summary>
            * <param name="currentGamertag"> Gamertag del usuario que trata de buscar </param>
            * <param name="friendGamertag"> Gamertag del usuario que se trata de encontrar </param>
            * <returns> Retorna un string con el gamertag del usuario </returns>
            */
        public string FindGamertag(string currentGamertag, string friendGamertag) {
            string result = null;
            try {
                const string FRIEND_REQUEST = "Accepted";
                using (var context = new ChineseCheckersEntities()) {
                    var currentUser = context.UserAccount.FirstOrDefault(user => user.GamertagUser == currentGamertag);
                    var friendUser = context.UserAccount.FirstOrDefault(user => user.GamertagUser == friendGamertag);

                    if (currentUser != null && friendUser != null && currentGamertag != friendGamertag) {
                        var areFriends = context.FriendPlayer.Any(friend =>
                            (friend.IdPlayer == currentUser.Id && friend.IdFriend == friendUser.Id && friend.RequestStatus == FRIEND_REQUEST) ||
                            (friend.IdPlayer == friendUser.Id && friend.IdFriend == currentUser.Id && friend.RequestStatus == FRIEND_REQUEST));

                        if (!areFriends) {
                            result = friendGamertag;
                        }
                    }
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al buscar el gamertag: ", ex);
            }
            return result;
        }
        /** 
            * <summary> 
            * Método para obtener el email de un jugador 
            * </summary>
            * <param name="gamertag"> Gamertag del usuario que se trata buscar su email </param>
            * <returns> Retorna una cadena con el correo del usuario </returns>
            */
        public string GetEmail(string gamertag) {
            string result = null;
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var user = context.UserAccount
                        .FirstOrDefault(userEmail => userEmail.GamertagUser == gamertag);

                    if (user != null) {
                        result = user.Email;
                    }
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al obtener el email: ", ex);
            }
            return result;
        }
        /** 
            * <summary> 
            * Método para obtener el id de un jugador 
            * </summary>
            * <param name="gamertag"> Gamertag del usuario que se trata buscar su id </param>
            * <returns> Retorna un entero con el id del usuario </returns>
            */
        public int GetId(string gamertag) {
            int result = 0;
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var user = context.UserAccount
                        .FirstOrDefault(userId => userId.GamertagUser == gamertag);

                    if (user != null) {
                        result = user.Id;
                    }
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al obtener el id del usuario: ", ex);
            }
            return result;
        }
        /** 
            * <summary> 
            * Método para actualizar los juegos ganados de un jugador
            * </summary>
            * <param name="idUser"> Id del usuario que se trata actualizar los juegos ganados </param>
            * <returns> Retorna un 1 si se logro actualizar correctamente, -1 sí no fue posible realizar la actualización </returns>
            */
        public int UpdateGamesWon(int idUser) {
            int result = 0;
            try {
                const int MIN_GAMES = 1;
                using (var context = new ChineseCheckersEntities()) {
                    var user = context.User
                        .FirstOrDefault(userId => userId.Id == idUser);
                    if (user != null) {
                        if (user.GamesWon == null) {
                            user.GamesWon = MIN_GAMES;
                        } else {
                            user.GamesWon++;
                        }
                    }
                    result = context.SaveChanges();
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al actualizar los juegos ganados: ", ex);
            }
            return result;
        }
        /** 
            * <summary> 
            * Método para actualizar los juegos totales de un jugador
            * </summary>
            * <param name="idUser"> Id del usuario que se trata actualizar los juegos totales </param>
            * <returns> Retorna un 1 si se logro actualizar correctamente, -1 sí no fue posible realizar la actualización </returns>
            */
        public int UpdateTotalGames(int idUser) {
            int result = 0;
            try {
                const int MIN_GAMES = 1;
                using (var context = new ChineseCheckersEntities()) {
                    var user = context.User
                        .FirstOrDefault(userId => userId.Id == idUser);
                    if (user != null) {
                        if (user.NumberGames == null) {
                            user.NumberGames = MIN_GAMES;
                        } else {
                            user.NumberGames++;
                        }
                    }
                    result = context.SaveChanges();
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al actualizar los juegos totales: ", ex);
            }
            return result;
        }
        /** 
            * <summary> 
            * Método para obtener los juegos totales de un jugador
            * </summary>
            * <param name="idUser"> Id del usuario que se trata obtener los juegos totales </param>
            * <returns> Retorna un entero con los juegos totales del usuario </returns>
            */
        public int GetTotalGames(int idUser) {
            int result = 0;
            try {
                const int MIN_GAMES = 0;
                using (var context = new ChineseCheckersEntities()) {
                    var user = context.User
                        .FirstOrDefault(userId => userId.Id == idUser);
                    if (user != null) {
                        if (user.NumberGames == null) {
                            user.NumberGames = MIN_GAMES;
                        } else {
                            result = (int)user.NumberGames;
                        }
                    }
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al obtener los juegos totales: ", ex);
            }
            return result;
        }
        /** 
            * <summary> 
            * Método para obtener los juegos ganados de un jugador
            * </summary>
            * <param name="idUser"> Id del usuario que se trata obtener los juegos ganados </param>
            * <returns> Retorna un entero con los juegos ganados del usuario </returns>
            */
        public int GetGamesWon(int idUser) {
            int result = 0;
            try {
                const int MIN_GAMES = 0;
                using (var context = new ChineseCheckersEntities()) {
                    var user = context.User
                        .FirstOrDefault(userId => userId.Id == idUser);
                    if (user != null) {
                        if (user.GamesWon == null) {
                            user.GamesWon = MIN_GAMES;
                        } else {
                            result = (int)user.GamesWon;
                        }
                    }
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al obtener los juegos ganados: ", ex);
            }
            return result;
        }
        /** 
            * <summary> 
            * Método para actualizar el estado de un jugador
            * </summary>
            * <param name="idUser"> Id del usuario que se trata actualizar el estado </param>
            * <param name="status"> Estado del jugador </param>
            * <returns> Retorna un 1 si se realizo la actualización del estado del jugador correctamente, -1 si no lo fue. </returns>
            */
        public int UpdateStatusPlayer(int idUser, bool status) {
            int result = 0;
            try {
                const string PLAYER_STATUS_BANNED = "0";
                const string PLAYER_STATUS_ACTIVE = "1";
                using (var context = new ChineseCheckersEntities()) {
                    var user = context.User
                        .FirstOrDefault(userId => userId.Id == idUser);
                    if (user != null) {
                        if (status) {
                            user.PlayerStatus = PLAYER_STATUS_ACTIVE;
                        } else {
                            user.PlayerStatus = PLAYER_STATUS_BANNED;
                        }
                    }
                    result = context.SaveChanges();
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al actualizar el estado del jugador: ", ex);
            }
            return result;
        }
        /** 
            * <summary> 
            * Método para obtener los juegos ganados de los jugadores y poder desplegarlos en la clasificación (los primeros 3)
            * </summary>
            * <returns> Retorna un diccionario que contiene el gamertag de los mejores jugadores y un entero que contiene la cantidad de victorias </returns>
            */
        public Dictionary<string, int> GetGames() {
            Dictionary<string, int> _bestPlayers = new Dictionary<string, int>();
            try {
                const int BEST_PLAYERS = 3;
                using (var context = new ChineseCheckersEntities()) {
                    var bestPlayers = context.User
                        .Where(user => user.GamesWon != null)
                        .OrderByDescending(user => user.GamesWon)
                        .Take(BEST_PLAYERS)
                        .ToList();
                    _bestPlayers = bestPlayers.ToDictionary(user => user.Gamertag, user => user.GamesWon.Value);
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al obtener los mejores jugadores: ", ex);
            }
            return _bestPlayers;
        }
    }
    /// <summary>
    /// Interface que contiene los métodos para el manejo de la funcionalidad de los amigos
    /// </summary>
    public partial class ManagerController : IUsersManager {
        /** 
            * <summary> 
            * Método que regresa un diccionario con los amigos de un usuario
            * </summary>
            * <param name="gamertag"> Gamertag del usuario para poder obtener la lista de amigos de ese gamertag </param>
            *                                                                              */
        private static readonly Dictionary<int, IUserSessionCallback> playerStatus = new Dictionary<int, IUserSessionCallback>();
        public void GetFriends(string gamertag) {
            Dictionary<string, Tuple<string, bool>> friendsDictionary = new Dictionary<string, Tuple<string, bool>>();
            try {
                const string FRIEND_REQUEST = "Accepted";
                using (var context = new ChineseCheckersEntities()) {
                    int userId = context.UserAccount
                        .Where(user => user.GamertagUser == gamertag)
                        .Select(user => user.Id)
                        .FirstOrDefault();
                    if (userId > 0) {
                        var friendData = (from friend in context.FriendPlayer
                                          join user in context.UserAccount on friend.IdFriend equals user.Id
                                          where friend.IdPlayer == userId && friend.RequestStatus == FRIEND_REQUEST
                                          select new {
                                              user.Id,
                                              Gamertag = user.GamertagUser,
                                              user.ImageProfile,
                                          }).ToList();
                        foreach (var friend in friendData) {
                            bool isOnline = playerStatus.ContainsKey(friend.Id);
                            friendsDictionary[friend.Gamertag] = new Tuple<string, bool>(friend.ImageProfile, isOnline);
                        }
                        IUserCallback callback = OperationContext.Current.GetCallbackChannel<IUserCallback>();
                        callback.GetFriendsCallback(friendsDictionary);
                    }
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al obtener la lista de amigos: ", ex);
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal("Error al obtener la lista de amigos: ", ex);
            }
        }
        /** 
            * <summary> 
            * Método para quitar un cliente de la lista de clientes conectados
            * </summary>
            * <param name="idUser"> Id del usuario que se trata desconectar </param>
            */
        private void RemoveClient(int idUser) {
            try {
                if (playerStatus.ContainsKey(idUser)) {
                    playerStatus.Remove(idUser);
                }
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal("Error al remover el cliente: ", ex);
            }
        }
    }
    /// <summary>
    /// Interface para poder llevar acabo la funcionalidad de las sesiones de los usuarios
    /// </summary>
    public partial class ManagerController : IUserSession {
        /** 
            * <summary> 
            * Método para obtener la sesión de un jugador
            * </summary>
            * <param name="idUser"> Id del usuario que se trata obtener la sesión </param>
            */
        public void GetSessionPlayer(int idUser) {
            try {
                IUserSessionCallback context = OperationContext.Current.GetCallbackChannel<IUserSessionCallback>();

                bool sessionOpened = playerStatus.ContainsKey(idUser);

                if (!sessionOpened) {
                    playerStatus.Add(idUser, context);

                    ICommunicationObject communicationObject = (ICommunicationObject)context;
                    communicationObject.Closed += (sender, e) => {
                        RemoveClient(idUser);
                    };

                    communicationObject.Faulted += (sender, e) => {
                        RemoveClient(idUser);
                    };
                }

                context.GetSessionPlayerCallback(sessionOpened);
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal("Error al obtener la sesión del jugador: ", ex);
            }
        }
    }
}