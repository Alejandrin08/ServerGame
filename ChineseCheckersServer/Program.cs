using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ChineseCheckersServer {
    internal class Program {
        static void Main(string[] args) {
            using (ServiceHost userControllerHost = new ServiceHost(typeof(ChineseCheckersLogicServer.Controller.ManagerController))) {
                userControllerHost.Open();
                Console.WriteLine("managerController is running");
                Console.ReadLine();
            }
        }
    }
}