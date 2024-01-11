using ChineseCheckersDataAccess;
using ChineseCheckersLogicServer.Contracts;
using ChineseCheckersLogicServer.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;
using System.Data.SqlClient;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace ChineseCheckersLogicServer.Controller {
    /// <summary>
    /// Esta Interface incluye los métodos que se ocupan para la funcionalidad de los reportes de los jugadores.
    /// </summary>
    public partial class ManagerController : IReport {
<<<<<<< HEAD
=======
<<<<<<< HEAD
>>>>>>> b733c43e37b95c6332a872f74e83a7f40a471adb
        /**
            * <summary>
            * Añade un reporte a un jugador
            * </summary>
            * <param name="reportModel">El objeto de tipo ReportModel que contiene el id del jugador, el motivo del reporte, 
            * la fecha actual y la fecha de finalización</param>
            * <returns>Retorna 1 sí se añadio correctamente el reporte al jugador</returns>                                                                  
            */
        public int AddReport(ReportModel reportModel) {
            int result = 0;
<<<<<<< HEAD
            try {
                const int INITIAL_COUNTER = 1;

                using (var context = new ChineseCheckersTestEntities()) {
=======
=======

        public int AddReport(ReportModel reportModel) { 
>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
            try {
                const int INITIAL_COUNTER = 1;

                using (var context = new ChineseCheckersEntities()) {
>>>>>>> b733c43e37b95c6332a872f74e83a7f40a471adb
                    using (var dbContextTransaction = context.Database.BeginTransaction(System.Data.IsolationLevel.Serializable)) {
                        try {
                            var reportUser = new Reports {
                                IdUser = reportModel.IdUser,
                                Counter = INITIAL_COUNTER,
                                Reason = reportModel.Reason,
                                DateCurrent = reportModel.CurrentDate,
                                DateFinish = reportModel.EndDate,
                            };
                            context.Reports.Add(reportUser);
                            var rowsAffected = context.SaveChanges();

                            dbContextTransaction.Commit();

                            result = rowsAffected;
                        } catch (DbUpdateException ex) {
                            dbContextTransaction.Rollback();
                            LoggerManager.Instance.LogFatal("Error al agregar el reporte: ", ex);
                        }
                    }
                }
            } catch (EntityException ex) {
<<<<<<< HEAD
                LoggerManager.Instance.LogFatal("Error al agregar el reporte: ", ex);
=======
<<<<<<< HEAD
                LoggerManager.Instance.LogFatal("Error al agregar el reporte: ", ex);
=======
                MessageBox.Show($"Error al agregar el reporte: {ex.Message}");
                return -1;
>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
>>>>>>> b733c43e37b95c6332a872f74e83a7f40a471adb
            }
            return result;
        }
        /**
            * <summary>
            * Actualiza un reporte de un jugador
            * </summary>
            * <param name="reportModel">El objeto de tipo ReportModel que contiene el id del jugador, el motivo del reporte, 
            * la fecha actual y la fecha de finalización</param>
            * <returns>Retorna 1 sí se actualizo correctamente el reporte del jugador</returns>                                                                  
            */
        public int UpdateReport(ReportModel reportModel) {
            int result = 0;
            try {
                using (var context = new ChineseCheckersTestEntities()) {
                    var userReport = context.Reports
                        .Where(user => user.IdUser == reportModel.IdUser)
                        .FirstOrDefault();
                    if (userReport != null) {
                        userReport.Counter++;
                        userReport.Reason = reportModel.Reason;
                        userReport.DateCurrent = reportModel.CurrentDate;
                        userReport.DateFinish = reportModel.EndDate;
                    }
                    result = context.SaveChanges();
                }
            } catch (EntityException ex) {
<<<<<<< HEAD
                LoggerManager.Instance.LogFatal("Error al actualizar el reporte: ", ex);
=======
<<<<<<< HEAD
                LoggerManager.Instance.LogFatal("Error al actualizar el reporte: ", ex);
=======
                MessageBox.Show($"Error al actualizar el reporte: {ex.Message}"); 
                return -1;
>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
>>>>>>> b733c43e37b95c6332a872f74e83a7f40a471adb
            }
            return result;
        }
        /**
            * <summary>
            * Elimina un reporte de un jugador
            * </summary>
            * <param name="idUser">El id del jugador</param>
            * <returns>Retorna 1 sí se elimino correctamente el reporte del jugador</returns>                                                                  
            */
        public int DeleteReport(int idUser) {
<<<<<<< HEAD
            int result = 0;
            try {
                using (var context = new ChineseCheckersTestEntities()) {
                    var reportToDelete = context.Reports.FirstOrDefault(report => report.IdUser == idUser);
=======
<<<<<<< HEAD
            int result = 0;
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var reportToDelete = context.Reports.FirstOrDefault(report => report.IdUser == idUser);
=======
            try { 
                using (var context = new ChineseCheckersEntities()) {
                    var reportToDelete = context.Reports.FirstOrDefault(r => r.IdUser == idUser);
>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
>>>>>>> b733c43e37b95c6332a872f74e83a7f40a471adb
                    if (reportToDelete != null) {
                        context.Reports.Remove(reportToDelete);
                    }
                    result = context.SaveChanges();
                }
            } catch (EntityException ex) {
<<<<<<< HEAD
                LoggerManager.Instance.LogFatal("Error al eliminar el reporte: ", ex);
=======
<<<<<<< HEAD
                LoggerManager.Instance.LogFatal("Error al eliminar el reporte: ", ex);
=======
                MessageBox.Show($"Error al eliminar el reporte: {ex.Message}");
                return -1; 
>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
>>>>>>> b733c43e37b95c6332a872f74e83a7f40a471adb
            }
            return result;
        }
        /**
            * <summary>
            * Obtiene la cantidad de reportes de un jugador
            * </summary>
            * <param name="idUser">El id del jugador</param>
            * <returns>Retorna la cantidad de reportes del jugador</returns>                                                                  
            */
        public int GetNumReports(int idUser) {
            int result = 0;
            try {
                int numReports = -1;
                using (var context = new ChineseCheckersTestEntities()) {
                    var counterValues = context.Reports
                        .FirstOrDefault(counter => counter.IdUser == idUser);
                    if (counterValues != null) {
                        numReports = (int)counterValues.Counter;
                    }
                    result = numReports;
                }
            } catch (EntityException ex) {
<<<<<<< HEAD
                LoggerManager.Instance.LogFatal("Error al obtener el número de reportes: ", ex);
            }
            return result;
=======
<<<<<<< HEAD
                LoggerManager.Instance.LogFatal("Error al obtener el número de reportes: ", ex);
=======
                MessageBox.Show($"Error al obtener la cantidad de reportes: {ex.Message}");
                return -1;
>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
            }
            return result;
        }
        /**
            * <summary>
            * Obtiene la fecha de finalización de un reporte de un jugador
            * </summary>
            * <param name="idUser">El id del jugador</param>
            * <returns>Retorna la fecha de finalización del reporte del jugador</returns>                                                                  
            */
        public DateTime GetDateReport(int idUser) {
            DateTime result = DateTime.Now;
            try {
                DateTime dateTime = DateTime.Now;
                using (var context = new ChineseCheckersEntities()) {
                    var dateValues = context.Reports
                        .FirstOrDefault(date => date.IdUser == idUser);
                    if (dateValues != null) {
                        dateTime = (DateTime)dateValues.DateFinish;
                    }
                    result = dateTime;
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al obtener la fecha del reporte: ", ex);
            }
            return result;
        }
        /**
            * <summary>
            * Valida si un jugador esta reportado
            * </summary>
            * <param name="idUser">El id del jugador</param>
            * <returns>Retorna true sí el jugador esta reportado</returns>                                                                  
            */
        public bool IsReported(int idUser) {
            bool result = true;
            try {
                DateTime dateTime;
                using (var context = new ChineseCheckersEntities()) {
                    var dateValues = context.Reports
                        .FirstOrDefault(date => date.IdUser == idUser);
                    if (dateValues != null) {
                        dateTime = (DateTime)dateValues.DateFinish;
                        if (dateTime > DateTime.Now) {
                            result = false;
                        }
                    };
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al validar el reporte: ", ex);
            }
            return result;  
        }
        /**
            * <summary>
            * Valida si un jugador esta baneado
            * </summary>
            * <param name="idUser">El id del jugador</param>
            * <returns>Retorna true sí el jugador esta baneado</returns>                                                                  
            */
        public bool IsBanned(int idUser) {
            bool result = false;
            try {
                const string BANNED = "0";
                using (var context = new ChineseCheckersEntities()) {
                    var userBanned = context.User
                        .FirstOrDefault(banned => banned.Id == idUser);
                    if (userBanned != null && userBanned.PlayerStatus.Equals(BANNED)) {
                        result = true;
                    }
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al validar el baneo: ", ex);
            }
            return result;
>>>>>>> b733c43e37b95c6332a872f74e83a7f40a471adb
        }
        /**
            * <summary>
            * Obtiene la fecha de finalización de un reporte de un jugador
            * </summary>
            * <param name="idUser">El id del jugador</param>
            * <returns>Retorna la fecha de finalización del reporte del jugador</returns>                                                                  
            */
        public DateTime GetDateReport(int idUser) {
            DateTime result = DateTime.Now;
            try {
                DateTime dateTime = DateTime.Now;
                using (var context = new ChineseCheckersTestEntities()) {
                    var dateValues = context.Reports
                        .FirstOrDefault(date => date.IdUser == idUser);
                    if (dateValues != null) {
                        dateTime = (DateTime)dateValues.DateFinish;
                    }
                    result = dateTime;
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al obtener la fecha del reporte: ", ex);
               
            }
            return result;
        }
        /**
            * <summary>
            * Valida si un jugador esta reportado
            * </summary>
            * <param name="idUser">El id del jugador</param>
            * <returns>Retorna true sí el jugador esta reportado</returns>                                                                  
            */
        public bool IsReported(int idUser) {
            bool result = true;
            try {
                DateTime dateTime;
                using (var context = new ChineseCheckersTestEntities()) {
                    var dateValues = context.Reports
                        .FirstOrDefault(date => date.IdUser == idUser);
                    if (dateValues != null) {
                        dateTime = (DateTime)dateValues.DateFinish;
                        if (dateTime > DateTime.Now) {
                            result = false;
                        }
                    };
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al validar el reporte: ", ex);
            }
            return result;  
        }
        /**
            * <summary>
            * Valida si un jugador esta baneado
            * </summary>
            * <param name="idUser">El id del jugador</param>
            * <returns>Retorna true sí el jugador esta baneado</returns>                                                                  
            */
        public bool IsBanned(int idUser) {
            bool result = false;
            try {
                const string BANNED = "0";
                using (var context = new ChineseCheckersTestEntities()) {
                    var userBanned = context.User
                        .FirstOrDefault(banned => banned.Id == idUser);
                    if (userBanned != null && userBanned.PlayerStatus.Equals(BANNED)) {
                        result = true;
                    }
                }
            } catch (EntityException ex) {
                LoggerManager.Instance.LogFatal("Error al validar el baneo: ", ex);
            }
            return result;
        }
    }
}
