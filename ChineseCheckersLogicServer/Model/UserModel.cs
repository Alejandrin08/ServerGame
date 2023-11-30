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

        private int _id;
        private string _gamertag;
        private string _email;
        private string _password;
        private string _imageProfile;
        private string _playerStatus;
       
        [DataMember]
        public int Id { get { return _id; } set { _id = value; } }
        [DataMember]
        public string Gamertag { get { return _gamertag; } set { _gamertag = value; } }
        [DataMember]
        public string Email { get { return _email; } set { _email = value; } }
        [DataMember]
        public string Password { get { return _password; } set { _password = value; } }
        [DataMember]
        public string ImageProfile { get { return _imageProfile; } set { _imageProfile = value; } }
        [DataMember]
        public string PlayerStatus { get {  return _playerStatus; } set { _playerStatus = value; } }
    }
}
