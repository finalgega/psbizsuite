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
    public class EmployeeController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /Employee/

        public ActionResult Index()
        {
            var employees = db.Employees.Include(e => e.EmployeePosition).Include(e => e.UserAccount);
            return View(employees.ToList());
        }

        //
        // GET: /Employee/Details/5

        public ActionResult Details(string id = null)
        {
            Employee employee = db.Employees.Find(id);
            if (employee == null)
            {
                return HttpNotFound();
            }
            return View(employee);
        }

        //
        // GET: /Employee/Create

        public ActionResult Create()
        {
            ViewBag.EmployeePosition_PositionName = new SelectList(db.EmployeePositions, "PositionName", "PositionName");
            return View();
        }

        //
        // POST: /Employee/Create

        [HttpPost]
        public ActionResult Create(Employee employee)
        {
            
            if (ModelState.IsValid)
            {
                UserAccount employeeAcc = new UserAccount();
                employeeAcc.Username = employee.UserAccount_Username;
                employeeAcc.Password = employee.NRIC;
                employeeAcc.Type = "Employee";
                employeeAcc.Salt = "null";

                db.UserAccounts.Add(employeeAcc);

                db.Employees.Add(employee);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
   

            ViewBag.EmployeePosition_PositionName = new SelectList(db.EmployeePositions, "PositionName", "PositionName", employee.EmployeePosition_PositionName);
            ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Username", employee.UserAccount_Username);
            return View(employee);
        }

        //
        // GET: /Employee/Edit/5

        public ActionResult Edit(string id = null)
        {
            Employee employee = db.Employees.Find(id);
            if (employee == null)
            {
                return HttpNotFound();
            }
            ViewBag.EmployeePosition_PositionName = new SelectList(db.EmployeePositions, "PositionName", "PositionName", employee.EmployeePosition_PositionName);
            ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Username", employee.UserAccount_Username);
            return View(employee);
        }

        //
        // POST: /Employee/Edit/5

        [HttpPost]
        public ActionResult Edit(Employee employee)
        {
            if (ModelState.IsValid)
            {
                db.Entry(employee).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.EmployeePosition_PositionName = new SelectList(db.EmployeePositions, "PositionName", "PositionName", employee.EmployeePosition_PositionName);
            ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Username", employee.UserAccount_Username);
            return View(employee);
        }

        //
        // GET: /Employee/Delete/5

        public ActionResult Delete(string id)
        {
            Employee employee = db.Employees.Find(id);
            UserAccount employeeAcc = db.UserAccounts.Find(id);
            db.Employees.Remove(employee);
            db.UserAccounts.Remove(employeeAcc);
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