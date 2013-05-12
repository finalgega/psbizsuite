using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace psbizsuite.Controllers
{
    public class LeaveController : Controller
    {
        //
        // GET: /Leave/

        public ActionResult ViewIndividualLeave()
        {
            return View();
        }

        public ActionResult ViewLeavePolicy()
        {
            return View();
        }

        public ActionResult EditLeavePolicy()
        {
            return View();
        }

        public ActionResult ApplyLeave()
        {
            return View();
        }

    }
}
