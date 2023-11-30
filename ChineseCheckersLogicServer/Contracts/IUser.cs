using ChineseCheckersLogicServer.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ChineseCheckersLogicServer.Contracts {
    [ServiceContract]
    public interface IUser {
        [OperationContract]
        int AddUserGame(UserModel userModel);
        [OperationContract]
        int AddUserAccount(UserModel userModel);
        [OperationContract]
        int ValidateUser(UserModel userModel);
        [OperationContract]
        string GetPlayerImage(string gamertag);
        [OperationContract]
        void LogoutUser(int idUser);
        [OperationContract]
        int ValidateEmail(UserModel userModel);
        [OperationContract]
        int ValidateGamertag(UserModel userModel);
        [OperationContract]
        int UpdatePassword(UserModel userModel);
        [OperationContract]
        UserModel InfoUser(string gamertag);
        [OperationContract]
        int UpdateInfoUser(UserModel usermodel, string gamertag);
        [OperationContract]
        string FindGamertag(string currentGamertag, string friendGamertag);
        [OperationContract]
        string GetEmail(string gamertag);
        [OperationContract]
        int GetId(string gamertag);
    }


    [ServiceContract(CallbackContract = typeof(IUserCallback))]
    public interface IUsersManager {
        [OperationContract(IsOneWay = true)]
        void GetFriends(string gamertag);
    }

    [ServiceContract]
    public interface IUserCallback {
        [OperationContract]
        void GetFriendsCallback(Dictionary<string, Tuple<string, bool>> stateFriend);
    }

    [ServiceContract(CallbackContract = typeof(IUserSessionCallback))]
    public interface IUserSession {
        [OperationContract(IsOneWay = true)]
        void GetSessionPlayer(int idUser);
    }

    [ServiceContract]
    public interface IUserSessionCallback {
        [OperationContract]
        void GetSessionPlayerCallback();
    }
}
