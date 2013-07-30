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
    public class SupportTicketController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /SupportTicket/

        public ActionResult Index()
        {
            if (User.IsInRole("Sale"))
            {
                var supporttickets = db.SupportTickets.Include(s => s.Customer).Include(s => s.Employee).Include(s => s.SupportTicket2);
                return View(supporttickets.ToList());
            }
            if (User.IsInRole("Customer"))
            {
                var username = User.Identity.Name;
                var supporttickets = db.SupportTickets.Where(s => s.Customer_UserAccount_Username == username).Include(s => s.Customer).Include(s => s.Employee).Include(s => s.SupportTicket2);
                return View(supporttickets.ToList());
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // GET: /SupportTicket/Details/5

        public ActionResult Details(int id = 0)
        {
            //if (User.IsInRole("Sale") || User.IsInRole("Customer"))
            {
                SupportTicket supportticket = db.SupportTickets.Find(id);
                if (supportticket == null)
                {
                    return HttpNotFound();
                }
                return View(supportticket);
            }
            //else
            //{
            //    return HttpNotFound("Unauthorized access");
            //}
        }

        //
        // GET: /SupportTicket/Create

        public ActionResult Create()
        {
            if (User.IsInRole("Customer"))
            {
                ViewBag.Customer_UserAccount_Username = new SelectList(db.Customers, "UserAccount_Username", "FullName");
                ViewBag.Employee_UserAccount_Username = new SelectList(db.Employees, "UserAccount_Username", "FullName");
                ViewBag.ReferenceId = new SelectList(db.SupportTickets, "SupportTicketId", "Details");
                return View();
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // POST: /SupportTicket/Create

        [HttpPost]
        public ActionResult Create(SupportTicket supportticket)
        {
            if (User.IsInRole("Customer"))
            {
                if (ModelState.IsValid)
                {

                    supportticket.Customer_UserAccount_Username = User.Identity.Name;
                    db.SupportTickets.Add(supportticket);
                    db.SaveChanges();
                    EmailController e = new EmailController();
                    e.submitEmail(supportticket.SupportTicketId, supportticket.Customer_UserAccount_Username, supportticket.EnquiryType, supportticket.EnquiryPriority, supportticket.Details);
                    TempData["errorMsg"] = ""; 
                    return RedirectToAction("Details/" + User.Identity.Name, "Customer");
                }

                ViewBag.Customer_UserAccount_Username = new SelectList(db.Customers, "UserAccount_Username", "FullName", supportticket.Customer_UserAccount_Username);
                ViewBag.Employee_UserAccount_Username = new SelectList(db.Employees, "UserAccount_Username", "FullName", supportticket.Employee_UserAccount_Username);
                ViewBag.ReferenceId = new SelectList(db.SupportTickets, "SupportTicketId", "EnquiryType", supportticket.ReferenceId);
                TempData["errorMsg"] = "Send failed. Please enter all details and resend your enquiry."; 
                return View(supportticket);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // GET: /SupportTicket/Edit/5

        public ActionResult Edit(int id = 0)
        {
            if (User.IsInRole("Sale"))
            {
                SupportTicket supportticket = db.SupportTickets.Find(id);
                if (supportticket == null)
                {
                    return HttpNotFound();
                }
                ViewBag.Customer_UserAccount_Username = new SelectList(db.Customers, "UserAccount_Username", "FullName", supportticket.Customer_UserAccount_Username);
                ViewBag.Employee_UserAccount_Username = new SelectList(db.Employees, "UserAccount_Username", "FullName", supportticket.Employee_UserAccount_Username);
                ViewBag.ReferenceId = new SelectList(db.SupportTickets, "SupportTicketId", "EnquiryType", supportticket.ReferenceId);
                return View(supportticket);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // POST: /SupportTicket/Edit/5

        [HttpPost]
        public ActionResult Edit(SupportTicket supportticket)
        {
            if (User.IsInRole("Sale"))
            {
                if (ModelState.IsValid)
                {
                    supportticket.Employee_UserAccount_Username = User.Identity.Name;
                    db.Entry(supportticket).State = EntityState.Modified;

                    db.SaveChanges();
                    EmailController e = new EmailController();
                    int count = 10;
                    e.submitEmail(supportticket.SupportTicketId, supportticket.Customer_UserAccount_Username, supportticket.EnquiryType, supportticket.EnquiryPriority, supportticket.Details, supportticket.Reply, supportticket.Employee_UserAccount_Username, count);
                    TempData["errorMsg"] = ""; 
                    return RedirectToAction("Index");
                }
                // ViewBag.Customer_UserAccount_Username = new SelectList(db.Customers, "UserAccount_Username", "FullName", supportticket.Customer_UserAccount_Username);
                // ViewBag.Employee_UserAccount_Username = new SelectList(db.Employees, "UserAccount_Username", "FullName", supportticket.Employee_UserAccount_Username);
                // ViewBag.ReferenceId = new SelectList(db.SupportTickets, "SupportTicketId", "EnquiryType", supportticket.ReferenceId);
                TempData["errorMsg"] = "Reply failed. Please enter all details and attempt again."; 
                return View(supportticket);
            }
            else 
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // GET: /SupportTicket/Delete/5

        public ActionResult Delete(int id = 0)
        {
            if (User.IsInRole("Sale"))
            {
                SupportTicket supportticket = db.SupportTickets.Find(id);
                if (supportticket == null)
                {
                    return HttpNotFound();
                }
                return View(supportticket);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // POST: /SupportTicket/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            if (User.IsInRole("Sale"))
            {
                SupportTicket supportticket = db.SupportTickets.Find(id);
                db.SupportTickets.Remove(supportticket);
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