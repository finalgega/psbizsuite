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
    public class AccountReceivableController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /AccountReceivable/

        public ActionResult Index()
        {
            var accountreceivables = db.AccountReceivables.Include(a => a.Order);
            return View(accountreceivables.ToList());
        }

        //
        // GET: /AccountReceivable/Details/5

        public ActionResult Details(int id = 0)
        {
            AccountReceivable accountreceivable = db.AccountReceivables.Find(id);
            if (accountreceivable == null)
            {
                return HttpNotFound();
            }
            return View(accountreceivable);
        }

        //
        // GET: /AccountReceivable/Create

        public ActionResult Create()
        {
            ViewBag.Order_OrderId = new SelectList(db.Orders, "OrderId", "Status");
            return View();
        }

        //
        // POST: /AccountReceivable/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(AccountReceivable accountreceivable)
        {
            if (ModelState.IsValid)
            {
                db.AccountReceivables.Add(accountreceivable);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Order_OrderId = new SelectList(db.Orders, "OrderId", "Status", accountreceivable.Order_OrderId);
            return View(accountreceivable);
        }

        //
        // GET: /AccountReceivable/Edit/5

        public ActionResult Edit(int id = 0)
        {
            AccountReceivable accountreceivable = db.AccountReceivables.Find(id);
            if (accountreceivable == null)
            {
                return HttpNotFound();
            }
            ViewBag.Order_OrderId = new SelectList(db.Orders, "OrderId", "Status", accountreceivable.Order_OrderId);
            return View(accountreceivable);
        }

        //
        // POST: /AccountReceivable/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(AccountReceivable accountreceivable)
        {
            if (ModelState.IsValid)
            {
                db.Entry(accountreceivable).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Order_OrderId = new SelectList(db.Orders, "OrderId", "Status", accountreceivable.Order_OrderId);
            return View(accountreceivable);
        }

        //
        // GET: /AccountReceivable/Delete/5

        public ActionResult Delete(int id = 0)
        {
            AccountReceivable accountreceivable = db.AccountReceivables.Find(id);
            if (accountreceivable == null)
            {
                return HttpNotFound();
            }
            return View(accountreceivable);
        }

        //
        // POST: /AccountReceivable/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            AccountReceivable accountreceivable = db.AccountReceivables.Find(id);
            db.AccountReceivables.Remove(accountreceivable);
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