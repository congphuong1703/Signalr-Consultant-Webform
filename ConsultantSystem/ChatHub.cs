using System;
using System.Collections.Concurrent;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNet.SignalR;
using Microsoft.AspNet.SignalR.Infrastructure;

namespace ConsultantSystem
{
    public class ChatHub : Hub
    {

        private static readonly ConcurrentDictionary<string, User> Users =
           new ConcurrentDictionary<string, User>(StringComparer.InvariantCultureIgnoreCase);
        public void Send(string connectionId, string message)
        {
            string[] messages = message.Split('-');

            //Clients.User(connectionId).send(message);
            Clients.Group(connectionId).addChatMessage(messages[0], messages[1]);

            //Clients.Group(connectionId).addChatMessage(connectionId, message);
        }

        public void Post(string connectionId, string message)
        {
            Clients.User(connectionId).send(message);
            //Clients.User(connectionId).send(message);
        }

        public Task JoinGroup(string group)
        {
            return Groups.Add(Context.ConnectionId, group);
        }
        public override Task OnConnected()
        {
            Clients.All.SendAsync("UserConnected", Context.ConnectionId);
            //string name = Context.User.Identity.Name;
            //Groups.Add(Context.ConnectionId, name);

            return base.OnConnected();
        }

        //    public override Task OnConnected()
        //    {
        //        try
        //        {
        //            //var claimsIdentity = Context.User.Identity as System.Security.Claims.ClaimsIdentity;
        //            //var currentUser = JsonConvert.DeserializeObject<UserLogonModel>(claimsIdentity.FindFirst("UserData").Value);

        //            string connectionId = Context.ConnectionId;
        //            var user = Users.GetOrAdd(connectionId, _ => new User
        //            {
        //                ProfileId = connectionId,
        //                ConnectionIds = new HashSet<string>(),
        //                DateConnect = DateTime.Now
        //            });

        //            lock (user.ConnectionIds)
        //            {
        //                user.ConnectionIds.Add(connectionId);

        //                return base.OnConnected();
        //            }
        //        }
        //        catch (Exception ex)
        //        {
        //        }

        //        return base.OnConnected();
        //    }

        //    public override Task OnDisconnected(bool stopCalled)
        //    {
        //        try
        //        {
        //            //string profileId = Context.User == null ? "111" : Context.User.Identity.Name;

        //            //var claimsIdentity = Context.User.Identity as System.Security.Claims.ClaimsIdentity;
        //            //var currentUser = JsonConvert.DeserializeObject<UserLogonModel>(claimsIdentity.FindFirst("UserData").Value);

        //            string connectionId = Context.ConnectionId;
        //            DateTime DateCurrent = DateTime.Now;
        //            Users.TryGetValue(connectionId, out User user);
        //            if (user != null)
        //            {
        //                user.DateConnect = DateCurrent;
        //                lock (user.ConnectionIds)
        //                {
        //                    user.ConnectionIds.RemoveWhere(cid => cid.Equals(connectionId));
        //                    //if (!user.ConnectionIds.Any())
        //                    //{
        //                    //    Users.TryRemove(profileId, out User removedUser);
        //                    //}

        //                    //#region + Remove group role
        //                    //if (currentUser.RoleCodes != null)
        //                    //{
        //                    //    currentUser.RoleCodes.ForEach(x =>
        //                    //    {
        //                    //        Groups.RemoveFromGroupAsync(connectionId, x);
        //                    //    });
        //                    //}
        //                    //#endregion

        //                    //#region + Xóa bản ghi Active user
        //                    //var itemActive = _MM_Context.ActiveUser.Where(x => x.UserName == currentUser.UserName).ToList();
        //                    //if (itemActive != null && itemActive.Count > 0)
        //                    //{
        //                    //    _MM_Context.ActiveUser.RemoveRange(itemActive);
        //                    //    _MM_Context.SaveChanges();
        //                    //}
        //                    //#endregion
        //                }
        //            }
        //        }
        //        catch (Exception)
        //        {
        //        }
        //        return base.OnDisconnected(stopCalled);
        //    }
        //}
    }
    public class User
    {
        #region Constructor
        public User()
        {
            //
            // TODO: Add constructor logic here
            //
        }
        #endregion


        #region Properties

        /// <summary>
        /// Property to get/set ProfileId
        /// </summary>
        public string ProfileId
        {
            get;
            set;
        }
        public DateTime DateConnect
        {
            get;
            set;
        }
        /// <summary>
        /// Propoerty to get/set multiple ConnectionId
        /// </summary>
        public HashSet<string> ConnectionIds
        {
            get;
            set;
        }
        public string Extension { get; set; }

        #endregion
    }
}
