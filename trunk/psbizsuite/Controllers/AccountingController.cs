using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace psbizsuite.Controllers
{
    public class AccountingController : Controller
    {
        //
        // GET: /Accounting/

        public ActionResult ManageCashFlow()
        {
            return View();
        }

        public ActionResult ViewIR()
        {
            return View();
        }

        public ActionResult GenerateIR()
        {
            return View();
        }

        public ActionResult ViewPL()
        {
            return View();
        }

    }
}
