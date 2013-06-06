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
    public class CashFlowController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /CashFlow/

        public ActionResult Index()
        {
            return View(db.cashflows.ToList());
        }

        //
        // GET: /CashFlow/Details/5

        public ActionResult Details(int id = 0)
        {
            cashflow cashflow = db.cashflows.Find(id);
            if (cashflow == null)
            {
                return HttpNotFound();
            }
            return View(cashflow);
        }

        //
        // GET: /CashFlow/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /CashFlow/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(cashflow cashflow)
        {
            if (ModelState.IsValid)
            {
                db.cashflows.Add(cashflow);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(cashflow);
        }

        //
        // GET: /CashFlow/Edit/5

        public ActionResult Edit(int id = 0)
        {
            cashflow cashflow = db.cashflows.Find(id);
            if (cashflow == null)
            {
                return HttpNotFound();
            }
            return View(cashflow);
        }

        //
        // POST: /CashFlow/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(cashflow cashflow)
        {
            if (ModelState.IsValid)
            {
                db.Entry(cashflow).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(cashflow);
        }

        //
        // GET: /CashFlow/Delete/5

        public ActionResult Delete(int id = 0)
        {
            cashflow cashflow = db.cashflows.Find(id);
            if (cashflow == null)
            {
                return HttpNotFound();
            }
            return View(cashflow);
        }

        //
        // POST: /CashFlow/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            cashflow cashflow = db.cashflows.Find(id);
            db.cashflows.Remove(cashflow);
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