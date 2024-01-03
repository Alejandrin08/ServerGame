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

        private char[] _colorsForTwoPlayers = new char[] { 'B', 'G' };
        private char[] _colorsForThreePlayers = new char[] { 'B', 'G', 'Y' };
        private char[] _colorsForFourPlayers = new char[] { 'B', 'G', 'Y', 'O' };
        private char[] _colorsForFivePlayers = new char[] { 'B', 'G', 'Y', 'O', 'P' };
        private char[] _colorsForSixPlayers = new char[] { 'B', 'G', 'Y', 'O', 'P', 'R' };


        public char[] ColorForTwoPlayers { get { return _colorsForTwoPlayers; } set { _colorsForTwoPlayers = value; } }
        public char[] ColorForThreePlayers { get { return _colorsForThreePlayers; } set { _colorsForThreePlayers = value; } }
        public char[] ColorForFourPlayers { get { return _colorsForFourPlayers; } set { _colorsForFourPlayers = value; } }
        public char[] ColorForFivePlayers { get { return _colorsForFivePlayers; } set { _colorsForFivePlayers = value; } }
        public char[] ColorForSixPlayers { get { return _colorsForSixPlayers; } set { _colorsForSixPlayers = value; } }

        [DataMember]
        public string IdRoom { get { return _idRoom; } set { _idRoom = value; } }
        [DataMember]
        public Dictionary<string, IMessageCallback> Players { get { return _players; } set { _players = value; } }
        [DataMember]
        public Dictionary<string, IPlayersRoomCallback> PlayersRoom { get { return _playersRoom; } set { _playersRoom = value; } }
    }
}
