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
    public class LeaveRequestController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /LeaveRequest/

        public ActionResult Index()
        {
            var leaverequests = db.LeaveRequests.Include(l => l.Employee).Include(l => l.leavepolicy);
            return View(leaverequests.ToList());
        }

        //
        // GET: /LeaveRequest/Details/5

        public ActionResult Details(int id = 0)
        {
            LeaveRequest leaverequest = db.LeaveRequests.Find(id);
            if (leaverequest == null)
            {
                return HttpNotFound();
            }
            return View(leaverequest);
        }

        //
        // GET: /LeaveRequest/Create

        public ActionResult Create()
        {
            ViewBag.Employee_UserAccount_Username = new SelectList(db.Employees, "UserAccount_Username", "FullName");
            ViewBag.LeavePolicy_LeavePolicyId = new SelectList(db.LeavePolicies, "LeavePolicyId", "PolicyName");
            return View();
        }

        //
        // POST: /LeaveRequest/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Exclude = "LeaveRequestId")]LeaveRequest leaverequest)
        {
            if (ModelState.IsValid)
            {
                db.LeaveRequests.Add(leaverequest);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Employee_UserAccount_Username = new SelectList(db.Employees, "UserAccount_Username", "UserAccount_Username", leaverequest.Employee_UserAccount_Username);
            ViewBag.LeavePolicy_LeavePolicyId = new SelectList(db.LeavePolicies, "LeavePolicyId", "PolicyName", leaverequest.LeavePolicy_LeavePolicyId);
            return View(leaverequest);
        }

        //To Do : approve and notapprove method

        //
        // GET: /LeaveRequest/Edit/5

        public ActionResult Edit(int id = 0)
        {
            LeaveRequest leaverequest = db.LeaveRequests.Find(id);
            if (leaverequest == null)
            {
                return HttpNotFound();
            }
            ViewBag.Employee_UserAccount_Username = new SelectList(db.Employees, "UserAccount_Username", "FullName", leaverequest.Employee_UserAccount_Username);
            ViewBag.LeavePolicy_LeavePolicyId = new SelectList(db.LeavePolicies, "LeavePolicyId", "PolicyName", leaverequest.LeavePolicy_LeavePolicyId);
            return View(leaverequest);
        }

        //
        // POST: /LeaveRequest/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(LeaveRequest leaverequest)
        {
            if (ModelState.IsValid)
            {
                db.Entry(leaverequest).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Employee_UserAccount_Username = new SelectList(db.Employees, "UserAccount_Username", "FullName", leaverequest.Employee_UserAccount_Username);
            ViewBag.LeavePolicy_LeavePolicyId = new SelectList(db.LeavePolicies, "LeavePolicyId", "PolicyName", leaverequest.LeavePolicy_LeavePolicyId);
            return View(leaverequest);
        }

        //
        // GET: /LeaveRequest/Delete/5

        public ActionResult Delete(int id = 0)
        {
            LeaveRequest leaverequest = db.LeaveRequests.Find(id);
            if (leaverequest == null)
            {
                return HttpNotFound();
            }
            return View(leaverequest);
        }

        //
        // POST: /LeaveRequest/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            LeaveRequest leaverequest = db.LeaveRequests.Find(id);
            db.LeaveRequests.Remove(leaverequest);
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