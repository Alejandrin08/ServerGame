using ChineseCheckersLogicServer.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ChineseCheckersLogicServer.Contracts {

    [ServiceContract]
    public interface IRoom {
        [OperationContract]
        string CreateRoom(string gamertag);
        [OperationContract]
        string GenerateId();
        [OperationContract]
        void RemovePlayer(string gamertag, string idRoom);
        [OperationContract]
        int ValidateRoom(string idRoom);
    }

    [ServiceContract(CallbackContract = typeof(IMessageCallback))]
    public interface IMessage {
        [OperationContract(IsOneWay = true)]
        void SendMessage(string message, string gamertag, string idRoom);
        [OperationContract]
        void AddPlayer(string gamertag, string idRoom);
    }

    [ServiceContract]
    public interface IMessageCallback {
        [OperationContract]
        void SendMessageCallback(string message, string gamertag);
    }

    [ServiceContract(CallbackContract = typeof(IPlayersRoomCallback))]
    public interface IPlayersRoom {
        [OperationContract(IsOneWay = true)]
        void GetPlayersRoom(string gamertag, string idRoom);
        [OperationContract]
        void AddPlayerRoom(string gamertag, string idRoom);
    }

    [ServiceContract]
    public interface IPlayersRoomCallback {
        [OperationContract]
        void GetPlayersRoomCallback(List<string> playersInRoom);
    }
}
