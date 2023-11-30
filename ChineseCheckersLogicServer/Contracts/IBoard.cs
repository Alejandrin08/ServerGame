using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ChineseCheckersLogicServer.Contracts {
    [ServiceContract(CallbackContract = typeof(IBoardCallback))]
    public interface IBoard {
        [OperationContract(IsOneWay = true)]
        void SendToBoard(string idRoom);
        [OperationContract]
        void AddPlayerInBoard(string gamertag, string idRoom);
        [OperationContract]
        bool ValidateBoardRoom(string idRoom);
    }

    [ServiceContract]
    public interface IBoardCallback {
        [OperationContract]
        void SendToBoardCallback();
    }
}
