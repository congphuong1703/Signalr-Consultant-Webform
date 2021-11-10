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
                    map.Add("@pDescription", name.Text);
                    map.Add("@pImages", image);
                    map.Add("@pPrice", price.Text);
                    map.Add("@pAddress", address.Text);
                    map.Add("@pContact", contact.Text);
                    map.Add("@pUserPost", userSession.ID);
                    DataTable dt = DataProvider.getInstance.ExecuteQuery(postProduct, map);
                    if (dt.Rows.Count > 0)
                    {
                        //thong bao
                    }
                    else
                    {
                        //thong bao
                    }
                }
            }
            else
            {
                Response.Redirect("SignIn.aspx");
            }
        }
    }
}