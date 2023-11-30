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
    public class UserControllerTest {
        [TestMethod]
        public void AddUserGame_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                UserModel userModel = new UserModel() {
                    Gamertag = "Ysela",
                    PlayerStatus = "1"
                };
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 1;
                int result = test.AddUserGame(userModel);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void AddUserAccount_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                UserModel userModel = new UserModel() {
                    Gamertag = "Rosa",
                    Email = "unimoma1@gmail.com",
                    Password = "Ros123#",
                    ImageProfile = "Cheems.png"
                };
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 1;
                int result = test.AddUserAccount(userModel);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void InfoUser_Sucessfull() {
            UserModel userModel = new UserModel() {
                Gamertag = "Ysela",
                Email = "dmysela@gmail.com",
                ImageProfile = "Cheems.png"
            };
            string gamertag = "Ysela";
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            UserModel userModelExpected = userModel;
            UserModel userModelResult = test.InfoUser(gamertag);
            Assert.AreEqual(userModelExpected, userModelResult);
        }

        [TestMethod]
        public void UpdateInfoUser_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                UserModel userModel = new UserModel() {
                    Gamertag = "Ale091",
                    Email = "dmysela@gmail.com",
                    ImageProfile = "Cheems.png"
                };
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                string gamertag = "Ale091";
                int resultExpected = 1;
                int result = test.UpdateInfoUser(userModel, gamertag);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void UpdatePassword_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                UserModel userModel = new UserModel() {
                    Email = "dmysela@gmail.com",
                    Password = "Yse123#"
                };
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 1;
                int result = test.UpdatePassword(userModel);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void ValidateUser_Sucessfull() {
            UserModel userModel = new UserModel() {
                Gamertag = "Ysela",
                Password = "Yse123#"
            };
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            int resultExpected = 1;
            int result = test.ValidateUser(userModel);
            Assert.AreEqual(resultExpected, result);
        }

        [TestMethod]
        public void ValidateEmail_Sucessfull() {
            UserModel userModel = new UserModel() {
                Email = "momaosiris@gmail.com",
            };
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            int resultExpected = 1;
            int result = test.ValidateEmail(userModel);
            Assert.AreEqual(resultExpected, result);
        }

        [TestMethod]
        public void ValidateGamertag_Sucessfull() {
            UserModel userModel = new UserModel() {
                Gamertag = "Ale091",
            };
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            int resultExpected = 1;
            int result = test.ValidateGamertag(userModel);
            Assert.AreEqual(resultExpected, result);
        }

        [TestMethod]
        public void GetPlayerImage_Sucessfull() {
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            string gamertag = "Ale091";
            string resultExpected = "/Resources/Images/hollowIcon.png";
            string result = test.GetPlayerImage(gamertag);
            Assert.AreEqual(resultExpected, result);
        }

        [TestMethod]
        public void GetId_Sucessfull() {
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            string gamertag = "Ale091";
            int resultExpected = 2;
            int result = test.GetId(gamertag);
            Assert.AreEqual(resultExpected, result);
        }
    }
}