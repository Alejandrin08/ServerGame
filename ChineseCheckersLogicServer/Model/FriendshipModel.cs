using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace ChineseCheckersLogicServer.Model {
    [DataContract]
    public class FriendshipModel {
        [DataMember]
        public int IdUser { get; set; }
        [DataMember]
        public int IdFriend { get; set; }
        [DataMember]
        public string RequestStatus { get; set; }
        [DataMember]
        public string TypeNotification { get; set; }
        [DataMember]
        public string IdRoom { get; set; }
    }
}
