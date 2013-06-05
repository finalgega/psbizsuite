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
                //add employee useraccount into userAccount database
                //username is fullname without space
                //password is NRIC
                UserAccount employeeAcc = new UserAccount();
                employeeAcc.Username = employee.UserAccount_Username;
                employeeAcc.Password = employee.NRIC;
                employeeAcc.Type = "Employee";
                db.UserAccounts.Add(employeeAcc);

                //add employee profile into employee database
                db.Employees.Add(employee);

                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.EmployeePosition_PositionName = new SelectList(db.EmployeePositions, "PositionName", "PositionName");
   
            return View(employee);
        }

        //
        // GET: /Employee/Edit/5

        public ActionResult Edit(string id)
        {
            Employee employee = db.Employees.Find(id);
            if (employee == null)
            {
                return HttpNotFound();
            }
            ViewBag.EmployeePosition_PositionName = new SelectList(db.EmployeePositions, "PositionName", "Responsibility", employee.EmployeePosition_PositionName);
            ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Password", employee.UserAccount_Username);
            return View(employee);
        }

        //
        // POST: /Employee/Edit/5

        [HttpPost]
        public ActionResult Edit(Employee employee)
        {
            if (ModelState.IsValid)
            {
                employee.UserAccount_Username = employee.FullName.Replace(" ", string.Empty);
                db.Entry(employee).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.EmployeePosition_PositionName = new SelectList(db.EmployeePositions, "PositionName", "PositionName", employee.EmployeePosition_PositionName);
            return View(employee);
        }

       

        //
        // GET: /Employee/Delete/5

        public ActionResult Delete(string id)
        {
            Employee employee = db.Employees.Find(id);
            db.Employees.Remove(employee);
            UserAccount employeeAcc = db.UserAccounts.Find(employee.UserAccount_Username);
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