using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace psbizsuite.Controllers
{
    public class InventoryController : Controller
    {
        //
        // GET: /Inventory/

        public ActionResult CreateInventoryItem()
        {
            return View();
        }

        public ActionResult RetrieveInventoryItem()
        {
            return View();
        }

        public ActionResult UpdateInventoryItem()
        {
            return View();
        }

        public ActionResult InventoryDashboard()
        {
            return View();
        }

        public ActionResult ViewInventory()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateItemRecord()
        {
            Console.WriteLine("POST MADE IT!");
            return Content("DATA PASSED!");
        }

    }
}
