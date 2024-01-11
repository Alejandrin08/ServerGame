using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace ChineseCheckersLogicServer.Model {
    [DataContract]
    public class ReportModel {

        [DataMember]
        public int IdUser { get; set; }
        [DataMember]
        public string Reason { get; set; }
        [DataMember]
        public DateTime CurrentDate { get; set; }
        [DataMember]
        public DateTime EndDate { get; set; }
    }
}
