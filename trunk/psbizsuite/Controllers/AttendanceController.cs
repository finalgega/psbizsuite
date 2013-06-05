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
    public class AttendanceController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /Attendance/

        public ActionResult Index()
        {
            var attendances = db.Attendances.Include(a => a.Employee);
            
            return View(attendances.ToList());
        }

        //
        // GET: /Attendance/Details/5

        public ActionResult Details(int id = 0)
        {
            Attendance attendance = db.Attendances.Find(id);
            if (attendance == null)
            {
                return HttpNotFound();
            }
            return View(attendance);
        }

        //
        // GET: /Attendance/Create

        public ActionResult Create()
        {
            ViewBag.Employee_UserAccount_Username = new SelectList(db.Employees, "UserAccount_Username", "FullName");
            return View();
        }

        //
        // POST: /Attendance/Create

        [HttpPost]
        public ActionResult Create(Attendance attendance)
        {
            if (ModelState.IsValid)
            {
                db.Attendances.Add(attendance);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Employee_UserAccount_Username = new SelectList(db.Employees, "UserAccount_Username", "FullName", attendance.Employee_UserAccount_Username);
            return View(attendance);
        }

        //
        // GET: /Attendance/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Attendance attendance = db.Attendances.Find(id);
            if (attendance == null)
            {
                return HttpNotFound();
            }
            ViewBag.Employee_UserAccount_Username = new SelectList(db.Employees, "UserAccount_Username", "FullName", attendance.Employee_UserAccount_Username);
            return View(attendance);
        }

        //
        // POST: /Attendance/Edit/5

        [HttpPost]
        public ActionResult Edit(Attendance attendance)
        {
            if (ModelState.IsValid)
            {
                db.Entry(attendance).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Employee_UserAccount_Username = new SelectList(db.Employees, "UserAccount_Username", "FullName", attendance.Employee_UserAccount_Username);
            return View(attendance);
        }

        //
        // GET: /Attendance/Delete/5

        public ActionResult Delete(int id = 0)
        {
            Attendance attendance = db.Attendances.Find(id);
            if (attendance == null)
            {
                return HttpNotFound();
            }
            return View(attendance);
        }

        //
        // POST: /Attendance/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Attendance attendance = db.Attendances.Find(id);
            db.Attendances.Remove(attendance);
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