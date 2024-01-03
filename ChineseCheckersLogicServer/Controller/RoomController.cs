using ChineseCheckersLogicServer.Contracts;
using ChineseCheckersLogicServer.Model;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using IMessage = ChineseCheckersLogicServer.Contracts.IMessage;

namespace ChineseCheckersLogicServer.Controller {

    public partial class ManagerController : IRoom {
        private static readonly List<string> _rooms = new List<string>();

        public string CreateRoom(string gamertag) {
            string idRoom;
            do {
                idRoom = GenerateId();
            } while (_rooms.Contains(idRoom));
            _rooms.Add(idRoom);
            return idRoom;
        }

        public string GenerateId() {
            const string CHARACTERS = "0123456789";
            StringBuilder id = new StringBuilder();
            Random random = new Random();

            for (int i = 0; i < 6; i++) {
                int index = random.Next(0, CHARACTERS.Length);
                id.Append(CHARACTERS[index]);
            }
            return id.ToString();
        }

        public void RemovePlayer(string gamertag, string idRoom) {
            if (_playersInRoom.ContainsKey(idRoom)) {
                RoomModel room = _playersInRoom[idRoom];

                if (room.Players.Count > 1) {
                    room.Players.Remove(gamertag);

                } else {
                    room.Players.Remove(gamertag);
                    _playersInRoom.Remove(idRoom);
                    _rooms.Remove(idRoom);
                }
            }
        }

        public bool ValidateRoom(string idRoom) {
            return _rooms.Contains(idRoom);
        }

        public bool ValidateBoardRoom(string idRoom) {
            return _playersRoom.ContainsKey(idRoom) && _playersRoom[idRoom].PlayersRoom.Count > 1;
        }
    }

    public partial class ManagerController : IMessage {

        private static readonly Dictionary<string, RoomModel> _playersInRoom = new Dictionary<string, RoomModel>();
        public void SendMessage(string message, string gamertag, string idRoom) {
            try {
                if (_playersInRoom.ContainsKey(idRoom)) {
                    RoomModel room = _playersInRoom[idRoom];
                    if (room != null && room.Players != null) {
                        foreach (var players in room.Players.Values) {
                            players.SendMessageCallback(message, gamertag);
                        }
                    }
                }
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error al obtener la solicitud de amistad: {ex.Message}");
            }
        }

        public void AddPlayer(string gamertag, string idRoom) {
            try {
                IMessageCallback context = OperationContext.Current.GetCallbackChannel<IMessageCallback>();
                if (_playersInRoom.ContainsKey(idRoom)) {
                    RoomModel room = _playersInRoom[idRoom];
                    room.Players.Add(gamertag, context);
                } else {
                    RoomModel room = new RoomModel {
                        IdRoom = idRoom
                    };
                    room.Players.Add(gamertag, context);
                    _playersInRoom.Add(idRoom, room);
                }
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error al obtener la solicitud de amistad: {ex.Message}");
            }
        }
    }

    public partial class ManagerController : IPlayersRoom {

        private static readonly Dictionary<string, RoomModel> _playersRoom = new Dictionary<string, RoomModel>();
        private static readonly Dictionary<string, List<String>> _playersRoomDictionary = new Dictionary<string, List<String>>();

        public void AddPlayerRoom(string gamertag, string idRoom) {
            try {
                IPlayersRoomCallback context = OperationContext.Current.GetCallbackChannel<IPlayersRoomCallback>();

                if (_rooms.Contains(idRoom)) {
                    if (_playersRoom.ContainsKey(idRoom)) {
                        RoomModel room = _playersRoom[idRoom];
                        room.PlayersRoom.Add(gamertag, context);
                        List<string> listPlayers = _playersRoomDictionary[idRoom];
                        listPlayers.Add(gamertag);
                        _playersRoomDictionary[idRoom] = listPlayers;
                    } else {
                        RoomModel room = new RoomModel {
                            IdRoom = idRoom
                        };
                        room.PlayersRoom.Add(gamertag, context);
                        _playersRoom.Add(idRoom, room);
                        List<string> listPlayers = new List<string>();
                        listPlayers.Add(gamertag);
                        _playersRoomDictionary.Add(idRoom, listPlayers);

                    }
                }
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error al obtener la solicitud de amistad: {ex.Message}");
            }
        }

        public void GetPlayersRoom(string gamertag, string idRoom) {
            try {
                if (_playersRoom.ContainsKey(idRoom)) {
                    RoomModel room = _playersRoom[idRoom];
                    if (room != null && room.PlayersRoom != null) {
                        List<string> listPlayers = _playersRoomDictionary[idRoom];
                        foreach (var players in room.PlayersRoom.Values) {
                            players.GetPlayersRoomCallback(listPlayers);
                        }
                    }
                }
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error al obtener la solicitud de amistad: {ex.Message}");
            }
        }

        public void SendToBoard(string idRoom) {
            try {
                if (_playersRoom.ContainsKey(idRoom)) {
                    RoomModel room = _playersRoom[idRoom];
                    if (room != null && room.PlayersRoom != null) {
                        foreach (var players in room.PlayersRoom.Values) {
                            players.SendToBoardCallback();
                        }
                    }
                }
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error al obtener la solicitud de amistad: {ex.Message}");
            }
        }

        public void RemovePlayerRoom(string gamertag, string idRoom) {
            if (_playersRoom.ContainsKey(idRoom)) {
                RoomModel room = _playersRoom[idRoom];

                if (_playersRoomDictionary.ContainsKey(idRoom)) {
                    List<string> listPlayers = _playersRoomDictionary[idRoom];
                    listPlayers.Remove(gamertag);
                    _playersRoomDictionary[idRoom] = listPlayers;
                }
                if (room.PlayersRoom.Count > 1) {
                    room.PlayersRoom.Remove(gamertag);
                } else {
                    room.Players.Remove(gamertag);
                    _playersRoom.Remove(idRoom);
                    _rooms.Remove(idRoom);
                }
            }
        }

        public void AssignColors(string idRoom) {
            Dictionary<string, char> dictionaryPlayersColor = new Dictionary<string, char>();
            char[] colors = null;

            if (_playersRoom.ContainsKey(idRoom)) {
                RoomModel room = _playersRoom[idRoom];
                if (room != null && room.PlayersRoom != null) {
                    switch (room.PlayersRoom.Count) {
                        case 2:
                            colors = room.ColorForTwoPlayers;
                            break;
                        case 3:
                            colors = room.ColorForThreePlayers;
                            break;
                        case 4:
                            colors = room.ColorForFourPlayers;
                            break;
                        case 5:
                            colors = room.ColorForFivePlayers;
                            break;
                        case 6:
                            colors = room.ColorForSixPlayers;
                            break;
                    }
                    if (colors != null) {
                        foreach (var playerKey in room.PlayersRoom.Keys) {
                            char colorType = colors[dictionaryPlayersColor.Keys.Count];
                            dictionaryPlayersColor.Add(playerKey, colorType);
                        }
                        if (room != null && room.PlayersRoom != null) {
                            foreach (var players in room.PlayersRoom.Values) {
                                players.AssignColorsCallback(dictionaryPlayersColor);
                            }
                        }
                        
                    }
                }
            }
        }
    }
}