using ChineseCheckersDataAccess;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnitTest {
    [TestClass]
    public class BoardControllerTest {

        [TestMethod]
        public void ValidateGame_Failed() {
            string idRoom = "159753";
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            bool resultExpected = true;
            bool result = test.ValidateGame(idRoom);
            Assert.AreNotEqual(resultExpected, result);
        }


        [TestMethod]
        public void ValidateBoard_Failed() {
            string idRoom = "159753";
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            bool resultExpected = true;
            bool result = test.ValidateBoard(idRoom);
            Assert.AreNotEqual(resultExpected, result);
        }
    }
}
