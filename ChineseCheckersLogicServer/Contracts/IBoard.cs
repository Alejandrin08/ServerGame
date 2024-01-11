using System;
using System.Windows;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ChineseCheckersLogicServer.Contracts {
    [ServiceContract]
<<<<<<< HEAD
    public interface IBoard {
        [OperationContract]
        bool ValidateGame(string idRoom);
        [OperationContract]
        bool ValidateBoard(string idRoom);
=======
    public interface IBoard {    
        [OperationContract]
        bool ValidateGame(string idRoom);
>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
    }

    [ServiceContract(CallbackContract = typeof(ITurnCallback))]
    public interface ITurn {
        [OperationContract(IsOneWay = true)]
        void SendToTurn(string idRoom);
        [OperationContract]
        void AddPlayerInGame(string gamertag, string idRoom);
<<<<<<< HEAD

=======
       
>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
        [OperationContract]
        void RemovePlayerFromGame(string gamertag, string idRoom);
        [OperationContract(IsOneWay = true)]
        void UpdateBoard(Point marble, Point position, string idRoom);
<<<<<<< HEAD
        [OperationContract(IsOneWay = true)]
        void WinningPlayer(string idRoom, string gamertag);
=======
>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
    }

    [ServiceContract]
    public interface ITurnCallback {
        [OperationContract]
        void GameTurn(string turn, int type);
        [OperationContract]
        void UpdateBoardCallback(Point marble, Point position);
<<<<<<< HEAD
        [OperationContract]
        void WinningPlayerCallback(string gamertag);
=======
>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
    }
}