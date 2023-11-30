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

        public int ValidateRoom(string idRoom) {
            int result;
            if (_rooms.Contains(idRoom)) {
                result = 1;
            } else {
                result = 0;
            }
            return result;
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

        private static readonly Dictionary<string, RoomModel> playersRoom = new Dictionary<string, RoomModel>();
        private static readonly Dictionary<string, List<String>> playersRoomDictionary = new Dictionary<string, List<String>>();

        public void AddPlayerRoom(string gamertag, string idRoom) {
            try {
                IPlayersRoomCallback context = OperationContext.Current.GetCallbackChannel<IPlayersRoomCallback>();

                if (_rooms.Contains(idRoom)) {
                    if (playersRoom.ContainsKey(idRoom)) {
                        RoomModel room = playersRoom[idRoom];
                        room.PlayersRoom.Add(gamertag, context);
                        List<string> listPlayers = playersRoomDictionary[idRoom];
                        listPlayers.Add(gamertag);
                        playersRoomDictionary[idRoom] = listPlayers;
                    } else {
                        RoomModel room = new RoomModel {
                            IdRoom = idRoom
                        };
                        room.PlayersRoom.Add(gamertag, context);
                        playersRoom.Add(idRoom, room);
                        List<string> listPlayers = new List<string>();
                        listPlayers.Add(gamertag);
                        playersRoomDictionary.Add(idRoom, listPlayers);

                    }
                }
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error al obtener la solicitud de amistad: {ex.Message}");
            }
        }

        public void GetPlayersRoom(string gamertag, string idRoom) {
            try {
                if (playersRoom.ContainsKey(idRoom)) {
                    RoomModel room = playersRoom[idRoom];
                    if (room != null && room.PlayersRoom != null) {
                        List<string> listPlayers = playersRoomDictionary[idRoom];
                        foreach (var players in room.PlayersRoom.Values) {
                            players.GetPlayersRoomCallback(listPlayers);
                        }
                    }
                }
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error al obtener la solicitud de amistad: {ex.Message}");
            }
        }
    }
}
