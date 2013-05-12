using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace psbizsuite.Controllers
{
    public class CustomerController : Controller
    {
        //
        // GET: /Customer/

        public ActionResult CreateCustomerProfile()
        {
            return View();
        }
        
        public ActionResult ViewEditCustomerProfile()
        {
            return View();
        }

        public ActionResult ViewCustomerProfile()
        {
            //CUSTOMER VIEW ONLY
            return View();
        }
    }
}
