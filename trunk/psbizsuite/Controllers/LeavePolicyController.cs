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
    public class LeavePolicyController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /LeavePolicy/

        public ActionResult Index()
        {
            return View(db.LeavePolicies.ToList());
        }

        //
        // GET: /LeavePolicy/Details/5

        public ActionResult Details(int id = 0)
        {
            LeavePolicy leavepolicy = db.LeavePolicies.Find(id);
            if (leavepolicy == null)
            {
                return HttpNotFound();
            }
            return View(leavepolicy);
        }

        //
        // GET: /LeavePolicy/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /LeavePolicy/Create

        [HttpPost]
        public ActionResult Create(LeavePolicy leavepolicy)
        {
            if (ModelState.IsValid)
            {
                db.LeavePolicies.Add(leavepolicy);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(leavepolicy);
        }

        //
        // GET: /LeavePolicy/Edit/5

        public ActionResult Edit(int id = 0)
        {
            LeavePolicy leavepolicy = db.LeavePolicies.Find(id);
            if (leavepolicy == null)
            {
                return HttpNotFound();
            }
            return View(leavepolicy);
        }

        //
        // POST: /LeavePolicy/Edit/5

        [HttpPost]
        public ActionResult Edit(LeavePolicy leavepolicy)
        {
            if (ModelState.IsValid)
            {
                db.Entry(leavepolicy).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(leavepolicy);
        }

        //
        // GET: /LeavePolicy/Delete/5

        public ActionResult Delete(int id = 0)
        {
            LeavePolicy leavepolicy = db.LeavePolicies.Find(id);
            if (leavepolicy == null)
            {
                return HttpNotFound();
            }
            return View(leavepolicy);
        }

        //
        // POST: /LeavePolicy/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            LeavePolicy leavepolicy = db.LeavePolicies.Find(id);
            db.LeavePolicies.Remove(leavepolicy);
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