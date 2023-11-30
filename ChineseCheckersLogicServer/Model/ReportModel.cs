using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace ChineseCheckersLogicServer.Model {
    [DataContract]
    public class ReportModel {

        private int _idUser;
        private string _reason;
        private DateTime _currentDate;
        private DateTime _endDate;

        [DataMember]
        public int IdUser { get { return _idUser; } set { _idUser = value; } }
        [DataMember]
        public string Reason { get { return _reason; } set { _reason = value; } }
        [DataMember]
        public DateTime CurrentDate { get { return _currentDate; } set { _currentDate = value; } }
        [DataMember]
        public DateTime EndDate { get { return _endDate; } set { _endDate = value; } }
    }
}
