using ChineseCheckersLogicServer.Contracts;
using ChineseCheckersLogicServer.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.ServiceModel.Channels;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Documents;

namespace ChineseCheckersLogicServer.Controller {

    public partial class ManagerController : IBoard {

        public bool ValidateGame(string idRoom) {
            if (string.IsNullOrEmpty(idRoom)) {
                return false;
            }
            return _playersInGame.ContainsKey(idRoom);
        }
    }

    public partial class ManagerController : ITurn {

        private static Dictionary<string, int> _turnTracker = new Dictionary<string, int    >();
        private static Dictionary<string, BoardModel> _playersInGame = new Dictionary<string, BoardModel>();
        public void SendToTurn(string idRoom) {
            if (_playersInGame.ContainsKey(idRoom)) {

                BoardModel board = _playersInGame[idRoom];

                if (!_turnTracker.ContainsKey(idRoom)) {
                    _turnTracker[idRoom] = 0;
                }

                int nextTurn = _turnTracker[idRoom];
                var keys = board.GamePlayers.Keys.ToList();

                if (keys.Count > 0) {
                    string nextGamertag = keys[nextTurn % keys.Count];
                    _turnTracker[idRoom] = (nextTurn + 1) % keys.Count;

                    if (board != null && board.GamePlayers != null) {

                        List<string> nextGamertagKeys = new List<string>();
                        List<string> otherKeys = new List<string>();

                        foreach (var key in board.GamePlayers.Keys) {
                            if (key == nextGamertag) {
                                nextGamertagKeys.Add(key);
                            } else {
                                otherKeys.Add(key);
                            }
                        }

                        foreach (var gamePlayers in board.GamePlayers) {
                            var gamertag = gamePlayers.Key.ToString();
                            var context = gamePlayers.Value;
                            if (nextGamertagKeys.Contains(gamertag)) {
                                context.GameTurn(nextGamertag, 1);
                            } else {
                                context.GameTurn(nextGamertag, 2);
                            }
                        }
                    }
                }
            }
        }

        public void UpdateBoard(Point Marble, Point position, string idRoom) {
            try {
                if (_playersInGame.ContainsKey(idRoom)) {
                    BoardModel board = _playersInGame[idRoom];
                    if (board != null && board.GamePlayers != null) {
                        foreach (var gamePlayers in board.GamePlayers.Values) {

                            gamePlayers.UpdateBoardCallback(Marble, position);
                        }
                    }
                }
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error al obtener la solicitud de amistad: {ex.Message}");
            }

        }

        public void AddPlayerInGame(string gamertag, string idRoom) {
            try {
                ITurnCallback context = OperationContext.Current.GetCallbackChannel<ITurnCallback>();

                if (_rooms.Contains(idRoom)) {
                    if (_playersInGame.ContainsKey(idRoom)) {
                        BoardModel board = _playersInGame[idRoom];
                        board.GamePlayers.Add(gamertag, context);
                        Console.WriteLine(gamertag + "se agrego");
                    } else {
                        BoardModel board = new BoardModel {
                            IdRoom = idRoom
                        };
                        board.GamePlayers.Add(gamertag, context);
                        _playersInGame.Add(idRoom, board);
                    }
                }
            } catch (CommunicationException ex) {
                MessageBox.Show($"Error al obtener la solicitud de amistad: {ex.Message}");
            }
        }

        public void RemovePlayerFromGame(string gamertag, string idRoom) {
            if (_playersInGame.ContainsKey(idRoom)) {
                BoardModel board = _playersInGame[idRoom];

                if (board.GamePlayers.Count > 1) {
                    board.GamePlayers.Remove(gamertag);
                } else {
                    board.GamePlayers.Remove(gamertag);
                    _playersInGame.Remove(idRoom);

                }
            }
        }
    }
}
