using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using log4net;

[assembly: log4net.Config.XmlConfigurator(Watch = true)]
namespace ChineseCheckersLogicServer.Controller {
    /// <summary>
    /// Clase que se encarga de manejar los logs de la aplicación
    /// </summary>
    public class LoggerManager {

        private static LoggerManager _instance;
        public static LoggerManager Instance {
            get {
                if (_instance == null) {
                    _instance = new LoggerManager(typeof(LoggerManager));
                }
                return _instance;
            }
        }

        public ILog Logger { get; set; }

        public LoggerManager(Type type) {
            Logger = LogManager.GetLogger(type);
        }

        public ILog GetLogger(Type type) {
            return LogManager.GetLogger(type);
        }

        public void LogInfo(string message) {
            Logger.Info(message);
        }

        public void LogError(string message, Exception ex) {
            Logger.Error(message, ex);
        }
        
        public void LogError(Exception ex) {
            Logger.Error(ex);
        }
        
        public void LogFatal(Exception ex) {
            Logger.Fatal(ex);
        }

        public void LogFatal(string message, Exception ex) {
            Logger.Fatal(message, ex);
        }

        public void LogWarn(Exception ex) {
            Logger.Warn(ex);
        }

        public void LogDebug(Exception ex) {
            Logger.Debug(ex);
        }
    }
}
