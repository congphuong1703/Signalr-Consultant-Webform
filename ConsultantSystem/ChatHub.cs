using System;
using System.Collections.Generic;
using System.Linq;
using Microsoft.AspNet.SignalR;

namespace ConsultantSystem
{
    public class ChatHub : Hub
    {
        public void Send(string name, string message)
        {
            var user = name;
            if (string.IsNullOrEmpty(user))
                user = "Anonymous";
            string format = "HH:mm:ss";
            DateTime now = DateTime.Now;
            string s = now.ToString(format);
            user += "\n" + s;
            Clients.All.addNewMessageToPage(user, message);
        }

        public void Post(string name, string message)
        {
            var user = name;
            if (string.IsNullOrEmpty(user))
                user = "Anonymous";
            Clients.All.addNewMessageToPage(user, message);
        }
    }
}