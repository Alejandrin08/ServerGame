using ChineseCheckersLogicServer.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace ChineseCheckersLogicServer.Model {
    [DataContract]
    public class BoardModel {
<<<<<<< HEAD
        [DataMember]
        public Dictionary<string, ITurnCallback> GamePlayers { get; set; } = new Dictionary<string, ITurnCallback>();
        [DataMember]
        public string IdRoom { get; set; }
=======
        private Dictionary<string, ITurnCallback> _gamePlayers = new Dictionary<string, ITurnCallback>();
        private string _idRoom { get; set; }

        [DataMember]
        public Dictionary<string, ITurnCallback> GamePlayers { get { return _gamePlayers; } set { _gamePlayers = value; } }

        [DataMember]
        public string IdRoom { get { return _idRoom; } set { _idRoom = value; } }
>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
    }
}
