using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Http;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;


namespace ConsultantSystem
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
            //Application["account"] = new List<Account>();
            //Application["soNguoiTruyCap"] = 0;
            //Application["tongSoTruyCap"] = 0;
            //Application["lst_soNguoiTruyCapBlog"] = new Hashtable();
            RouteTable.Routes.MapHttpRoute(
            name: "DefaultApi",
            routeTemplate: "api/{controller}/{id}",
            defaults: new { id = System.Web.Http.RouteParameter.Optional }
            );
        }
        protected void Session_Start(object sender, EventArgs e)
        {
            //Application["soNguoiTruyCap"] = (int)Application["soNguoiTruyCap"] + 1;
            //Session["login"] = false;
            //Session["email"] = "";
            //Session["password"] = "";
            //Session["name"] = "";
            //Session["role"] = "";
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {


        }

        protected void Session_End(object sender, EventArgs e)
        {
            //Application["soNguoiTruyCap"] = (int)Application["soNguoiTruyCap"] - 1;

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}