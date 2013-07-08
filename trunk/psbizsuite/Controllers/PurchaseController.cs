using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using psbizsuite.Models;

namespace psbizsuite.Controllers
{
    public class PurchaseController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /Purchase/

        public ActionResult Index()
        {
            if (User.IsInRole("Accountant"))
            {
                var purchases = db.purchases.Include(p => p.supplier).Include(p => p.purchasetype);
                return View(purchases.ToList());
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // GET: /Purchase/Details/5

        public ActionResult Details(int id = 0)
        {
            if (User.IsInRole("Accountant"))
            {
                purchase purchase = db.purchases.Find(id);
                if (purchase == null)
                {
                    return HttpNotFound();
                }
                return View(purchase);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // GET: /Purchase/Create

        public ActionResult Create()
        {
            if (User.IsInRole("Accountant"))
            {
                ViewBag.Supplier_UserAccount_Username = new SelectList(db.Suppliers, "UserAccount_Username", "FullName");
                ViewBag.Purchasetype_PurchaseTypeID = new SelectList(db.purchasetypes, "PurchaseTypeID", "Name");
                return View();
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // POST: /Purchase/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(purchase purchase)
        {
            if (ModelState.IsValid)
            {
                db.purchases.Add(purchase);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Supplier_UserAccount_Username = new SelectList(db.Suppliers, "UserAccount_Username", "FullName", purchase.Supplier_UserAccount_Username);
            ViewBag.Purchasetype_PurchaseTypeID = new SelectList(db.purchasetypes, "PurchaseTypeID", "Name", purchase.Purchasetype_PurchaseTypeID);
            return View(purchase);
        }

        //
        // GET: /Purchase/Edit/5

        public ActionResult Edit(int id = 0)
        {
            if (User.IsInRole("Accountant"))
            {
                purchase purchase = db.purchases.Find(id);
                if (purchase == null)
                {
                    return HttpNotFound();
                }
                ViewBag.Supplier_UserAccount_Username = new SelectList(db.Suppliers, "UserAccount_Username", "FullName", purchase.Supplier_UserAccount_Username);
                ViewBag.Purchasetype_PurchaseTypeID = new SelectList(db.purchasetypes, "PurchaseTypeID", "Name", purchase.Purchasetype_PurchaseTypeID);
                return View(purchase);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // POST: /Purchase/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(purchase purchase)
        {
            if (ModelState.IsValid)
            {
                db.Entry(purchase).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Supplier_UserAccount_Username = new SelectList(db.Suppliers, "UserAccount_Username", "FullName", purchase.Supplier_UserAccount_Username);
            ViewBag.Purchasetype_PurchaseTypeID = new SelectList(db.purchasetypes, "PurchaseTypeID", "Name", purchase.Purchasetype_PurchaseTypeID);
            return View(purchase);
        }

        //
        // GET: /Purchase/Delete/5

        public ActionResult Delete(int id = 0)
        {
            if (User.IsInRole("Accountant"))
            {
                purchase purchase = db.purchases.Find(id);
                if (purchase == null)
                {
                    return HttpNotFound();
                }
                return View(purchase);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // POST: /Purchase/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            purchase purchase = db.purchases.Find(id);
            db.purchases.Remove(purchase);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}