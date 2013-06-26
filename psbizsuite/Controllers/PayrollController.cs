using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using psbizsuite.Models;
using System.Data.Objects.SqlClient;

namespace psbizsuite.Controllers
{
    public class PayrollController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        public ActionResult Calculate()
        {

            //use raw SQL query
            //alias or column name must match property name in the specified class. In this case is CalculatePayrollViewModel
            var model = db.Database.SqlQuery<CalculatePayrollViewModel>("SELECT Employee_UserAccount_Username as name, SEC_TO_TIME(Sum(TIME_TO_SEC(TIMEDIFF(ClockOutTime,ClockInTime)))) as totalHours FROM Attendance GROUP BY Employee_UserAccount_Username").ToList();

            return View(model);
        }

        //
        // GET: /Payroll/Details/5

        public ActionResult Details(int id = 0)
        {
            PayrollRequest payrollrequest = db.PayrollRequests.Find(id);
            if (payrollrequest == null)
            {
                return HttpNotFound();
            }
            return View(payrollrequest);
        }

        //
        // GET: /Payroll/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Payroll/Create

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create(PayrollRequest payrollrequest)
        {
            if (ModelState.IsValid)
            {
                db.PayrollRequests.Add(payrollrequest);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(payrollrequest);
        }

        //
        // GET: /Payroll/Edit/5

        public ActionResult Edit(int id = 0)
        {
            PayrollRequest payrollrequest = db.PayrollRequests.Find(id);
            if (payrollrequest == null)
            {
                return HttpNotFound();
            }
            return View(payrollrequest);
        }

        //
        // POST: /Payroll/Edit/5

        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit(PayrollRequest payrollrequest)
        {
            if (ModelState.IsValid)
            {
                db.Entry(payrollrequest).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(payrollrequest);
        }

        //
        // GET: /Payroll/Delete/5

        public ActionResult Delete(int id = 0)
        {
            PayrollRequest payrollrequest = db.PayrollRequests.Find(id);
            if (payrollrequest == null)
            {
                return HttpNotFound();
            }
            return View(payrollrequest);
        }

        //
        // POST: /Payroll/Delete/5

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            PayrollRequest payrollrequest = db.PayrollRequests.Find(id);
            db.PayrollRequests.Remove(payrollrequest);
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