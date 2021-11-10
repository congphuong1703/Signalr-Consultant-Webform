using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsultantSystem
{
    public class UserModel
    {

        public UserModel()
        {

        }

        public UserModel(int id, string username, string role, DateTime createdAt)
        {
            ID = id;
            Username = username;
            Role = role;
            CreatedAt = createdAt;
        }
        public int ID { get; set; }
        public string Username { get; set; }
        public string Role { get; set; }
        public DateTime CreatedAt { get; set; }
    }
}