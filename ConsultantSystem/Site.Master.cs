using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsultantSystem
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserModel user = (UserModel)Session["user"];
            if (user == null)
            {
                signInBtn.Visible = true;
                logoutBtn.Visible = false;
            }
            else
            {
                logoutBtn.Visible = true;
                signInBtn.Visible = false;
                if (user.Role == "admin")
                {
                    postBtn.Visible = true;
                }
                else
                {
                    postBtn.Visible = false;
                }
            }

        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Remove("user");
            Response.Redirect("SignIn.aspx");
        }
    }
}