using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ConsultantSystem
{
    public partial class Product : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string getAllProduct = "getAllProduct";
            Dictionary<string, object> map = new Dictionary<string, object>();
            DataTable dt = DataProvider.getInstance.ExecuteQuery(getAllProduct, map);
            RepeaterProduct.DataSource = dt;
            RepeaterProduct.DataBind();
        }
    }
}