using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using psbizsuite.Models;
using psbizsuite.Models.Utilities;

namespace psbizsuite.Controllers
{
    public class EmployeeController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /Employee/
        [Authorize]
        public ActionResult Index()
        {
            if (User.IsInRole("HR Manager"))
            {
                var employees = db.Employees.Include(e => e.EmployeePosition).Include(e => e.UserAccount);
                TempData["notice"] = null;
                return View(employees.ToList());
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
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
        //[Authorize]
        public ActionResult Create()
        {
            //if (User.IsInRole("HR Manager"))
            //{
                ViewBag.EmployeePosition_PositionName = new SelectList(db.EmployeePositions, "PositionName", "PositionName");
                return View();
            //}
            //else
            //{
            //    return HttpNotFound("Unauthorized access");
            //}

        }

        //
        // POST: /Employee/Create
        //[Authorize]
        [HttpPost]
        public ActionResult Create(Employee employee)
        {
            if (User.IsInRole("HR Manager"))
            {
                if (ModelState.IsValid)
                {
                    //create employee account
                    UserAccount employeeAcc = new UserAccount();
                    employeeAcc.Username = employee.UserAccount_Username;
                    employeeAcc.Password = employee.UserAccount_Username;
                    employeeAcc.Type = "Employee";

                    //generate salt and hashed password
                    string hashData = Encryption.CreatePasswordHash(employeeAcc.Password);
                    char[] delimiter = { ':' };
                    string[] split = hashData.Split(delimiter);
                    string salt = split[Encryption.SALT_INDEX];
                    string hash = split[Encryption.PBKDF2_INDEX];
                    employeeAcc.Salt = salt;
                    employeeAcc.Password = hash;

                    //add employeAcc to UserAccount table
                    db.UserAccounts.Add(employeeAcc);

                    //add employee to Employee table
                    db.Employees.Add(employee);

                    //save db query
                    db.SaveChanges();

                    TempData["notice"] = "Created successfully ";

                    //return to index page
                    return View("Index", db.Employees.Include(e => e.EmployeePosition).Include(e => e.UserAccount).ToList());
                }
                else
                {
                    ViewBag.EmployeePosition_PositionName = new SelectList(db.EmployeePositions, "PositionName", "PositionName", employee.EmployeePosition_PositionName);
                    ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Username", employee.UserAccount_Username);
                    return View(employee);
                }
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        

        //
        // GET: /Employee/Edit/5
        [Authorize]
        public ActionResult Edit(string id)
        {
            Employee employee = db.Employees.Find(id);
            if (employee == null)
            {
                return HttpNotFound();
            }

            if (User.IsInRole("HR Manager") || User.Identity.Name == employee.UserAccount_Username)
            {
                ViewBag.EmployeePosition_PositionName = new SelectList(db.EmployeePositions, "PositionName", "PositionName", employee.EmployeePosition_PositionName);
                ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Username", employee.UserAccount_Username);
                return View(employee);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // POST: /Employee/Edit/5
        [Authorize]
        [HttpPost]
        public ActionResult Edit(Employee employee)
        {
            if (ModelState.IsValid)
            {
                //db.Entry(employee).CurrentValues.SetValues(employee);
                db.Entry(employee).State = EntityState.Modified;
                db.SaveChanges();

                TempData["notice"] = "Edited successfully ";

                //return to index page
                return View("Index", db.Employees.Include(e => e.EmployeePosition).Include(e => e.UserAccount).ToList());
            }
            ViewBag.EmployeePosition_PositionName = new SelectList(db.EmployeePositions, "PositionName", "PositionName", employee.EmployeePosition_PositionName);
            ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Username", employee.UserAccount_Username);
            return View(employee);
        }

        //
        // GET: /Employee/Delete/5
        [Authorize]
        public ActionResult Delete(string id)
        {
            if (User.IsInRole("HR Manager"))
            {
                Employee employee = db.Employees.Find(id);
                UserAccount employeeAcc = db.UserAccounts.Find(id);
                db.Employees.Remove(employee);
                db.UserAccounts.Remove(employeeAcc);
                db.SaveChanges();
                TempData["notice"] = "Deleted successfully ";

                //return to index page
                return View("Index", db.Employees.Include(e => e.EmployeePosition).Include(e => e.UserAccount).ToList());
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        [Authorize]
        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}