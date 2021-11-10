using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsultantSystem
{

    public partial class SignIn : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            string loginProcedure = "login";
            Dictionary<string, object> map = new Dictionary<string, object>();
            map.Add("@pUsername", username.Text);
            map.Add("@pPassword", password.Text);
            DataTable dt = DataProvider.getInstance.ExecuteQuery(loginProcedure, map);
            if (dt.Rows.Count > 0)
            {
                var id = dt.Rows[0][0];
                var username = dt.Rows[0][1];
                var role = dt.Rows[0][2];
                var createdAt = dt.Rows[0][3];
                Response.Redirect("About.aspx");

                UserModel user = new UserModel()
                {
                    ID = Int32.Parse(id.ToString()),
                    Username = username.ToString(),
                    Role = role.ToString(),
                    CreatedAt = DateTime.Parse(createdAt.ToString())
                };

                Session["user"] = user;
            }
            else
            {
                Response.Write("<script language='javascript'>alert('Đăng nhập thất bại')</script>");
            }
        }
    }
}