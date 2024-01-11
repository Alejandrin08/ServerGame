using ChineseCheckersDataAccess;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace ChineseCheckersLogicServer.Model {
    [DataContract]
    public class UserModel {

        [DataMember]
        public int Id { get; set; }
        [DataMember]
        public string Gamertag { get; set; }
        [DataMember]
        public string Email { get; set; }
        [DataMember]
        public string Password { get; set; }
        [DataMember]
        public string ImageProfile { get; set; }
        [DataMember]
        public string PlayerStatus { get; set; }
<<<<<<< HEAD

        public override bool Equals(object obj) {
            if (obj == null || GetType() != obj.GetType()) {
                return false;
            }

            UserModel other = (UserModel)obj;


            return Gamertag == other.Gamertag &&
                   Email == other.Email &&
                   ImageProfile == other.ImageProfile;
        }

        public override int GetHashCode() {

            return base.GetHashCode();
        }
=======
>>>>>>> b733c43e37b95c6332a872f74e83a7f40a471adb
    }
}
