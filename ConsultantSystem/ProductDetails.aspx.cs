using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsultantSystem
{
    public partial class ProductDetails : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string parameter = Request.QueryString["product_id"];
            if (!String.IsNullOrEmpty(parameter))
            {
                string getProductDetails = "getProductDetails";
                Dictionary<string, object> map = new Dictionary<string, object>();
                map.Add("@pProductId", parameter);
                DataTable dt = DataProvider.getInstance.ExecuteQuery(getProductDetails, map);
                RepeaterProductDetails.DataSource = dt;
                RepeaterProductDetails.DataBind();
            }
            else
                Response.Redirect("Product.aspx");
        }

       
    }
}