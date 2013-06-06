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
            var supporttickets = db.SupportTickets.Include(s => s.Customer).Include(s => s.Employee).Include(s => s.SupportTicket2);
            return View(supporttickets.ToList());
        }

        //
        // GET: /SupportTicket/Details/5

        public ActionResult Details(int id = 0)
        {
            SupportTicket supportticket = db.SupportTickets.Find(id);
            if (supportticket == null)
            {
                return HttpNotFound();
            }
            return View(supportticket);
        }

        //
        // GET: /SupportTicket/Create

        public ActionResult Create()
        {
            ViewBag.Customer_UserAccount_Username = new SelectList(db.Customers, "UserAccount_Username", "FullName");
            ViewBag.Employee_UserAccount_Username = new SelectList(db.Employees, "UserAccount_Username", "FullName");
            ViewBag.ReferenceId = new SelectList(db.SupportTickets, "SupportTicketId", "SupportTicketId");
            return View();
        }

        //
        // POST: /SupportTicket/Create

        [HttpPost]
        public ActionResult Create(SupportTicket supportticket)
        {
            if (ModelState.IsValid)
            {
                
                supportticket.Customer_UserAccount_Username = "jaack";
                db.SupportTickets.Add(supportticket);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Customer_UserAccount_Username = new SelectList(db.Customers, "UserAccount_Username", "FullName", supportticket.Customer_UserAccount_Username);
            ViewBag.Employee_UserAccount_Username = new SelectList(db.Employees, "UserAccount_Username", "FullName", supportticket.Employee_UserAccount_Username);
            ViewBag.ReferenceId = new SelectList(db.SupportTickets, "SupportTicketId", "EnquiryType", supportticket.ReferenceId);
            return View(supportticket);
        }

        //
        // GET: /SupportTicket/Edit/5

        public ActionResult Edit(int id = 0)
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

        //
        // POST: /SupportTicket/Edit/5

        [HttpPost]
        public ActionResult Edit(SupportTicket supportticket)
        {
            if (ModelState.IsValid)
            {
                db.Entry(supportticket).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Customer_UserAccount_Username = new SelectList(db.Customers, "UserAccount_Username", "FullName", supportticket.Customer_UserAccount_Username);
            ViewBag.Employee_UserAccount_Username = new SelectList(db.Employees, "UserAccount_Username", "FullName", supportticket.Employee_UserAccount_Username);
            ViewBag.ReferenceId = new SelectList(db.SupportTickets, "SupportTicketId", "EnquiryType", supportticket.ReferenceId);
            return View(supportticket);
        }

        //
        // GET: /SupportTicket/Delete/5

        public ActionResult Delete(int id = 0)
        {
            SupportTicket supportticket = db.SupportTickets.Find(id);
            if (supportticket == null)
            {
                return HttpNotFound();
            }
            return View(supportticket);
        }

        //
        // POST: /SupportTicket/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            SupportTicket supportticket = db.SupportTickets.Find(id);
            db.SupportTickets.Remove(supportticket);
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