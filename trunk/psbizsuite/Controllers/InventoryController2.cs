using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Text;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using psbizsuite.Models;
using psbizsuite.Models.Utilities;

namespace psbizsuite.Controllers
{
    public class InventoryController2 : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();
        //
        // GET: /Inventory/CreateInvetoryItem
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
        public ActionResult CreateItemRecord(Inventory inventoryItem)
        {
            if (ModelState.IsValid)
            {
                Inventory item = new Inventory();
                item = inventoryItem;
                db.Inventories.Add(item);
                db.SaveChanges();
                return RedirectToAction("RetrieveInventoryItem");
            }
            Debug.WriteLine("POST MADE IT!");
            EncryptionController encrypt = new EncryptionController();
            StringBuilder randStr = new StringBuilder("Hello World!\n");
            StringBuilder nXtString = encrypt.SimpleXORAlgorithm(randStr);
            Debug.WriteLine("randStr : " + randStr);
            Debug.WriteLine("nXtString : " + nXtString);
            Debug.WriteLine("x0r of nXtString : " + encrypt.SimpleXORAlgorithm(nXtString));
           // MySQLController mysql = new MySQLController();
           // mysql.SetUp();
           // byte[] test = encrypt.RSAEncrypt(randStr);
           // StringBuilder nXtString = new StringBuilder(encrypt.RSADecrypt(test));
            return Content(nXtString.ToString());
        }

    }
}
