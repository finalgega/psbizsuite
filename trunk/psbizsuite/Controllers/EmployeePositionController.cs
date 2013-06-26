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
        [Authorize]
        public ActionResult Index()
        {
            if (User.IsInRole("HR Manager"))
            {
                return View(db.EmployeePositions.ToList());
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }



        //
        // GET: /EmployeePosition/Create
        [Authorize]
        public ActionResult Create()
        {
            if (User.IsInRole("HR Manager"))
            {
                return View();
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }

        }

        //
        // POST: /EmployeePosition/Create
        [Authorize]
        [HttpPost]
        public ActionResult Create(EmployeePosition employeeposition)
        {
            if (User.IsInRole("HR Manager"))
            {
                if (ModelState.IsValid)
                {
                    db.EmployeePositions.Add(employeeposition);
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }

                return View(employeeposition);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }

        }

        //
        // GET: /EmployeePosition/Edit/5
        [Authorize]
        public ActionResult Edit(string id)
        {
            if (User.IsInRole("HR Manager"))
            {
                EmployeePosition employeeposition = db.EmployeePositions.Find(id);
                if (employeeposition == null)
                {
                    return HttpNotFound();
                }
                return View(employeeposition);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // POST: /EmployeePosition/Edit/5
        [Authorize]
        [HttpPost]
        public ActionResult Edit(EmployeePosition employeeposition)
        {
            if (User.IsInRole("HR Manager"))
            {
                if (ModelState.IsValid)
                {
                    db.Entry(employeeposition).State = EntityState.Modified;
                    db.SaveChanges();
                    return RedirectToAction("Index");
                }
                return View(employeeposition);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }

        }

        //
        // GET: /EmployeePosition/Delete/5
        [Authorize]
        public ActionResult Delete(string id = null)
        {
            if (User.IsInRole("HR Manager"))
            {
                EmployeePosition employeeposition = db.EmployeePositions.Find(id);
                if (employeeposition == null)
                {
                    return HttpNotFound();
                }
                return View(employeeposition);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }

        }

        //
        // POST: /EmployeePosition/Delete/5
        [Authorize]
        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(string id)
        {
            if (User.IsInRole("HR Manager"))
            {
                EmployeePosition employeeposition = db.EmployeePositions.Find(id);
                db.EmployeePositions.Remove(employeeposition);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }

        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}