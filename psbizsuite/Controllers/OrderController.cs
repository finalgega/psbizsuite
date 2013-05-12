using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace psbizsuite.Controllers
{
    public class OrderController : Controller
    {
        //
        // GET: /Order/

        public ActionResult CreateOrder()
        {
            return View();
        }

        public ActionResult ViewEditOrder()
        {
            return View();
        }

        public ActionResult ViewOrder()
        {
            //CUSTOMER VIEW ONLY
            return View();
        }
    }
}
