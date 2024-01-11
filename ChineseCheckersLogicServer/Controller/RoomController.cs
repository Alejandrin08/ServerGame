using ChineseCheckersLogicServer.Contracts;
using ChineseCheckersLogicServer.Model;
using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Security.Cryptography;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using IMessage = ChineseCheckersLogicServer.Contracts.IMessage;

namespace ChineseCheckersLogicServer.Controller {
    /// <summary>
    /// Interfaz que contiene los metodos que se encarga de la funcionalidad de la sala
    /// </summary>
    public partial class ManagerController : IRoom {
        /**
            * <summary>
            * Crea una sala para los jugadores
            * </summary>
            * <param name="gamertag">El identificador que el jugador elige</param>
            * <returns>Retorna una cadena que es el identificador de la sala</returns>                                                                  
            */
        private static readonly List<string> _rooms = new List<string>();
        public string CreateRoom(string gamertag) {
            string result = null;
            try {
                string idRoom;
                do {
                    idRoom = GenerateId();
                } while (_rooms.Contains(idRoom));
                _rooms.Add(idRoom);
                result = idRoom;
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal("Error al crear la sala: ", ex);
            }
            return result;
        }
        /**
            * <summary>
            * Genera un identificador a las salas que se crean.
            * </summary> 
            * <returns>Retorna una cadena que es el identificador de la sala</returns>                                                                  
            */
        public string GenerateId() {
            string result = null;
            try {
                const string CHARACTERS = "0123456789";
                const int MAX_PLAYERS = 6;
                StringBuilder id = new StringBuilder();

                using (var randomGenerator = RandomNumberGenerator.Create()) {
                    byte[] data = new byte[MAX_PLAYERS];

                    randomGenerator.GetBytes(data);

<<<<<<< HEAD
                    for (int i = 0; i < MAX_PLAYERS; i++) {
                        int index = data[i] % CHARACTERS.Length;
                        id.Append(CHARACTERS[index]);
                    }
=======
                if (room.Players.Count > 1) {
                    room.Players.Remove(gamertag);

                } else {
                    room.Players.Remove(gamertag);
                    _playersInRoom.Remove(idRoom);
                    _rooms.Remove(idRoom);
>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
                }
                result = id.ToString();
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal("Error al generar el identificador: ", ex);
            }
            return result;
        }
        /**
            * <summary>
            * Quita a un jugador de la sala
            * </summary> 
            * <param name="gamertag">El identificador que el jugador elige</param>
            * <param name="idRoom">El identificador de la sala</param>                                                             
            */
        public void RemovePlayer(string gamertag, string idRoom) {
            try {
                const int MIN_PLAYERS = 1;
                if (_playersInRoom.ContainsKey(idRoom)) {
                    RoomModel room = _playersInRoom[idRoom];

                    if (room.Players.Count > MIN_PLAYERS) {
                        room.Players.Remove(gamertag);

                    } else {
                        room.Players.Remove(gamertag);
                        _playersInRoom.Remove(idRoom);
                        _rooms.Remove(idRoom);
                    }
                }
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal("Error al quitar al jugador de la sala: ", ex);
            }
        }
<<<<<<< HEAD
        /**
            * <summary>
            * Valida si la sala existe
            * </summary> 
            * <param name="idRoom">El identificador de la sala</param>   
            * <returns>Retorna true si la sala existe, sino regresa false</returns>                                                                
            */
        public bool ValidateRoom(string idRoom) {
            bool result = false;
            try { 
                result = _rooms.Contains(idRoom);
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal("Error al validar la sala: ", ex);
            }
            return result;
        }
        /**
            * <summary>
            * Valida si la sala tiene mas de un jugador
            * </summary> 
            * <param name="idRoom">El identificador de la sala</param>   
            * <returns>Retorna true si la sala tiene mas de un jugador o si es menor o igual a 6 jugadores, sino regresa false</returns>                                                                
            */
        public bool ValidateBoardRoom(string idRoom) {
            bool result = false;
            try {
                const int MAX_PLAYERS = 6;
                const int MIN_PLAYERS = 1;
                result = _playersRoom.ContainsKey(idRoom) && _playersRoom[idRoom].PlayersRoom.Count > MIN_PLAYERS && _playersRoom[idRoom].PlayersRoom.Count <= MAX_PLAYERS;
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal("Error al validar la sala: ", ex);
            }
            return result;
=======

        public bool ValidateRoom(string idRoom) {
            return _rooms.Contains(idRoom);
        }

        public bool ValidateBoardRoom(string idRoom) {
            return _playersRoom.ContainsKey(idRoom) && _playersRoom[idRoom].PlayersRoom.Count > 1;
>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
        }
    }
    /// <summary>
    /// Esta Interface contiene la funcionalidad para el chat de la sala
    /// </summary>
    public partial class ManagerController : IMessage {
        /**
            * <summary>
            * Envia un mensaje a los jugadores de la sala
            * </summary> 
            * <param name="message">El mensaje que se envia</param>
            * <param name="gamertag">El identificador que el jugador elige</param>
            * <param name="idRoom">El identificador de la sala</param>                                                                  
            */
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
                LoggerManager.Instance.LogFatal("Error al enviar el mensaje: ", ex);
            }
        }
        /**
            * <summary>
            * Agrega un jugador al chat de la sala
            * </summary> 
            * <param name="gamertag">El identificador que el jugador elige</param>
            * <param name="idRoom">El identificador de la sala</param>                                                                  
            */
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
                LoggerManager.Instance.LogFatal("Error al agregar al jugador: ", ex);
            }
        }
    }
    /// <summary>
    /// Interfaz que contiene los metodos que se encarga de la funcionalidad de la sala y los jugadores
    /// </summary>
    public partial class ManagerController : IPlayersRoom {
<<<<<<< HEAD
        /**
            * <summary>
            * Callback encargado de añadir un jugador a la sala. Retorna una lista de jugadores de la sala.
            * </summary> 
            * <param name="gamertag">El identificador que el jugador elige</param>
            * <param name="idRoom">El identificador de la sala</param>                                                                  
            */
        private static readonly Dictionary<string, RoomModel> _playersRoom = new Dictionary<string, RoomModel>();
        private static readonly Dictionary<string, List<String>> _playersRoomDictionary = new Dictionary<string, List<String>>();
=======

        private static readonly Dictionary<string, RoomModel> _playersRoom = new Dictionary<string, RoomModel>();
        private static readonly Dictionary<string, List<String>> _playersRoomDictionary = new Dictionary<string, List<String>>();

>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
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
<<<<<<< HEAD
=======

>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
                    }
                }
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal("Error al agregar al jugador a la sala: ", ex);
            }
        }
        /**
            * <summary>
            * Callback encargado de obtener la lista de jugadores de la sala. Retorna una lista de jugadores de la sala.
            * </summary> 
            * <param name="gamertag">El identificador que el jugador elige</param>
            * <param name="idRoom">El identificador de la sala</param>                                                                  
            */
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
                LoggerManager.Instance.LogFatal("Error al obtener los jugadores de la sala: ", ex);
            }
        }
        /**
            * <summary>
            * Callback encargado de enviar a los jugadores de la sala a la sala de juego.
            * </summary> 
            * <param name="idRoom">El identificador de la sala</param>                                                                  
            */   
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
                LoggerManager.Instance.LogFatal("Error al enviar a los jugadores a la sala de juego: ", ex);
            }
        }
        /**
            * <summary>
            * Quita a un jugador de la sala
            * </summary> 
            * <param name="gamertag">El identificador que el jugador elige</param>
            * <param name="idRoom">El identificador de la sala</param>                                                             
            */
        public void RemovePlayerRoom(string gamertag, string idRoom) {
            try {
                const int MIN_PLAYERS = 1;
                if (_playersRoom.ContainsKey(idRoom)) {
                    RoomModel room = _playersRoom[idRoom];

                    if (_playersRoomDictionary.ContainsKey(idRoom)) {
                        List<string> listPlayers = _playersRoomDictionary[idRoom];
                        listPlayers.Remove(gamertag);
                        _playersRoomDictionary[idRoom] = listPlayers;
                    }
                    if (room.PlayersRoom.Count > MIN_PLAYERS) {
                        room.PlayersRoom.Remove(gamertag);
                    } else {
                        room.Players.Remove(gamertag);
                        _playersRoom.Remove(idRoom);
                        _rooms.Remove(idRoom);
                    }
                }
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal("Error al quitar al jugador de la sala: ", ex);
            }
        }
        /**
            * <summary>
            * Asigna los colores de las canicas a los jugadores de la sala
            * </summary> 
            * <param name="idRoom">El identificador de la sala</param>                                                             
            */
        public void AssignColors(string idRoom) {
            Dictionary<string, char> dictionaryPlayersColor = new Dictionary<string, char>();
            try {
                if (_playersRoom.TryGetValue(idRoom, out var room) && room != null && room.PlayersRoom != null) {
                    char[] colors = null;
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
                            char colorType = colors[dictionaryPlayersColor.Count];
                            dictionaryPlayersColor.Add(playerKey, colorType);
                        }
                        foreach (var players in room.PlayersRoom.Values) {
                            players.AssignColorsCallback(dictionaryPlayersColor);
                        }
                    }
                }
            } catch (CommunicationException ex) {
                LoggerManager.Instance.LogFatal("Error al asignar los colores: ", ex);
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