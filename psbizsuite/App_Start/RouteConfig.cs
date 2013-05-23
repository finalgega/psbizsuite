using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Routing;

namespace psbizsuite
{
    public class RouteConfig
    {
        public static void RegisterRoutes(RouteCollection routes)
        {
            routes.IgnoreRoute("{resource}.axd/{*pathInfo}");

            routes.MapRoute(
                name: "Default",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Home", action = "Index", id = UrlParameter.Optional }
            );
            routes.MapRoute(
                name: "CreateInventoryItem",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Inventory", action = "CreateInventoryItem", id = UrlParameter.Optional }
                );
            routes.MapRoute(
                name: "RetrieveInventoryItem",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Inventory", action = "RetrieveInventoryItem", id = UrlParameter.Optional }
                );
            routes.MapRoute(
                name: "UpdateInventoryItem",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Inventory", action = "UpdateInventoryItem", id = UrlParameter.Optional }
                );
            routes.MapRoute(
                name: "ViewSupportTicket",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "SupportTicket", action = "ViewSupportTicket", id = UrlParameter.Optional });
            routes.MapRoute(
                name: "EditEmployeeDetail",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Employee", action = "EditEmployeeDetail", id = UrlParameter.Optional }
                );  
            routes.MapRoute(
                name: "ViewIR",
                url: "{controller}/{action}/{id}",
                defaults: new { controller = "Accounting", action = "ViewIR", id = UrlParameter.Optional });
        }
    }
}