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
    public class EmployeePositionController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /EmployeePosition/

        public ActionResult Index()
        {
            return View(db.EmployeePositions.ToList());
        }

        //
        // GET: /EmployeePosition/Details/5

        public ActionResult Details(string id = null)
        {
            EmployeePosition employeeposition = db.EmployeePositions.Find(id);
            if (employeeposition == null)
            {
                return HttpNotFound();
            }
            return View(employeeposition);
        }

        //
        // GET: /EmployeePosition/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /EmployeePosition/Create

        [HttpPost]
        public ActionResult Create(EmployeePosition employeeposition)
        {
            if (ModelState.IsValid)
            {
                db.EmployeePositions.Add(employeeposition);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(employeeposition);
        }

        //
        // GET: /EmployeePosition/Edit/5

        public ActionResult Edit(string id = null)
        {
            EmployeePosition employeeposition = db.EmployeePositions.Find(id);
            if (employeeposition == null)
            {
                return HttpNotFound();
            }
            return View(employeeposition);
        }

        //
        // POST: /EmployeePosition/Edit/5

        [HttpPost]
        public ActionResult Edit(EmployeePosition employeeposition)
        {
            if (ModelState.IsValid)
            {
                db.Entry(employeeposition).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(employeeposition);
        }

        //
        // GET: /EmployeePosition/Delete/5

        public ActionResult Delete(string id = null)
        {
            EmployeePosition employeeposition = db.EmployeePositions.Find(id);
            if (employeeposition == null)
            {
                return HttpNotFound();
            }
            return View(employeeposition);
        }

        //
        // POST: /EmployeePosition/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(string id)
        {
            EmployeePosition employeeposition = db.EmployeePositions.Find(id);
            db.EmployeePositions.Remove(employeeposition);
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