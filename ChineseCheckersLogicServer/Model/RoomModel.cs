using ChineseCheckersLogicServer.Contracts;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace ChineseCheckersLogicServer.Model {
    [DataContract]
    public class RoomModel {

        private string _idRoom { get; set; }
        private Dictionary<string, IMessageCallback> _players = new Dictionary<string, IMessageCallback>();
        private Dictionary<string, IPlayersRoomCallback> _playersRoom = new Dictionary<string, IPlayersRoomCallback>();
        private Dictionary<string, IBoardCallback> _boardPlayers = new Dictionary<string, IBoardCallback>();

        [DataMember]
        public string IdRoom { get { return _idRoom; } set { _idRoom = value; } }
        [DataMember]
        public Dictionary<string, IMessageCallback> Players { get { return _players; } set { _players = value; } }
        [DataMember]
        public Dictionary<string, IPlayersRoomCallback> PlayersRoom { get { return _playersRoom; } set { _playersRoom = value; } }
        [DataMember]
        public Dictionary<string, IBoardCallback> BoardPlayers { get { return _boardPlayers; } set { _boardPlayers = value; } }
    }
}

