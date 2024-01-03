using ChineseCheckersDataAccess;
using ChineseCheckersLogicServer.Contracts;
using ChineseCheckersLogicServer.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Data.Entity.Core;
using System.Data.SqlClient;
using System.Data.SqlTypes;
using System.Linq;
using System.Runtime.Remoting.Contexts;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace ChineseCheckersLogicServer.Controller {

    [ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant)]
    public partial class ManagerController : IUser {

        public int AddUserGame(UserModel userModel) { 
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var userGame = new User {
                        Gamertag = userModel.Gamertag,
                        PlayerStatus = userModel.PlayerStatus,
                    }; 
                    context.User.Add(userGame);
                    return context.SaveChanges();
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al agregar un usuario: {ex.Message}");
                return -1;
            }
        }

        public int AddUserAccount(UserModel userModel) {
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var userAccountGame = new UserAccount {
                        GamertagUser = userModel.Gamertag,
                        Email = userModel.Email,
                        Password = BCrypt.Net.BCrypt.HashPassword(userModel.Password),
                        ImageProfile = userModel.ImageProfile,
                    };
                    context.UserAccount.Add(userAccountGame);
                    return context.SaveChanges();
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al agregar una cuenta de usuario: {ex.Message}");
                return -1; 
            }
        }

        public UserModel InfoUser(string gamertag) {
            UserModel userModel = new UserModel();
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var userFound = context.UserAccount
                        .Where(u => u.GamertagUser == gamertag)
                        .Select(u => new {
                            u.GamertagUser,
                            u.ImageProfile,
                            u.Email
                        })
                        .FirstOrDefault();

                    if (userFound != null) {
                        userModel.Gamertag = userFound.GamertagUser;
                        userModel.ImageProfile = userFound.ImageProfile;
                        userModel.Email = userFound.Email;
                    }
                    return userModel;
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al obtener la información del usuario: {ex.Message}");
                return null;
            }
        }

        public int UpdateInfoUser(UserModel usermodel, string gamertag) {
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var user = context.UserAccount
                        .Where(u => u.GamertagUser == gamertag)
                        .FirstOrDefault();
                    if (user != null) {
                        user.Id = usermodel.Id;
                        user.GamertagUser = usermodel.Gamertag;
                        user.ImageProfile = usermodel.ImageProfile;
                        user.Email = usermodel.Email;
                        RemoveClient(usermodel.Id);
                    }
                    return context.SaveChanges();
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al actualizar la información del usuario: {ex.Message}");
                return -1;
            }
        }

        public int UpdatePassword(UserModel userModel) {
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var userAccountUpdate = context.UserAccount
                                        .Where(user => user.Email == userModel.Email)
                                        .FirstOrDefault();
                    if (userAccountUpdate != null) {
                        userAccountUpdate.Password = BCrypt.Net.BCrypt.HashPassword(userModel.Password);
                    }
                    return context.SaveChanges();
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al actualizar la contraseña: {ex.Message}");
                return -1;
            }
        }

        public int ValidateUser(UserModel userModel) {
            try {
                int userValidated = 0;
                using (var context = new ChineseCheckersEntities()) {
                    var validateUser = (from user in context.UserAccount
                                        where string.Equals(user.GamertagUser, userModel.Gamertag)
                                        select user).FirstOrDefault();
                        if (validateUser != null && BCrypt.Net.BCrypt.Verify(userModel.Password, validateUser.Password)) {
                            userValidated = 1;
                        }
                    return userValidated;
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al validar el usuario: {ex.Message}");
                return -1;
            }
        }

        public int ValidateEmail(UserModel userModel) {
            int emailValidated = 0;
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var validatedEmail = (from user in context.UserAccount
                                          where user.Email == userModel.Email
                                          select user).FirstOrDefault();
                    if (validatedEmail != null) {
                        emailValidated = 1;
                    }
                    return emailValidated;
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al validar el email: {ex.Message}");
                return -1;
            }
        }
         
        public int ValidateGamertag(UserModel userModel) {
            int gamertagValidated = 0;
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var validatedEmail = (from user in context.UserAccount
                                          where user.GamertagUser == userModel.Gamertag
                                          select user).FirstOrDefault();
                    if (validatedEmail != null) {
                        gamertagValidated = 1;
                    }
                    return gamertagValidated;
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al validar el gamertag: {ex.Message}");
                return -1;
            }
        }

        public string GetPlayerImage(string gamertag) {
            string path = "";
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var playerImage = (from user in context.UserAccount
                                       where string.Equals(user.GamertagUser, gamertag)
                                       select user).FirstOrDefault();
                    if (playerImage != null) {
                        path = "/Resources/Images/" + playerImage.ImageProfile;
                    }
                    return path;
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al obtener la imagen de perfil: {ex.Message}");
                return null;
            }
        }

        public void LogoutUser(int idUser) {
            RemoveClient(idUser);
        }

        public string FindGamertag(string currentGamertag, string friendGamertag) {
            string gamertagToFound = "";
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var currentUser = context.UserAccount.FirstOrDefault(user => user.GamertagUser == currentGamertag);
                    var friendUser = context.UserAccount.FirstOrDefault(user => user.GamertagUser == friendGamertag);

                    if (currentUser != null && friendUser != null && currentGamertag != friendGamertag) {
                        var areFriends = context.FriendPlayer.Any(friend =>
                            (friend.IdPlayer == currentUser.Id && friend.IdFriend == friendUser.Id && friend.RequestStatus == "Accepted") ||
                            (friend.IdPlayer == friendUser.Id && friend.IdFriend == currentUser.Id && friend.RequestStatus == "Accepted"));

                        if (!areFriends) {
                            gamertagToFound = friendGamertag;
                        }
                    }
                    return gamertagToFound;
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al encontrar un amigo: {ex.Message}");
                return null;
            }
        }

        public string GetEmail(string gamertag) {
            string email = "";
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var user = context.UserAccount
                        .FirstOrDefault(userEmail => userEmail.GamertagUser == gamertag);

                    if (user != null) {
                        email = user.Email;
                    }
                    return email;
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al obtener el correo: {ex.Message}");
                return null;
            }
        }

        public int GetId(string gamertag) {
            int id = 0;
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var user = context.UserAccount
                        .FirstOrDefault(userId => userId.GamertagUser == gamertag);

                    if (user != null) {
                        id = user.Id;
                    }
                    return id;
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al obtener el id: {ex.Message}");
                return -1;
            }
        }
    }

    public partial class ManagerController : IUsersManager {

        private static readonly Dictionary<int, IUserSessionCallback> playerStatus = new Dictionary<int, IUserSessionCallback>();

        public void GetFriends(string gamertag) {
            Dictionary<string, Tuple<string, bool>> friendsDictionary = new Dictionary<string, Tuple<string, bool>>();
            try {
                using (var context = new ChineseCheckersEntities()) {
                    int userId = context.UserAccount
                        .Where(user => user.GamertagUser == gamertag)
                        .Select(user => user.Id)
                        .FirstOrDefault();

                    if (userId > 0) {
                        var friendData = (from friend in context.FriendPlayer
                                          join user in context.UserAccount on friend.IdFriend equals user.Id
                                          where friend.IdPlayer == userId && friend.RequestStatus == "Accepted"
                                          select new {
                                              user.Id,
                                              Gamertag = user.GamertagUser,
                                              user.ImageProfile,
                                          }).ToList();

                        if (friendData != null) {
                            foreach (var friend in friendData) {
                                bool isOnline = playerStatus.ContainsKey(friend.Id);
                                friendsDictionary[friend.Gamertag] = new Tuple<string, bool>(friend.ImageProfile, isOnline);
                            }

                            IUserCallback callback = OperationContext.Current.GetCallbackChannel<IUserCallback>();
                            callback.GetFriendsCallback(friendsDictionary);
                        }
                    }
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al obtener la lista de amigos: {ex.Message}");
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error al obtener la lista de amigos: {ex.Message}");
            }
        }

        private void RemoveClient(int idUser) {
            if (playerStatus.ContainsKey(idUser)) {
                playerStatus.Remove(idUser);
            }
        }
    }

    public partial class ManagerController : IUserSession {
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
                MessageBox.Show($"Error al obtener la sesión del jugador: {ex.Message}");
            }
        }
    }
}