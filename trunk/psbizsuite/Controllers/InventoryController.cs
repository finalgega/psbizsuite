using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace psbizsuite.Controllers
{
    public class InventoryController : Controller
    {
        //
        // GET: /Inventory/
        public ActionResult CreateInventoryItem(string itemName)
        {
            Console.WriteLine("POST MADE IT!");
            if (itemName != null)
            {
                ViewBag.Message = "Succeed!";
                ViewBag.Message = itemName;
            }
            else
            {
                ViewBag.Message = "Failed!";
            }
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
            EncryptionController encrypt = new EncryptionController();
            StringBuilder randStr = new StringBuilder("Hello World!\n");
            StringBuilder nXtString = encrypt.SimpleXORAlgorithm(randStr);
           // byte[] test = encrypt.RSAEncrypt(randStr);
           // StringBuilder nXtString = new StringBuilder(encrypt.RSADecrypt(test));
            return Content(nXtString.ToString());
        }

    }
}
