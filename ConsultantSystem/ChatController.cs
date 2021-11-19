using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace ConsultantSystem
{
    public class ChatController : ApiController
    {
        // GET api/<controller>
        public IEnumerable<string> Get()
        {
            return new string[] { "value1", "value2" };
        }

        // GET api/<controller>/5
        public string Get(int id)
        {
            return "value";
        }

        // POST api/<controller>
        [HttpPost]
        public void Post([FromBody] ChatModel chatModel)
        {
            try
            {
                string postMessage = "postMessage";
                Dictionary<string, object> map = new Dictionary<string, object> { };
                map.Add("@pContent", chatModel.message);
                map.Add("@pDelivery", chatModel.delivery);
                map.Add("@pReceive", chatModel.receive);
                map.Add("@pCreatedAt", DateTime.Now);
                DataProvider.getInstance.ExecuteQueryReader(postMessage, map);
            }
            catch (Exception ex)
            {

            }
        }

        // PUT api/<controller>/5
        public void Put(int id, [FromBody] string value)
        {
        }

        // DELETE api/<controller>/5
        public void Delete(int id)
        {
        }
    }
}