using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ChineseCheckersLogicServer.Controller {
    /// <summary>
    /// Clase que implementa el patrón Singleton y que se encarga de almacenar el id de la sala en la que se encuentra el jugador
    /// </summary>
    public class SingletonClass {
        private static SingletonClass _instance;
        public static SingletonClass Instance {
            get {
                if (_instance == null) {
                    _instance = new SingletonClass(); 
                }
                return _instance;
            }
        }

        public string IdRoom {  get; set; }
    }
}
