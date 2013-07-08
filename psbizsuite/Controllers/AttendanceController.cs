﻿using System;
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
            if (User.IsInRole("HR Manager"))
            {
                var attendances = db.Attendances.Include(a => a.Employee);

                return View(attendances.ToList());
            }
            else
            {
                return HttpNotFound("Unauthorized accessed");
            }
        }

        //
        // GET: /Attendance/Details/5

        public ActionResult Details(int id = 0)
        {
            if (User.IsInRole("HR Manager"))
            {
                Attendance attendance = db.Attendances.Find(id);
                if (attendance == null)
                {
                    return HttpNotFound();
                }
                return View(attendance);
            }
            else
            {
                return HttpNotFound("Unauthorized accessed");
            }
         
        }

        //
        // GET: /Attendance/Delete/5

        public ActionResult Delete(int id = 0)
        {
            if (User.IsInRole("HR Manager"))
            {

                Attendance attendance = db.Attendances.Find(id);
                if (attendance == null)
                {
                    return HttpNotFound();
                }
                return View(attendance);
            }
            else
            {
                return HttpNotFound("Unauthorized accessed");
            }

        }

        //
        // POST: /Attendance/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            if (User.IsInRole("HR Manager"))
            {
                Attendance attendance = db.Attendances.Find(id);
                db.Attendances.Remove(attendance);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            else
            {
                return HttpNotFound("Unauthorized accessed");
            }
     
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}