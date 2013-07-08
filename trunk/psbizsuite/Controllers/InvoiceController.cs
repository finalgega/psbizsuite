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
    public class InvoiceController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /Invoice/

        public ActionResult Index()
        {
            if (User.IsInRole("Accountant"))
            {
                var invoices = db.invoices.Include(i => i.order);
                return View(invoices.ToList());
            }

            else
            {
                return HttpNotFound("Unauthorized access");
            }

        }

        //
        // GET: /Invoice/Details/5

        public ActionResult Details(int id = 0)
        {
            if (User.IsInRole("Accountant"))
            {
                invoice invoice = db.invoices.Find(id);
                if (invoice == null)
                {
                    return HttpNotFound();
                }
                return View(invoice);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // GET: /Invoice/Create

        public ActionResult Create()
        {
            if (User.IsInRole("Accountant"))
            {     
            ViewBag.Order_OrderId = new SelectList(db.Orders, "OrderId", "Status");
            return View();}
        else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // POST: /Invoice/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(invoice invoice)
        {
            if (ModelState.IsValid)
            {
                db.invoices.Add(invoice);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Order_OrderId = new SelectList(db.Orders, "OrderId", "Status", invoice.Order_OrderId);
            return View(invoice);
        }

        //
        // GET: /Invoice/Edit/5

        public ActionResult Edit(int id = 0)
        {
            if (User.IsInRole("Accountant"))
            {
                invoice invoice = db.invoices.Find(id);
                if (invoice == null)
                {
                    return HttpNotFound();
                }
                ViewBag.Order_OrderId = new SelectList(db.Orders, "OrderId", "Status", invoice.Order_OrderId);
                return View(invoice);
            }

            else
            {
                return HttpNotFound("Unauthorized access");
            }
            
        }

        //
        // POST: /Invoice/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(invoice invoice)
        {
            if (ModelState.IsValid)
            {
                db.Entry(invoice).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Order_OrderId = new SelectList(db.Orders, "OrderId", "Status", invoice.Order_OrderId);
            return View(invoice);
        }

        //
        // GET: /Invoice/Delete/5

        public ActionResult Delete(int id = 0)
        {
            invoice invoice = db.invoices.Find(id);
            if (invoice == null)
            {
                return HttpNotFound();
            }
            return View(invoice);
        }

        //
        // POST: /Invoice/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            invoice invoice = db.invoices.Find(id);
            db.invoices.Remove(invoice);
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