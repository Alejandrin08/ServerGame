using Microsoft.VisualStudio.TestTools.UnitTesting;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace UnitTest {
    [TestClass]
    public class RoomControllerTest {
        [TestMethod]
        public void ValidateRoom_Failed() {
            string idRoom = "159753";
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            bool resultExpected = true;
            bool result = test.ValidateRoom(idRoom);
            Assert.AreNotEqual(resultExpected, result);
        }

        [TestMethod]
        public void ValidateRoom_Sucessfull() {

            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            string idRoom = test.CreateRoom("PalomaOs1");
            bool resultExpected = true;
            bool result = test.ValidateRoom(idRoom);
            Assert.AreEqual(resultExpected, result);
        }

        [TestMethod]
        public void ValidateBoardRoom_Failed() {
            string idRoom = "159753";
            ChineseCheckersLogicServer.Controller.ManagerController test = new ChineseCheckersLogicServer.Controller.ManagerController();
            bool resultExpected = true;
            bool result = test.ValidateBoardRoom(idRoom);
            Assert.AreNotEqual(resultExpected, result);
        }
    }
}
