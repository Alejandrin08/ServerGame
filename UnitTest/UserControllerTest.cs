using ChineseCheckersLogicServer.Controller;
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
    public class UserControllerTest {
        [TestMethod]
        public void AddUserGame_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                UserModel userModel = new UserModel() {
                    Gamertag = "Rosa",
                    PlayerStatus = "1"
                };
                UserModel userModelTest = new UserModel() {
                    Gamertag = "Rosa",
                    Email = "unimoma1@gmail.com",
                    Password = "Ros123#",
                    ImageProfile = "Cheems.png"
                };
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int firstResult = test.AddUserAccount(userModelTest);
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
        public void AddUserAccount_Sucessfull2() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                UserModel userModel = new UserModel() {
                    Gamertag = "Ysela",
                    Email = "dmysela1@gmail.com",
                    Password = "Yse123#",
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
                Gamertag = "Gato",
                Email = "gato@gmail.com",
                ImageProfile = "catPixelArt.png"
            };
            string gamertag = "Gato";
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
                    Email = "gato@gmail.com",
                    Password = "Yse123#"
                };
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 1;
                int result = test.UpdatePassword(userModel);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void UpdatePassword_Sucessfull2() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                UserModel userModel = new UserModel() {
                    Email = "ale@gmail.com",
                    Password = "AlE123#"
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
                Gamertag = "Gato",
                Password = "Gat123#"
            };
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            int resultExpected = 1;
            int result = test.ValidateUser(userModel);
            Assert.AreEqual(resultExpected, result);
        }

        [TestMethod]
        public void ValidateUser_Sucessfull2() {
            UserModel userModel = new UserModel() {
                Gamertag = "JesusF",
                Password = "Jes123#"
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

        [TestMethod]
        public void GetEmail_Sucessfull() {
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            string gamertag = "PalomaOs1";
            string resultExpected = "momaosiris@gmail.com";
            string result = test.GetEmail(gamertag);
            Assert.AreEqual(resultExpected, result);
        }

        [TestMethod]
        public void FindGamertag_Sucessfull() {
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            string currentGamertag = "PalomaOs1";
            string friendGamertag = "JesusF";
            string resultExpected = "JesusF";
            string result = test.FindGamertag(currentGamertag, friendGamertag);
            Assert.AreEqual(resultExpected, result);
        }

        [TestMethod]
        public void UpdateStatusPlayer_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                int idUser = 1;
                bool status = false;

                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 1;
                int result = test.UpdateStatusPlayer(idUser, status);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void UpdateGamesWon_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                int idUser = 9;


                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 1;
                int result = test.UpdateGamesWon(idUser);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void UpdateTotalGames_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                int idUser = 1;


                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 1;
                int result = test.UpdateTotalGames(idUser);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void GetTotalGames_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                int idUser = 1;


                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 5;
                int result = test.GetTotalGames(idUser);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void GetGamesWon_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                int idUser = 1;


                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 2;
                int result = test.GetGamesWon(idUser);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void GetGames_Sucessfull() {
            Dictionary<string, int> _playersTest = new Dictionary<string, int>() {

            };
            _playersTest.Add("Ale091", 2);
            _playersTest.Add("PalomaOs1", 2);
            _playersTest.Add("Gato", 1);

            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            Dictionary<string, int> resultExpected = _playersTest;
            Dictionary<string, int> result = test.GetGames();
            Assert.AreEqual(resultExpected.Count, result.Count);

            foreach (var kvp in resultExpected) {
                int expectedValue;
                bool keyExists = result.TryGetValue(kvp.Key, out expectedValue);

                Assert.IsTrue(keyExists, $"La clave '{kvp.Key}' no está presente en el resultado");
                Assert.AreEqual(kvp.Value, expectedValue, $"El valor para la clave '{kvp.Key}' no coincide");
            }
        }

        [TestMethod]
        public void GetGames_Failed() {
            Dictionary<string, int> _playersTest = new Dictionary<string, int>() {

            };
            _playersTest.Add("Ale0915", 2);
            _playersTest.Add("PalomaOs1", 2);


            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            Dictionary<string, int> resultExpected = _playersTest;
            Dictionary<string, int> result = test.GetGames();
            Assert.AreNotEqual(resultExpected.Count, result.Count);


        }

        [TestMethod]
        public void GetGamesWon_Failed() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                int idUser = 10;


                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 0;
                int result = test.GetGamesWon(idUser);
                Assert.AreEqual(resultExpected, result);
            }
        }



        [TestMethod]
        public void GetTotalGames_Failed() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                int idUser = 10;


                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 0;
                int result = test.GetTotalGames(idUser);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void UpdateTotalGames_Failed() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                int idUser = 4;


                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 0;
                int result = test.UpdateTotalGames(idUser);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]

        public void UpdateGamesWon_Failed() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                int idUser = 4;


                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 0;
                int result = test.UpdateGamesWon(idUser);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void UpdateStatusPlayer_Failed() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                int idUser = 1;
                bool status = true;

                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 0;
                int result = test.UpdateStatusPlayer(idUser, status);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void AddUserGame_Failed() {

            UserModel userModel = new UserModel() {
                Gamertag = "PalomaOs1",
                PlayerStatus = "1"
            };
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            int resultExpected = 0;
            int result = test.AddUserGame(userModel);
            Assert.AreEqual(resultExpected, result);
        }

        [TestMethod]

        public void AddUserAccount_Failed() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                UserModel userModel = new UserModel() {
                    Gamertag = "PalomaOs1",
                    Email = "momaosiris@gmail.com",
                    Password = "Ros123#",
                    ImageProfile = "Cheems.png"
                };
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 0;
                int result = test.AddUserAccount(userModel);
                Assert.AreEqual(resultExpected, result);

            }
        }

        [TestMethod]
        public void InfoUser_Failed() {
            UserModel userModel = new UserModel() {
                Gamertag = "Ale091",
                Email = "alejandrin@gmail.com",
                ImageProfile = "hollowIcon.png"
            };
            string gamertag = "Ale091";
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            UserModel userModelExpected = userModel;
            UserModel userModelResult = test.InfoUser(gamertag);
            Assert.AreNotEqual(userModelExpected, userModelResult);
        }

        [TestMethod]

        public void UpdateInfoUser_Exception() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                UserModel userModel = new UserModel() {
                    Gamertag = "Ale091",
                    Email = "dmysela@gmail.com",
                    ImageProfile = "Cheems.png"
                };
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                string gamertag = "PalomaOs1";
                int resultExpected = 0;
                int result = test.UpdateInfoUser(userModel, gamertag);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]

        public void UpdateInfoUser_Failed() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                UserModel userModel = new UserModel() {
                    Gamertag = "PalomaOs1",
                    Email = "dmysela@gmail.com",
                    ImageProfile = "Cheems.png"
                };
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                string gamertag = "NDJDNI72";
                int resultExpected = 1;
                int result = test.UpdateInfoUser(userModel, gamertag);
                Assert.AreNotEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void UpdatePassword_Failed() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                UserModel userModel = new UserModel() {
                    Email = "dmyseADRla@gmail.com",
                    Password = "Yse123#"
                };
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 1;
                int result = test.UpdatePassword(userModel);
                Assert.AreNotEqual(resultExpected, result);
            }
        }



        [TestMethod]
        public void ValidateUser_Failed() {
            UserModel userModel = new UserModel() {
                Gamertag = "Ysela",
                Password = "Yse1A123#5"
            };
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            int resultExpected = 1;
            int result = test.ValidateUser(userModel);
            Assert.AreNotEqual(resultExpected, result);
        }

        [TestMethod]
        public void ValidateEmail_Failed() {
            UserModel userModel = new UserModel() {
                Email = "momaosirisPal@gmail.com",
            };
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            int resultExpected = 1;
            int result = test.ValidateEmail(userModel);
            Assert.AreNotEqual(resultExpected, result);
        }

        [TestMethod]
        public void ValidateGamertag_Failed() {
            UserModel userModel = new UserModel() {
                Gamertag = "Ale0915/",
            };
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            int resultExpected = 1;
            int result = test.ValidateGamertag(userModel);
            Assert.AreNotEqual(resultExpected, result);
        }

        [TestMethod]
        public void GetPlayerImage_Failed() {
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            string gamertag = "Ale091";
            string resultExpected = "/Resources/Images/cheems.png";
            string result = test.GetPlayerImage(gamertag);
            Assert.AreNotEqual(resultExpected, result);
        }

        [TestMethod]
        public void GetId_Failed() {
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            string gamertag = "Ale091";
            int resultExpected = 5;
            int result = test.GetId(gamertag);
            Assert.AreNotEqual(resultExpected, result);
        }

        [TestMethod]
        public void GetEmail_Failed() {
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            string gamertag = "PalomaOs123";
            string resultExpected = "pal@gmail.com";
            string result = test.GetEmail(gamertag);
            Assert.AreNotEqual(resultExpected, result);
        }

        [TestMethod]
        public void FindGamertag_Failed() {
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            string currentGamertag = "PalomaOs";
            string friendGamertag = "Ale09";
            string resultExpected = null;
            string result = test.FindGamertag(currentGamertag, friendGamertag);
            Assert.AreEqual(resultExpected, result);
        }


    }
}