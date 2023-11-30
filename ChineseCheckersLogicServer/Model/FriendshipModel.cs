using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace ChineseCheckersLogicServer.Model {
    [DataContract]
    public class FriendshipModel {

        private int _idUser;
        private int _idFriend;
        private string _requestStatus;
        private string _typeNotification;
        private string _idRoom;

        [DataMember]
        public int IdUser { get { return _idUser; } set { _idUser = value; } }
        [DataMember]
        public int IdFriend { get { return _idFriend; } set { _idFriend = value; } }
        [DataMember]
        public string RequestStatus { get { return _requestStatus; } set { _requestStatus = value; } }
        [DataMember]
        public string TypeNotification { get { return _typeNotification; } set { _typeNotification = value; } }
        [DataMember]
        public string IdRoom { get { return _idRoom; } set { _idRoom = value; } }
    }
}
