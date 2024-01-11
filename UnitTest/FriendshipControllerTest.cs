using ChineseCheckersDataAccess;
using ChineseCheckersLogicServer.Controller;
using ChineseCheckersLogicServer.Model;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Data.Entity.Infrastructure;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Transactions;

namespace UnitTest {
    [TestClass]
    public class FriendshipControllerTest {

        [TestMethod]
        public void AddFriendPlayer_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                FriendshipModel friendPlayer = new FriendshipModel {
                    IdUser = 1,
                    IdFriend = 9,
                    RequestStatus = "Pending",
                    TypeNotification = "FriendRequest",

                };
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 1;
                int result = test.AddFriendPlayer(friendPlayer);
                Assert.AreEqual(resultExpected, result);
            }
        }



        [TestMethod]
        [ExpectedException(typeof(DbUpdateException))]
        public void AddFriendPlayer_Exception() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                FriendshipModel friendPlayer = new FriendshipModel {
                    IdUser = 19,
                    IdFriend = 9,
                    RequestStatus = "Pending",
                    TypeNotification = "FriendRequest",

                };
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int result = test.AddFriendPlayer(friendPlayer);
            }
        }


        [TestMethod]
        public void UpdateFriendPlayer_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int idUser = 2;
                int idFriend = 1;
                string requestStatus = "Pending";
                int resultExpected = 1;
                int result = test.UpdateFriendPlayer(idUser, idFriend, requestStatus);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void UpdateFriendPlayer_Failed() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int idUser = 2;
                int idFriend = 5;
                string requestStatus = "Pending";
                int resultExpected = 1;
                int result = test.UpdateFriendPlayer(idUser, idFriend, requestStatus);
                Assert.AreNotEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void DeleteFriendPlayer_Sucessfull() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                FriendshipModel friendPlayer = new FriendshipModel {
                    IdUser = 1,
                    IdFriend = 2,
                    TypeNotification = "FriendRequest",

                };
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 1;
                int result = test.DeleteFriendPlayer(friendPlayer);
                Assert.AreEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void DeleteFriendPlayer_Failed() {
            using (var scope = new TransactionScope(TransactionScopeOption.Required, new TransactionOptions { IsolationLevel = IsolationLevel.ReadUncommitted })) {
                FriendshipModel friendPlayer = new FriendshipModel {
                    IdUser = 1,
                    IdFriend = 5,
                    TypeNotification = "FriendRequest",

                };
                ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
                int resultExpected = 1;
                int result = test.DeleteFriendPlayer(friendPlayer);
                Assert.AreNotEqual(resultExpected, result);
            }
        }

        [TestMethod]
        public void ValidateFriendRequest_Sucessfull() {

            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            int idUser = 1;
            int idFriend = 2;
            string requestStatus = "Accepted";
            int resultExpected = 1;
            int result = test.ValidateFriendRequest(idUser, idFriend, requestStatus);
            Assert.AreEqual(resultExpected, result);

        }

        [TestMethod]
        public void ValidateFriendRequest_Failed() {

            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            int idUser = 1;
            int idFriend = 2;
            string requestStatus = "Accep";
            int resultExpected = 1;
            int result = test.ValidateFriendRequest(idUser, idFriend, requestStatus);
            Assert.AreNotEqual(resultExpected, result);

        }


    }
}
