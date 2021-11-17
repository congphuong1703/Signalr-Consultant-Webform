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

            loadUserChat();
            loadMessageHistory(parameter);
        }

        protected void loadMessageHistory(string param)
        {
            Dictionary<string, object> map = new Dictionary<string, object> { };
            string getAllMessageHistory = "getAllMessageHistory";
            UserModel user = (UserModel)Session["user"];
            if (user == null)
                Response.Redirect("SignIn.aspx");
            if (String.IsNullOrEmpty(param) && user.Role != "admin")
            {
                username.Text = "admin";
                map.Add("@pDelivery", user.ID);
                map.Add("@pReceive", "admin");
            }
            else if (!String.IsNullOrEmpty(param))
            {
                username.Text = param;
                map.Add("@pDelivery", user.ID);
                map.Add("@pReceive", param);
            }

            DataTable dt = DataProvider.getInstance.ExecuteQuery(getAllMessageHistory, map);
            RepeaterUsersMessage.DataSource = dt;
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