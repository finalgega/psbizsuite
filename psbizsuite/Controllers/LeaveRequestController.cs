using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using psbizsuite.Models;
using System.Data.Entity.Validation;
using System.Text;

namespace psbizsuite.Controllers
{
    public class LeaveRequestController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        /// <summary>
        /// This method retrieve all leave requests of all employees. This is for HR personnel to view leave requests
        /// </summary>
        public ActionResult AllList()
        {
            var leaverequests = db.LeaveRequests.Include(l => l.Employee).Include(l => l.leavepolicy);
            return View(leaverequests.ToList());
        }

        /// <summary>
        /// This method retrieve all leave requests of login employee. This is for every employee to views their OWN requests
        /// </summary>
        public ActionResult MyList()
        {
            var username = User.Identity.Name;
            var leaverequests = db.LeaveRequests.Where(l => l.Employee_UserAccount_Username == username).Include(l => l.Employee).Include(l => l.leavepolicy);
            return View(leaverequests.ToList());
        }

        /// <summary>
        /// This method redirects to Apply Leave View. It retrieve entitled leave policies based on year of service. This is for every employees
        /// </summary>
        public ActionResult Create()
        {
            // get entitled leave policies based on year of service in the company
            var username = User.Identity.Name;
            Employee employee = db.Employees.Find(username);
            TimeSpan serviceYear = DateTime.Today - employee.StartEmploymentDate;
            double serviceYearInDouble = Math.Abs(serviceYear.TotalHours / 365);
            IEnumerable<LeavePolicy> entitledLeavePolicies = db.LeavePolicies.Where(l => l.MinServiceYear <= serviceYearInDouble);
            if (entitledLeavePolicies.Count() <= 0)
            {
                return HttpNotFound("You cannot apply leave");
            }

            ViewBag.Employee_UserAccount_Username = new SelectList(db.Employees, "UserAccount_Username", "UserAccount_Username");
            ViewBag.LeavePolicy_LeavePolicyId = new SelectList(entitledLeavePolicies, "LeavePolicyId", "PolicyName");
            return View();
        }

        /// <summary>
        /// This method insert a leave request record. This is for every employees
        /// </summary>
        /// <param name="leaverequest">leaveRequest object</param>
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Exclude = "LeaveRequestId")]LeaveRequest leaverequest)
        {
            if (ModelState.IsValid)
            {
                //get currently login username
                var name = User.Identity.Name;

                #region condition 1 - check if start date is later than end date
                if (leaverequest.StartDate > leaverequest.EndDate)
                {
                    TempData["message"] = "Start date has to be ealier or equal to end date";

                    //repopulate the dropdown list (This is a must)
                    ViewBag.LeavePolicy_LeavePolicyId = new SelectList(db.LeavePolicies, "LeavePolicyId", "PolicyName", leaverequest.LeavePolicy_LeavePolicyId);
                    return View(leaverequest);
                }
                #endregion

                #region condition 2 - check if the leave request has exceed or equal total number of leaves
                //get leaves of this year that has the same leavepolicyid
                IEnumerable<LeaveRequest> leaveRequests = db.LeaveRequests.Where(l => l.Employee_UserAccount_Username == name);
                //get total number of leaves of the leavepolicyid
                int id = leaverequest.LeavePolicy_LeavePolicyId;
                int noLeave = (db.LeavePolicies.Where(l => l.LeavePolicyId == id).Select(l => l.DaysOfLeave)).First();

                //check if the leave request has exceed or equal total number of leaves
                if (leaveRequests.Count() >= noLeave)
                {
                    TempData["message"] = "You have used up all availble leaves for the selected leave type";

                    //repopulate the dropdown list (This is a must)
                    ViewBag.LeavePolicy_LeavePolicyId = new SelectList(db.LeavePolicies, "LeavePolicyId", "PolicyName", leaverequest.LeavePolicy_LeavePolicyId);
                    return View(leaverequest);
                }
                #endregion

                #region pass the condition check 1,2
                //allow to create leave request
                leaverequest.Employee_UserAccount_Username = name;
                leaverequest.Status = "Pending";
                db.LeaveRequests.Add(leaverequest);
                try
                {
                    db.SaveChanges();
                }
                catch (DbEntityValidationException ex)
                {
                    StringBuilder sb = new StringBuilder();

                    foreach (var failure in ex.EntityValidationErrors)
                    {
                        sb.AppendFormat("{0} failed validation\n", failure.Entry.Entity.GetType());
                        foreach (var error in failure.ValidationErrors)
                        {
                            sb.AppendFormat("- {0} : {1}", error.PropertyName, error.ErrorMessage);
                            sb.AppendLine();
                        }
                    }

                    throw new DbEntityValidationException(
                        "Entity Validation Failed - errors follow:\n" +
                        sb.ToString(), ex
                    ); // Add the original exception as the innerException
                }
                return RedirectToAction("AllList");
                #endregion

            }
            ViewBag.Employee_UserAccount_Username = new SelectList(db.Employees, "UserAccount_Username", "UserAccount_Username", leaverequest.Employee_UserAccount_Username);
            ViewBag.LeavePolicy_LeavePolicyId = new SelectList(db.LeavePolicies, "LeavePolicyId", "PolicyName", leaverequest.LeavePolicy_LeavePolicyId);
            return View(leaverequest);
        }

        //
        // GET: /LeaveRequest/Approve
        public ActionResult Approve(int id)
        {
            LeaveRequest leaverequest = db.LeaveRequests.Find(id);
            if (leaverequest == null)
            {
                return HttpNotFound();
            }
            else
            {
                leaverequest.Status = "Approved";
                db.Entry(leaverequest).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("AllList");
            }
        }

        //
        // GET: /LeaveRequest/Approve
        public ActionResult NotApprove(int id)
        {
            LeaveRequest leaverequest = db.LeaveRequests.Find(id);
            if (leaverequest == null)
            {
                return HttpNotFound();
            }
            else
            {
                leaverequest.Status = "Not approved";
                db.Entry(leaverequest).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("AllList");
            }
        }

        //
        // GET: /LeaveRequest/Delete
        public ActionResult Delete(int id)
        {
            LeaveRequest leaverequest = db.LeaveRequests.Find(id);
            if (leaverequest.Status == "Pending")
            {
                db.LeaveRequests.Remove(leaverequest);
                db.SaveChanges();
                return RedirectToAction("MyList");
            }
            TempData["message"] = "Unable to delete";
            return RedirectToAction("MyList");
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}