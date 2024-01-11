using ChineseCheckersLogicServer.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

namespace ChineseCheckersLogicServer.Contracts {
    [ServiceContract]
    public interface IReport {
        [OperationContract]
        int AddReport(ReportModel reportModel);
        [OperationContract]
        int UpdateReport(ReportModel reportModel);
        [OperationContract]
        int DeleteReport(int idUser);
        [OperationContract]
        int GetNumReports(int idUser);
        [OperationContract]
        DateTime GetDateReport(int idUser);
<<<<<<< HEAD
        [OperationContract]
        bool IsBanned(int idUser);
        [OperationContract]
        bool IsReported(int idUser);
=======
>>>>>>> 403ac95cfb24f03fb87fd61aacab824e0c286b99
    }
}
