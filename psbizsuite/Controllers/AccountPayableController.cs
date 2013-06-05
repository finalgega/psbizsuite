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
    public class AccountPayableController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /AccountPayable/

        public ActionResult Index()
        {
            return View(db.AccountPayables.ToList());
        }

        //
        // GET: /AccountPayable/Details/5

        public ActionResult Details(int id = 0)
        {
            AccountPayable accountpayable = db.AccountPayables.Find(id);
            if (accountpayable == null)
            {
                return HttpNotFound();
            }
            return View(accountpayable);
        }

        //
        // GET: /AccountPayable/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /AccountPayable/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(AccountPayable accountpayable)
        {
            if (ModelState.IsValid)
            {
                db.AccountPayables.Add(accountpayable);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(accountpayable);
        }

        //
        // GET: /AccountPayable/Edit/5

        public ActionResult Edit(int id = 0)
        {
            AccountPayable accountpayable = db.AccountPayables.Find(id);
            if (accountpayable == null)
            {
                return HttpNotFound();
            }
            return View(accountpayable);
        }

        //
        // POST: /AccountPayable/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(AccountPayable accountpayable)
        {
            if (ModelState.IsValid)
            {
                db.Entry(accountpayable).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(accountpayable);
        }

        //
        // GET: /AccountPayable/Delete/5

        public ActionResult Delete(int id = 0)
        {
            AccountPayable accountpayable = db.AccountPayables.Find(id);
            if (accountpayable == null)
            {
                return HttpNotFound();
            }
            return View(accountpayable);
        }

        //
        // POST: /AccountPayable/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            AccountPayable accountpayable = db.AccountPayables.Find(id);
            db.AccountPayables.Remove(accountpayable);
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