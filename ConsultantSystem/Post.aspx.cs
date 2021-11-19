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
    public partial class Post : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            UserModel userSession = (UserModel)Session["user"];
            if (userSession == null)
            {
                Response.Redirect("SignIn.aspx");
            }
        }

        protected void Post_Click(object sender, EventArgs e)
        {
            UserModel userSession = (UserModel)Session["user"];
            if (userSession != null)
            {
                if (Page.IsValid)
                {
                    string postProduct = "postProduct";
                    string image = "";
                    if (images.HasFile)
                    {
                        var extension = System.IO.Path.GetExtension(images.FileName);
                        if (extension == ".jpg" || extension == ".png" || extension == ".gif")
                        {
                            var path = Server.MapPath("Images\\");
                            images.SaveAs(path + images.FileName);
                            string fileName = System.IO.Path.GetFileName(images.FileName);
                            image = "Images/" + fileName;
                        }
                    }
                    else
                    {
                        image = "Images/";
                    }
                    Dictionary<string, object> map = new Dictionary<string, object> { };
                    map.Add("@pName", name.Text);
                    map.Add("@pDescription", description.Value);
                    map.Add("@pImages", image);
                    map.Add("@pPrice", price.Text);
                    map.Add("@pAddress", address.Text);
                    map.Add("@pContact", contact.Text);
                    map.Add("@pUserPost", userSession.ID);
                    MySqlDataReader dr = DataProvider.getInstance.ExecuteQueryReader(postProduct, map);
                    if (dr.RecordsAffected > 0)
                    {
                        Response.Write("<script language='javascript'>alert('Thêm sản phẩm thành công')</script>");
                        Response.Redirect("Product.aspx");
                    }
                    else
                    {
                        Response.Write("<script language='javascript'>alert('Thêm sản phẩm thất bại')</script>");
                    }
                }
            }
            else
            {
                Response.Redirect("SignIn.aspx");
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
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