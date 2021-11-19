using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsultantSystem
{
    public partial class Chat : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserModel user = (UserModel)Session["user"];
            if (user == null)
                Response.Redirect("SignIn.aspx");
            string parameter = Request.QueryString["username"];
            string id = Request.QueryString["id"];
            string seeMore = Request.QueryString["seeMore"];

            loadUserChat();
            loadMessageHistory(parameter, id, seeMore);
        }

        protected void loadMessageHistory(string param, string id, string seeMore)
        {
            Dictionary<string, object> map = new Dictionary<string, object> { };
            string getAllMessageHistory = "getAllMessageHistory";
            UserModel user = (UserModel)Session["user"];
            if (user == null)
                Response.Redirect("SignIn.aspx");
            if (!String.IsNullOrEmpty(param) && user.Role != "admin")
            {
                username.Text = "admin";
                groupp.Text = user.Username;
                map.Add("@pDelivery", user.ID);
                map.Add("@pReceive", "admin");
            }
            else if (!String.IsNullOrEmpty(param))
            {
                username.Text = param;
                groupp.Text = param;
                map.Add("@pDelivery", user.ID);
                map.Add("@pReceive", param);
            }
            else
            {
                map.Add("@pDelivery", user.ID);
                map.Add("@pReceive", "");
            }
            if (String.IsNullOrEmpty(seeMore))
            {
                map.Add("@limitt", 0);

            }
            else
            {
                map.Add("@limitt", 0);

            }

            usernameMessage.Text = user.ID.ToString();
            usernameReceive.Text = id;
            delivery.Text = user.Username;

            DataTable dt = DataProvider.getInstance.ExecuteQuery(getAllMessageHistory, map);
            RepeaterMessageHistory.DataSource = dt;
            RepeaterMessageHistory.DataBind();

        }

        protected void loadUserChat()
        {
            string storeProcedure = "";
            UserModel user = (UserModel)Session["user"];
            Dictionary<string, object> map = new Dictionary<string, object> { };
            if (user.Role != "admin")
            {
                map.Add("@pUsername", "admin");
                storeProcedure = "getUserByUsername";
            }
            else
            {
                storeProcedure = "excludeAdmin";
            }
            DataTable dt = DataProvider.getInstance.ExecuteQuery(storeProcedure, map);
            RepeaterUsersMessage.DataSource = dt;
            RepeaterUsersMessage.DataBind();

        }
    }
}