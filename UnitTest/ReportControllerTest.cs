using ChineseCheckersLogicServer.Model;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Data.Entity.Core;
using System.Data.Entity.Infrastructure;
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
        
        public void AddReport_Failed() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                ReportModel reportModel = new ReportModel {
                    IdUser = 56,
                    Reason = "Uso de lenguaje inapropiado",
                    CurrentDate = DateTime.Now,
                    EndDate = DateTime.Now.AddDays(2)
                };
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 0;
                int result = test.AddReport(reportModel);
                Assert.AreEqual(resultExpected, result);
            }
        }


        [TestMethod]
        public void UpdateReport_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                ReportModel reportModel = new ReportModel {
                    IdUser = 2,
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
        public void UpdateReport_Failed() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                ReportModel reportModel = new ReportModel {
                    IdUser = 10,
                    Reason = "Uso de lenguaje inapropiado",
                    CurrentDate = DateTime.Now,
                    EndDate = DateTime.Now.AddDays(2)
                };
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 1;
                int result = test.UpdateReport(reportModel);
                Assert.AreNotEqual(resultExpected, result);
            }
        }



        [TestMethod]
        public void DeleteReport_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                int idUser = 2;
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 1;
                int result = test.DeleteReport(idUser);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void DeleteReport_Failed() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                int idUser = 10;
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 1;
                int result = test.DeleteReport(idUser);
                Assert.AreNotEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void GetNumReports_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                int idUser = 2;
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 3;
                int result = test.GetNumReports(idUser);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void GetNumReports_Failed() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                int idUser = 109;
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 1;
                int result = test.GetNumReports(idUser);
                Assert.AreNotEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void GetDateReport_Successfull() {
            int idUser = 2;
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            DateTime resultExpected = new DateTime(2024, 01, 19, 23, 03, 27);
            DateTime result = test.GetDateReport(idUser);


            Assert.AreEqual(resultExpected.Year, result.Year);
            Assert.AreEqual(resultExpected.Month, result.Month);
            Assert.AreEqual(resultExpected.Day, result.Day);


            Assert.AreEqual(resultExpected.Hour, result.Hour);
            Assert.AreEqual(resultExpected.Minute, result.Minute);
            Assert.AreEqual(resultExpected.Second, result.Second);


        }

        [TestMethod]
        public void GetDateReport_Failed() {
            int idUser = 1;
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            DateTime resultExpected = new DateTime(2024, 11, 06);
            DateTime result = test.GetDateReport(idUser);
            Assert.AreNotEqual(resultExpected, result);

        }

        [TestMethod]
        public void IsReported_Sucessfull() {
            int idUser = 1;
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            bool resultExpected = true;
            bool result = test.IsReported(idUser);
            Assert.AreEqual(resultExpected, result);
        }

        [TestMethod]
        public void IsReported_Failed() {
            int idUser = 2;
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            bool resultExpected = true;
            bool result = test.IsReported(idUser);
            Assert.AreNotEqual(resultExpected, result);
        }

        [TestMethod]
        public void IsBanned_Sucessfull() {
            int idUser = 1;
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            bool resultExpected = false;
            bool result = test.IsBanned(idUser);
            Assert.AreEqual(resultExpected, result);
        }

        [TestMethod]
        public void IsBanned_Failed() {
            int idUser = 9;
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            bool resultExpected = false;
            bool result = test.IsBanned(idUser);
            Assert.AreNotEqual(resultExpected, result);
        }
    }
}
