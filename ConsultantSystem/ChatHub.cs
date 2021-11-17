using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNet.SignalR;

namespace ConsultantSystem
{
    public class ChatHub : Hub
    {
        public void Send(string connectionId, string message)
        {
            var user = "";
            if (string.IsNullOrEmpty(user))
                user = "Anonymous";
            string format = "HH:mm:ss";
            DateTime now = DateTime.Now;
            string s = now.ToString(format);
            user += "\n" + s;
            Clients.All.addNewMessageToPage(connectionId,message);
        }

        public void Post(string connectionId, string message)
        {
            var user = "";
            if (string.IsNullOrEmpty(user))
                user = "Anonymous";
            Clients.All.addNewMessageToPage(connectionId, message);

            //Clients.User(connectionId).send(message);
        }
    }
}