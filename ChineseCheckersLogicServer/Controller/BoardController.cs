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

<<<<<<< HEAD
    /// <summary>
    /// Esta Interface incluye los métodos que se ocupan para la funcionalidad del tablero. 
    /// </summary>
=======
<<<<<<< HEAD
    /// <summary>
    /// Esta Interface incluye los métodos que se ocupan para la funcionalidad del tablero. 
    /// </summary>
    public partial class ManagerController : IBoard {
        /**
            * <summary>
            * Valida que la partida exista y ternoa true. Si no existe, retorna false
            * </summary>
            * <param name="idRoom">Id de la sala</param>
            * <returns>Retorna true si la sala existe, false si no existe</returns>
            */
        public bool ValidateGame(string idRoom) {
            bool result = false;
            try {
                if (string.IsNullOrEmpty(idRoom)) {
                    result = false;
                }
                result = _playersInGame.ContainsKey(idRoom);
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal($"Error al validar la partida", ex);
=======
>>>>>>> b733c43e37b95c6332a872f74e83a7f40a471adb
    public partial class ManagerController : IBoard {
        /**
            * <summary>
            * Valida que la partida exista y ternoa true. Si no existe, retorna false
            * </summary>
            * <param name="idRoom">Id de la sala</param>
            * <returns>Retorna true si la sala existe, false si no existe</returns>
            */
        public bool ValidateGame(string idRoom) {
            bool result = false;
            try {
                if (string.IsNullOrEmpty(idRoom)) {
                    result = false;
                }
                result = _playersInGame.ContainsKey(idRoom);
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal($"Error al validar la partida", ex);
            }
            return result;
        }
        /**
            * <summary>
            * Valida la cantidad de jugadores del Room así como que esta exista
            * </summary>
            * <param name="idRoom">Id de la sala</param>
            * <returns>Retorna true si la sala existe y la cantidad de jugadores es mayor a 1</returns>
            */
        public bool ValidateBoard(string idRoom) {
            bool result = false;
            try {
                const int MIN_PLAYERS_ROOM = 1;
                result = _playersInGame.ContainsKey(idRoom) && _playersInGame[idRoom].GamePlayers.Count > MIN_PLAYERS_ROOM;
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal($"Error al validar el tablero", ex);
            }
            return result;
        }
    }
    /// <summary>
    /// Interface que incluye los métodos que se ocupan para la funcionalidad de los turnos de los jugadores.
    /// </summary>
    public partial class ManagerController : ITurn {
        /**
            * <summary>
            * Pasa el turno al siguiente jugador de la partida. Se ocupa un diccionario para llevar el control de los turnos 
            * así como un diccionario para llevar el control de los jugadores en la partida
            * </summary>
            * <param name="idRoom">Id de la sala</param>
            */
        private static Dictionary<string, int> _turnTracker = new Dictionary<string, int>();
        private static Dictionary<string, BoardModel> _playersInGame = new Dictionary<string, BoardModel>();

        public void SendToTurn(string idRoom) {
            const int IS_TURN = 1;
            const int IS_NOT_TURN = 2;
            try {
                if (_playersInGame.TryGetValue(idRoom, out var board)) {
                    if (!_turnTracker.ContainsKey(idRoom)) {
                        _turnTracker[idRoom] = 0;
                    }
                    int nextTurn = _turnTracker[idRoom];
                    var keys = board.GamePlayers.Keys.ToList();
                    if (keys.Count > 0) {
                        string nextGamertag = keys[nextTurn % keys.Count];
                        _turnTracker[idRoom] = (nextTurn + IS_TURN) % keys.Count;
                        foreach (var gamePlayers in board.GamePlayers) {
                            var gamertag = gamePlayers.Key.ToString();
                            var context = gamePlayers.Value;
                            var isTurn = gamertag == nextGamertag ? IS_TURN : IS_NOT_TURN;
                            context.GameTurn(nextGamertag, isTurn);
                        }
                    }
                }
<<<<<<< HEAD
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal($"Error al enviar el turno", ex);
=======
>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
>>>>>>> b733c43e37b95c6332a872f74e83a7f40a471adb
            }
            return result;
        }
<<<<<<< HEAD
        /**
            * <summary>
            * Actualiza el tablero para todos los jugadores de la partida, si uno realiza un movimiento, se actualiza el tablero para todos los jugadores.
            * </summary>
            * <param name="idRoom">Id de la sala</param>
            * <param name="Marble">Canica a mover</param>
            * <param name="position">Posición a la que se moverá la canica</param>
            */
        public void UpdateBoard(Point marble, Point position, string idRoom) {
=======
<<<<<<< HEAD
        /**
            * <summary>
            * Valida la cantidad de jugadores del Room así como que esta exista
            * </summary>
            * <param name="idRoom">Id de la sala</param>
            * <returns>Retorna true si la sala existe y la cantidad de jugadores es mayor a 1</returns>
            */
        public bool ValidateBoard(string idRoom) {
            bool result = false;
            try {
                const int MIN_PLAYERS_ROOM = 1;
                result = _playersInGame.ContainsKey(idRoom) && _playersInGame[idRoom].GamePlayers.Count > MIN_PLAYERS_ROOM;
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal($"Error al validar el tablero", ex);
=======

        public void UpdateBoard(Point Marble, Point position, string idRoom) {
>>>>>>> b733c43e37b95c6332a872f74e83a7f40a471adb
            try {
                if (_playersInGame.ContainsKey(idRoom)) {
                    BoardModel board = _playersInGame[idRoom];
                    if (board != null && board.GamePlayers != null) {
                        foreach (var gamePlayers in board.GamePlayers.Values) {
                            gamePlayers.UpdateBoardCallback(marble, position);
                        }
                    }
                }
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal($"Error al actualizar el tablero", ex);
            }
        }
        /**
            * <summary>
            * Añade un jugador a la partida. Valida que la partida exista (se encuentre en el diccionario de Rooms)
            * y que el jugador no se encuentre en la partida (se encuentre en el diccionario de jugadores en la partida)
            * </summary>
            * <param name="gamertag">Gamertag del jugador</param>
            * <param name="idRoom">Id de la sala</param>
            */
        public void AddPlayerInGame(string gamertag, string idRoom) {
            try {
                ITurnCallback context = OperationContext.Current.GetCallbackChannel<ITurnCallback>();

                if (_rooms.Contains(idRoom)) {
                    if (_playersInGame.ContainsKey(idRoom)) {
                        BoardModel board = _playersInGame[idRoom];
                        board.GamePlayers.Add(gamertag, context);
                    } else {
                        BoardModel board = new BoardModel {
                            IdRoom = idRoom
                        };
                        board.GamePlayers.Add(gamertag, context);
                        _playersInGame.Add(idRoom, board);
                    }
                }
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal($"Error al añadir un jugador a la partida", ex);
            }
        }
        /**
            * <summary>
            * Quita un jugador de la partida. Valida que la partida exista (se encuentre en el diccionario de Rooms)
            * Si la cantidad de jugadores en la partida es mayor a 1, se remueve el jugador de la partida, si no, se remueve la partida
            * </summary>
            * <param name="gamertag">Gamertag del jugador</param>
            * <param name="idRoom">Id de la sala</param>
            */
        public void RemovePlayerFromGame(string gamertag, string idRoom) {
            const int MIN_PLAYERS_ROOM = 1;
            try {
                if (_playersInGame.ContainsKey(idRoom)) {
                    BoardModel board = _playersInGame[idRoom];

                    if (board.GamePlayers.Count > MIN_PLAYERS_ROOM) {
                        board.GamePlayers.Remove(gamertag);
                    } else {
                        board.GamePlayers.Remove(gamertag);
                        _playersInGame.Remove(idRoom);
                    }
                }
<<<<<<< HEAD
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal($"Error al remover un jugador de la partida", ex);
            }
        }
        /**
            * <summary>
            * Valida que la partida exista (se encuentre en el diccionario de Rooms) y si la cantidad de jugadores en la partida es 1, 
            * se le notifica al jugador que ganó la partida. De igual manera, se le notifica a los demás jugadores quien fue el ganador.
            * </summary>
            * <param name="gamertag">Gamertag del jugador</param>
            * <param name="idRoom">Id de la sala</param>
            */
        public void WinningPlayer(string idRoom, string gamertag) {
            try {
                const int MIN_PLAYERS_ROOM = 1;
                string winningGamertag = gamertag;
                if (_playersInGame.ContainsKey(idRoom)) {

                    BoardModel board = _playersInGame[idRoom];
                    if (board.GamePlayers.Count == MIN_PLAYERS_ROOM) {
                        winningGamertag = board.GamePlayers.Keys.FirstOrDefault()?.ToString();
                    }
                    foreach (var gamePlayers in board.GamePlayers.Values) {
                        gamePlayers.WinningPlayerCallback(winningGamertag);
                    }
                }
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal($"Error al notificar al ganador", ex);
            }
        }
    }
=======
>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
            }
        }
    }
    /// <summary>
    /// Interface que incluye los métodos que se ocupan para la funcionalidad de los turnos de los jugadores.
    /// </summary>
    public partial class ManagerController : ITurn {
        /**
            * <summary>
            * Pasa el turno al siguiente jugador de la partida. Se ocupa un diccionario para llevar el control de los turnos 
            * así como un diccionario para llevar el control de los jugadores en la partida
            * </summary>
            * <param name="idRoom">Id de la sala</param>
            */
        private static Dictionary<string, int> _turnTracker = new Dictionary<string, int>();
        private static Dictionary<string, BoardModel> _playersInGame = new Dictionary<string, BoardModel>();

        public void SendToTurn(string idRoom) {
            const int IS_TURN = 1;
            const int IS_NOT_TURN = 2;
            try {
                if (_playersInGame.TryGetValue(idRoom, out var board)) {
                    if (!_turnTracker.ContainsKey(idRoom)) {
                        _turnTracker[idRoom] = 0;
                    }
                    int nextTurn = _turnTracker[idRoom];
                    var keys = board.GamePlayers.Keys.ToList();
                    if (keys.Count > 0) {
                        string nextGamertag = keys[nextTurn % keys.Count];
                        _turnTracker[idRoom] = (nextTurn + IS_TURN) % keys.Count;
                        foreach (var gamePlayers in board.GamePlayers) {
                            var gamertag = gamePlayers.Key.ToString();
                            var context = gamePlayers.Value;
                            var isTurn = gamertag == nextGamertag ? IS_TURN : IS_NOT_TURN;
                            context.GameTurn(nextGamertag, isTurn);
                        }
                    }
                }
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal($"Error al enviar el turno", ex);
            }
        }
        /**
            * <summary>
            * Actualiza el tablero para todos los jugadores de la partida, si uno realiza un movimiento, se actualiza el tablero para todos los jugadores.
            * </summary>
            * <param name="idRoom">Id de la sala</param>
            * <param name="Marble">Canica a mover</param>
            * <param name="position">Posición a la que se moverá la canica</param>
            */
        public void UpdateBoard(Point marble, Point position, string idRoom) {
            try {
                if (_playersInGame.ContainsKey(idRoom)) {
                    BoardModel board = _playersInGame[idRoom];
                    if (board != null && board.GamePlayers != null) {
                        foreach (var gamePlayers in board.GamePlayers.Values) {
                            gamePlayers.UpdateBoardCallback(marble, position);
                        }
                    }
                }
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal($"Error al actualizar el tablero", ex);
            }
        }
        /**
            * <summary>
            * Añade un jugador a la partida. Valida que la partida exista (se encuentre en el diccionario de Rooms)
            * y que el jugador no se encuentre en la partida (se encuentre en el diccionario de jugadores en la partida)
            * </summary>
            * <param name="gamertag">Gamertag del jugador</param>
            * <param name="idRoom">Id de la sala</param>
            */
        public void AddPlayerInGame(string gamertag, string idRoom) {
            try {
                ITurnCallback context = OperationContext.Current.GetCallbackChannel<ITurnCallback>();

                if (_rooms.Contains(idRoom)) {
                    if (_playersInGame.ContainsKey(idRoom)) {
                        BoardModel board = _playersInGame[idRoom];
                        board.GamePlayers.Add(gamertag, context);
                    } else {
                        BoardModel board = new BoardModel {
                            IdRoom = idRoom
                        };
                        board.GamePlayers.Add(gamertag, context);
                        _playersInGame.Add(idRoom, board);
                    }
                }
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal($"Error al añadir un jugador a la partida", ex);
            }
        }
        /**
            * <summary>
            * Quita un jugador de la partida. Valida que la partida exista (se encuentre en el diccionario de Rooms)
            * Si la cantidad de jugadores en la partida es mayor a 1, se remueve el jugador de la partida, si no, se remueve la partida
            * </summary>
            * <param name="gamertag">Gamertag del jugador</param>
            * <param name="idRoom">Id de la sala</param>
            */
        public void RemovePlayerFromGame(string gamertag, string idRoom) {
            const int MIN_PLAYERS_ROOM = 1;
            try {
                if (_playersInGame.ContainsKey(idRoom)) {
                    BoardModel board = _playersInGame[idRoom];

                    if (board.GamePlayers.Count > MIN_PLAYERS_ROOM) {
                        board.GamePlayers.Remove(gamertag);
                    } else {
                        board.GamePlayers.Remove(gamertag);
                        _playersInGame.Remove(idRoom);
                    }
                }
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal($"Error al remover un jugador de la partida", ex);
            }
        }
        /**
            * <summary>
            * Valida que la partida exista (se encuentre en el diccionario de Rooms) y si la cantidad de jugadores en la partida es 1, 
            * se le notifica al jugador que ganó la partida. De igual manera, se le notifica a los demás jugadores quien fue el ganador.
            * </summary>
            * <param name="gamertag">Gamertag del jugador</param>
            * <param name="idRoom">Id de la sala</param>
            */
        public void WinningPlayer(string idRoom, string gamertag) {
            try {
                const int MIN_PLAYERS_ROOM = 1;
                string winningGamertag = gamertag;
                if (_playersInGame.ContainsKey(idRoom)) {

                    BoardModel board = _playersInGame[idRoom];
                    if (board.GamePlayers.Count == MIN_PLAYERS_ROOM) {
                        winningGamertag = board.GamePlayers.Keys.FirstOrDefault()?.ToString();
                    }
                    foreach (var gamePlayers in board.GamePlayers.Values) {
                        gamePlayers.WinningPlayerCallback(winningGamertag);
                    }
                }
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal($"Error al notificar al ganador", ex);
            }
        }
    }
>>>>>>> b733c43e37b95c6332a872f74e83a7f40a471adb
}