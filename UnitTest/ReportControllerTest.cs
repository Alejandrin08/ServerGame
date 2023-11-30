using ChineseCheckersLogicServer.Model;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Transactions;

namespace UnitTest {
    [TestClass]
    public class ReportControllerTest {
        [TestMethod]
        public void AddReport_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                ReportModel reportModel = new ReportModel {
                    IdUser = 2,
                    Reason = "Uso de lenguaje inapropiado",
                    CurrentDate = DateTime.Now,
                    EndDate = DateTime.Now.AddDays(2)
                };
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 1;
                int result = test.AddReport(reportModel);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void UpdateReport_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                ReportModel reportModel = new ReportModel {
                    IdUser = 1,
                    Reason = "Uso de lenguaje inapropiado",
                    CurrentDate = DateTime.Now,
                    EndDate = DateTime.Now.AddDays(2)
                };
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 1;
                int result = test.UpdateReport(reportModel);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void DeleteReport_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                int idUser = 1;
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 1;
                int result = test.DeleteReport(idUser);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void GetNumReports_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                int idUser = 1;
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 2;
                int result = test.GetNumReports(idUser);
                Assert.AreEqual(resultExpected, result);
            }
        }
    }
}
