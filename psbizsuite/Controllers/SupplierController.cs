using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using psbizsuite.Models;
using psbizsuite.Models.Utilities;
using System.Security.Cryptography;
using System.Text;

namespace psbizsuite.Controllers
{
    public class SupplierController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /Supplier/

        public ActionResult Index()
        {
            var suppliers = db.Suppliers.Include(s => s.UserAccount);
            return View(suppliers.ToList());
        }

        //
        // GET: /Supplier/Details/5

        public ActionResult Details(string id = null)
        {
            Supplier supplier = db.Suppliers.Find(id);
            if (supplier == null)
            {
                return HttpNotFound();
            }
            return View(supplier);
        }

        //
        // GET: /Supplier/Create

        public ActionResult Create()
        {
            ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Password");
            return View();
        }

        //
        // POST: /Supplier/Create

        [HttpPost]
        public ActionResult Create(Supplier supplier)
        {
            if (ModelState.IsValid)
            {
                db.Suppliers.Add(supplier);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Password", supplier.UserAccount_Username);
            return View(supplier);
        }

        //
        // GET: /Supplier/Edit/5

        public ActionResult Edit(string id = null)
        {
            Supplier supplier = db.Suppliers.Find(id);
            if (supplier == null)
            {
                return HttpNotFound();
            }
            ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Password", supplier.UserAccount_Username);
            return View(supplier);
        }

        //
        // POST: /Supplier/Edit/5

        [HttpPost]
        public ActionResult Edit(Supplier supplier)
        {
            if (ModelState.IsValid)
            {
                db.Entry(supplier).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Password", supplier.UserAccount_Username);
            return View(supplier);
        }

        //
        // GET: /Supplier/Delete/5

        public ActionResult Delete(string id = null)
        {
            Supplier supplier = db.Suppliers.Find(id);
            if (supplier == null)
            {
                return HttpNotFound();
            }
            return View(supplier);
        }

        //
        // POST: /Supplier/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(string id)
        {
            Supplier supplier = db.Suppliers.Find(id);
            db.Suppliers.Remove(supplier);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        public ActionResult CreateSupplier()
        {
            return View();
        }
        [HttpPost]
        public ActionResult CreateSupplier(Supplier supplier)
        {
            if (ModelState.IsValid)
            {
                Supplier usrAc = supplier;
                usrAc.UserAccount.Type = "Supplier";
                string hashData = Encryption.CreatePasswordHash(usrAc.FullName);
                char[] delimiter = { ':' };
                string address = usrAc.Address;
                SymmetricAlgorithm sa = TripleDESCryptoServiceProvider.Create();
                sa.GenerateIV();
                sa.GenerateKey();
                byte[] encryptedAddress = Encryption.Encrypt(sa.IV, sa.Key, address);
                string decryptedAddress = Encryption.Decrypt(sa.IV, sa.Key, encryptedAddress);
                usrAc.Address = decryptedAddress;
                AuditLogController alc = new AuditLogController();
                alc.writeRecords(usrAc.FullName, usrAc.Description, Encoding.UTF32.GetString(encryptedAddress));
               // usrAc.Address = encryptedAddress;
                string[] split = hashData.Split(delimiter);
                string salt = split[Encryption.SALT_INDEX];
                string hash = split[Encryption.PBKDF2_INDEX];
                usrAc.UserAccount.Password = hash;
                usrAc.UserAccount.Salt = salt;
                db.UserAccounts.Add(usrAc.UserAccount);
                db.Suppliers.Add(usrAc);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View();
        }
    }
}