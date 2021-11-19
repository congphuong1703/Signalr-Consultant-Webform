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
    public partial class SignUp : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SignUp_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string registerProcedure = "register";
                Dictionary<string, object> map = new Dictionary<string, object>();
                DateTime theDate = DateTime.Now;
                theDate.ToString("yyyy-MM-dd H:mm:ss");

                map.Add("@pUsername", username.Text);
                map.Add("@pPassword", password.Text);
                map.Add("@pRole", "user");
                map.Add("@pCreated_at", theDate);
                MySqlDataReader dr = DataProvider.getInstance.ExecuteQueryReader(registerProcedure, map);
                if (dr.RecordsAffected> 0)
                {
                    Response.Redirect("SignIn.aspx");
                }
                else
                {
                    Response.Write("<script language='javascript'>alert('Tài khoản đã có người sử dụng.')</script>");
                }
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int length = args.Value.Length;
            if (length >= 6)
            {

                args.IsValid = true;
            }
            else
            {
                Label1.Text = "Mật khẩu dài ít nhất 6 kí tự.";
                args.IsValid = false;

            }
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int length = args.Value.Length;
            if (length > 0)
            {

                args.IsValid = true;
            }
            else
            {
                args.IsValid = false;

            }
        }
    }
}