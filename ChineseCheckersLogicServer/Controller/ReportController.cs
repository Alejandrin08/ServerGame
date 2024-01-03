using ChineseCheckersDataAccess;
using ChineseCheckersLogicServer.Contracts;
using ChineseCheckersLogicServer.Model;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Data.SqlClient;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;
using System.Windows;

namespace ChineseCheckersLogicServer.Controller {
    public partial class ManagerController : IReport {

        public int AddReport(ReportModel reportModel) { 
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var reportUser = new Reports {
                        IdUser = reportModel.IdUser,
                        Counter = 1,
                        Reason = reportModel.Reason,
                        DateCurrent = reportModel.CurrentDate,
                        DateFinish = reportModel.EndDate,
                    };
                    context.Reports.Add(reportUser);
                    return context.SaveChanges();
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al agregar el reporte: {ex.Message}");
                return -1;
            }
        }

        public int UpdateReport(ReportModel reportModel) {
            try {
                using (var context = new ChineseCheckersEntities()) {
                    var userReport = context.Reports
                        .Where(u => u.IdUser == reportModel.IdUser)
                        .FirstOrDefault();
                    if (userReport != null) {
                        userReport.Counter++;
                        userReport.Reason = reportModel.Reason;
                        userReport.DateCurrent = reportModel.CurrentDate;
                        userReport.DateFinish = reportModel.EndDate;
                    }
                    return context.SaveChanges();
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al actualizar el reporte: {ex.Message}"); 
                return -1;
            }
        }

        public int DeleteReport(int idUser) {
            try { 
                using (var context = new ChineseCheckersEntities()) {
                    var reportToDelete = context.Reports.FirstOrDefault(r => r.IdUser == idUser);
                    if (reportToDelete != null) {
                        context.Reports.Remove(reportToDelete);
                    }
                    return context.SaveChanges();
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al eliminar el reporte: {ex.Message}");
                return -1; 
            }
        }

        public int GetNumReports(int idUser) {
            try {
                int numReports = -1;
                using (var context = new ChineseCheckersEntities()) {
                    var counterValues = context.Reports
                        .FirstOrDefault(counter => counter.IdUser == idUser);
                    if (counterValues != null) {
                        numReports = (int)counterValues.Counter;
                    }
                    return numReports;
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al obtener la cantidad de reportes: {ex.Message}");
                return -1;
            }
        }

        public DateTime GetDateReport(int idUser) {
            try {
                DateTime dateTime = DateTime.Now;
                using (var context = new ChineseCheckersEntities()) {
                    var dateValues = context.Reports
                        .FirstOrDefault(date => date.IdUser == idUser);
                    if (dateValues != null) {
                        dateTime = (DateTime)dateValues.DateFinish;
                    }
                    return dateTime;
                }
            } catch (EntityException ex) {
                MessageBox.Show($"Error al validar la fecha: {ex.Message}");
                return DateTime.Now;
            }
        }
    }
}
