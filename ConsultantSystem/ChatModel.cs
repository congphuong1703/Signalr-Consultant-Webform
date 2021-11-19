using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace ConsultantSystem
{
    public class ChatModel
    {
        public int id { get; set; }
        public string message { get; set; }
        public int receive { get; set; }
        public int delivery { get; set; }

    }
}