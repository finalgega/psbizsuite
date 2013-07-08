using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using psbizsuite.Models;
using psbizsuite.Models.AccessControl;
using System.Web.Routing;
using System.Web.Security;

namespace psbizsuite.Controllers
{
    public class HomeController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        public BizsuiteMembershipProvider MembershipService { get; set; }
        public BizsuiteRoleProvider AuthorizationService { get; set; }

        protected override void Initialize(RequestContext requestContext)
        {
            if (MembershipService == null)
                MembershipService = new BizsuiteMembershipProvider();
            if (AuthorizationService == null)
                AuthorizationService = new BizsuiteRoleProvider();

            base.Initialize(requestContext);
        }
        //
        // GET: /Home/

        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(string username, string password)
        {
            if (ModelState.IsValid)
            {
                if (MembershipService.ValidateUser(username, password))
                {
                    FormsAuthentication.SetAuthCookie(username, false);

                    EmailController em = new EmailController();
                    em.createAndEmailOTP(username);

                    UserAccount user = db.UserAccounts.Find(username);

                    if (user.Type == "Employee")
                    {
                        Employee employee = db.Employees.Find(username);
                        if (employee.EmployeePosition_PositionName == "HR Manager")
                        {
                            return RedirectToAction("Index", "Employee");
                        }
                        if (employee.EmployeePosition_PositionName == "Sale")
                        {
                            return RedirectToAction("Index", "Order");
                        }
                        if (employee.EmployeePosition_PositionName == "Logistic")
                        {
                            return RedirectToAction("Index", "Inventory");
                        }
                        if (employee.EmployeePosition_PositionName == "Accountant")
                        {
                            //return RedirectToAction("Index", "Employee");
                        }
                    }
                    else
                    {   //redirect to customer page
                       //return RedirectToAction("Index", "Employee"); 
                    }

                }
                else
                {
                    ModelState.AddModelError("", "The user name or password provided is incorrect.");
                }
            }

            // If we got this far, something failed, redisplay form
            return View("Index");
        }



        //
        // GET: /Home/Details/5

        public ActionResult Details(string username)
        {
            UserAccount useraccount = db.UserAccounts.Find(username);
            if (useraccount == null)
            {
                return HttpNotFound();
            }
            return View(useraccount);
        }

        //
        // GET: /Home/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /Home/Create

        [HttpPost]
        public ActionResult Create(UserAccount useraccount)
        {
            if (ModelState.IsValid)
            {
                db.UserAccounts.Add(useraccount);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            return View(useraccount);
        }

        //
        // GET: /Home/Edit/5

        public ActionResult Edit(string id = null)
        {
            UserAccount useraccount = db.UserAccounts.Find(id);
            if (useraccount == null)
            {
                return HttpNotFound();
            }
            return View(useraccount);
        }

        //
        // POST: /Home/Edit/5

        [HttpPost]
        public ActionResult Edit(UserAccount useraccount)
        {
            if (ModelState.IsValid)
            {
                db.Entry(useraccount).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(useraccount);
        }

        //
        // GET: /Home/Delete/5

        public ActionResult Delete(string id = null)
        {
            UserAccount useraccount = db.UserAccounts.Find(id);
            if (useraccount == null)
            {
                return HttpNotFound();
            }
            return View(useraccount);
        }

        //
        // POST: /Home/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(string id)
        {
            UserAccount useraccount = db.UserAccounts.Find(id);
            db.UserAccounts.Remove(useraccount);
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