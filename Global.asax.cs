using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;
using System.Web.Routing;

namespace ABS_1
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            RouteTable.Routes.Add(
                "IndexRoute",
                 new Route("Index/",
                 new PageRouteHandler("~/Presentation/Index.aspx")));

            RouteTable.Routes.Add(
                "AvailabilityCheckerRoute",
                 new Route("AvailabilityChecker/",
                 new PageRouteHandler("~/Presentation/AvailabilityChecker.aspx")));

            RouteTable.Routes.Add(
                "SignUpRoute",
                 new Route("SignUp/",
                 new PageRouteHandler("~/Presentation/SignUp.aspx")));

            RouteTable.Routes.Add(
                "LoginRoute",
                 new Route("Login/",
                 new PageRouteHandler("~/Presentation/Login.aspx")));


            RouteTable.Routes.Add(
                "MembersIndexRoute",
                 new Route("Members/Index_Members/",
                 new PageRouteHandler("~/Members/Index_Members.aspx")));

            RouteTable.Routes.Add(
                "AvailabilityCheckerRouteMember",
                 new Route("Members/AvailabilityChecker/",
                 new PageRouteHandler("~/Members/AvailabilityChecker.aspx")));

            RouteTable.Routes.Add(
               "MakeAppointmentRoute",
                new Route("Members/MakeAppointment/",
                new PageRouteHandler("~/Members/MakeAppointment.aspx")));

            RouteTable.Routes.Add(
                "MembersLogoutRoute",
                 new Route("Members/Logout/",
                 new PageRouteHandler("~/Members/Logout.aspx")));

            
        }

        protected void Session_Start(object sender, EventArgs e)
        {

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

        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}