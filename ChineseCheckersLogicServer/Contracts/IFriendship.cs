using ChineseCheckersLogicServer.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ChineseCheckersLogicServer.Contracts {
    [ServiceContract]
    public interface IFriendship {
        [OperationContract]
        int AddFriendPlayer(FriendshipModel friendshipModel);
        [OperationContract]
        int UpdateFriendPlayer(int idUser, int idFriend, string requestStatus);
        [OperationContract]
        int DeleteFriendPlayer(FriendshipModel friendshipModel);
        [OperationContract]
        int ValidateFriendRequest(int idUser, int idFriend, string resquestStatus);
    }

    [ServiceContract(CallbackContract = typeof(IUserFriendRequestCallback))]
    public interface IUserFriendRequest {
        [OperationContract(IsOneWay = true)]
        void GetFriendRequest(int idUser);
    }

    [ServiceContract]
    public interface IUserFriendRequestCallback {
        [OperationContract]
        void GetFriendRequestCallback(Dictionary<string, (string, string, string)> friendPlayer);
    }
}
