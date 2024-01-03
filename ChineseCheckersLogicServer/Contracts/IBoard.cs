using System;
using System.Windows;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ChineseCheckersLogicServer.Contracts {
    [ServiceContract]
    public interface IBoard {    
        [OperationContract]
        bool ValidateGame(string idRoom);
    }

    [ServiceContract(CallbackContract = typeof(ITurnCallback))]
    public interface ITurn {
        [OperationContract(IsOneWay = true)]
        void SendToTurn(string idRoom);
        [OperationContract]
        void AddPlayerInGame(string gamertag, string idRoom);
       
        [OperationContract]
        void RemovePlayerFromGame(string gamertag, string idRoom);
        [OperationContract(IsOneWay = true)]
        void UpdateBoard(Point marble, Point position, string idRoom);
    }

    [ServiceContract]
    public interface ITurnCallback {
        [OperationContract]
        void GameTurn(string turn, int type);
        [OperationContract]
        void UpdateBoardCallback(Point marble, Point position);
    }
}
