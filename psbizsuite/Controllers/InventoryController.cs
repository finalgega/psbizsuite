using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Diagnostics;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using psbizsuite.Models;
using System.Data.Entity.Validation;
namespace psbizsuite.Controllers
{
    public class InventoryController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /Inventory/

        public ActionResult Index()
        {
            var inventories = db.Inventories.Include(i => i.Supplier);
            return View(inventories.ToList());
        }

        //
        // GET: /Inventory/Details/5

        public ActionResult Details(int id = 0)
        {
            Inventory inventory = db.Inventories.Find(id);
            if (inventory == null)
            {
                return HttpNotFound();
            }
            return View(inventory);
        }

        //
        // GET: /Inventory/Create

        public ActionResult Create()
        {
            ViewBag.Supplier_UserAccount_Username = new SelectList(db.Suppliers, "UserAccount_Username", "FullName");
            ViewBag.Category_CatId = new SelectList(db.categories, "CatId", "CatName");
            return View();
        }

        //
        // POST: /Inventory/Create

        [HttpPost]
        public ActionResult Create(Inventory inventory, HttpPostedFileBase uploadFile)
        {
            if (ModelState.IsValid)
            {
                Inventory inventoryItem = inventory;
                inventoryItem.TimeStamp = System.DateTime.Now;
                if (uploadFile != null && uploadFile.ContentLength > 0)
                {
                   //  extracts filename
                    inventoryItem.Image = new byte[uploadFile.ContentLength];
                    uploadFile.InputStream.Read(inventoryItem.Image, 0, uploadFile.ContentLength);    
                db.Inventories.Add(inventoryItem);
                    db.SaveChanges();
                }

                ViewBag.Supplier_UserAccount_Username = new SelectList(db.Suppliers, "UserAccount_Username", "FullName", inventory.Supplier_UserAccount_Username);
                 ViewBag.Category_CatId = new SelectList(db.categories, "CatId", "CatName");
                return View(inventory);
            }
            return View(inventory);
        }

        //
        // GET: /Inventory/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Inventory inventory = db.Inventories.Find(id);
            if (inventory == null)
            {
                return HttpNotFound();
            }
            ViewBag.Supplier_UserAccount_Username = new SelectList(db.Suppliers, "UserAccount_Username", "FullName", inventory.Supplier_UserAccount_Username);
            return View(inventory);
        }

        //
        // POST: /Inventory/Edit/5

        [HttpPost]
        public ActionResult Edit(Inventory inventory)
        {
            var errors = ModelState.Values.SelectMany(v => v.Errors);
            if (ModelState.IsValid)
            {
                try
                {
                    inventory.TimeStamp = System.DateTime.Now;
                    db.Entry(inventory).State = EntityState.Modified;

                    db.SaveChanges();
                    ViewBag.Supplier_UserAccount_Username = new SelectList(db.Suppliers, "UserAccount_Username", "FullName", inventory.Supplier_UserAccount_Username);
                    return View(inventory);
                }
                catch (DbEntityValidationException ex)
                {
                    StringBuilder sb = new StringBuilder();

                    foreach (var failure in ex.EntityValidationErrors)
                    {
                        sb.AppendFormat("{0} failed validation\n", failure.Entry.Entity.GetType());
                        foreach (var error in failure.ValidationErrors)
                        {
                            sb.AppendFormat("- {0} : {1}", error.PropertyName, error.ErrorMessage);
                            sb.AppendLine();
                        }
                    }

                    throw new DbEntityValidationException(
                        "Entity Validation Failed - errors follow:\n" +
                        sb.ToString(), ex
                    ); // Add the original exception as the innerException
                }
                ViewBag.Supplier_UserAccount_Username = new SelectList(db.Suppliers, "UserAccount_Username", "FullName", inventory.Supplier_UserAccount_Username);
                return View(inventory);
            }

            ViewBag.Supplier_UserAccount_Username = new SelectList(db.Suppliers, "UserAccount_Username", "FullName", inventory.Supplier_UserAccount_Username);
            return View(inventory);
        }

        //
        // GET: /Inventory/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Inventory inventory = db.Inventories.Find(id);
            if (inventory == null)
            {
                return HttpNotFound();
            }
            return View(inventory);
        }

        //
        // POST: /Inventory/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Inventory inventory = db.Inventories.Find(id);
            db.Inventories.Remove(inventory);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        public ActionResult CreateInventoryItem()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateItemRecord()
        {
            Debug.WriteLine("POST MADE IT!");
            EncryptionController encrypt = new EncryptionController();
            StringBuilder randStr = new StringBuilder("Hello World!\n");
            StringBuilder nXtString = encrypt.SimpleXORAlgorithm(randStr);
            Debug.WriteLine("randStr : " + randStr);
            Debug.WriteLine("nXtString : " + nXtString);
            Debug.WriteLine("x0r of nXtString : " + encrypt.SimpleXORAlgorithm(nXtString));
            string pbkdf2Pwd = EncryptionController.CreatePasswordHash("Sypeskder");
            Debug.WriteLine("Original Password :  Sypeskder");
            Debug.WriteLine("Hash of password using PBKDF2 : " + pbkdf2Pwd);
            return RedirectToAction("Index");
        }

        public ActionResult CreateAccount()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateAccount(UserAccount user)
        {
            if (ModelState.IsValid)
            {
                UserAccount usrAc = user;
                string hashData = EncryptionController.CreatePasswordHash(usrAc.Password);
                char[] delimiter = { ':' };
                string[] split = hashData.Split(delimiter);
                string salt = split[EncryptionController.SALT_INDEX];
                string hash = split[EncryptionController.PBKDF2_INDEX];
                usrAc.Password = hash;
                usrAc.Salt = salt;
                db.UserAccounts.Add(usrAc);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View();
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        public ActionResult ShowImage(int id)
        {
            Inventory inventory = db.Inventories.Find(id);
            var imageData = inventory.Image;
            return File(imageData,"image/jpg");
        }
    }
}