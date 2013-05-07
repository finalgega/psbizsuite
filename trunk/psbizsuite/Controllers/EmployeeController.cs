using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace psbizsuite.Controllers
{
    public class EmployeeController : Controller
    {
        //
        // GET: /Employee/

        public ActionResult ManageEmployeeDetail()
        {
            return View();
        }

        public ActionResult EditEmployeeDetail()
        {
            return View();
        }

    }
}
