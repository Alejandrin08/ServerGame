using ChineseCheckersLogicServer.Contracts;
using ChineseCheckersLogicServer.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace ChineseCheckersLogicServer.Controller {
   
    public partial class ManagerController : IBoard {
        private static Dictionary<string, RoomModel> _playersInBoard = new Dictionary<string, RoomModel>();
        public void AddPlayerInBoard(string gamertag, string idRoom) {
            try {
                IBoardCallback context = OperationContext.Current.GetCallbackChannel<IBoardCallback>();

                if (_rooms.Contains(idRoom)) {
                    if (_playersInBoard.ContainsKey(idRoom)) {
                        RoomModel room = _playersInBoard[idRoom];
                        room.BoardPlayers.Add(gamertag, context);

                    } else {
                        RoomModel room = new RoomModel {
                            IdRoom = idRoom
                        };
                        room.BoardPlayers.Add(gamertag, context);
                        _playersInBoard.Add(idRoom, room);
                    }
                }
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error al obtener la solicitud de amistad: {ex.Message}");
            }
        }

        public void SendToBoard(string idRoom) {
            try {
                if (_playersInBoard.ContainsKey(idRoom)) {
                    RoomModel room = _playersInBoard[idRoom];
                    if (room != null && room.BoardPlayers != null) {
                        foreach (var players in room.BoardPlayers.Values) {
                            players.SendToBoardCallback();
                        }
                    }
                }
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error al obtener la solicitud de amistad: {ex.Message}");
            }
        }

        public bool ValidateBoardRoom(string idRoom) {
            bool result;
            RoomModel room = _playersInBoard[idRoom];
            if (room.BoardPlayers.Count > 1) {
                result = true;
            } else {
                result = false;
            }
            return result;
        }
    }
}
