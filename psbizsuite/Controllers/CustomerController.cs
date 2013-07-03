﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;
using psbizsuite.Models;

namespace psbizsuite.Controllers
{
    public class CustomerController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /Customer/

        public ActionResult Index()
        {
            var customers = db.Customers.Include(c => c.UserAccount);
            return View(customers.ToList());
        }

        //
        // GET: /Customer/Details/5

        public ActionResult Details(string id = null)
        {
            Customer customer = db.Customers.Find(id);
            if (customer == null)
            {
                return HttpNotFound();
            }
            return View(customer);
        }

        //
        // GET: /Customer/Create

        public ActionResult Create()
        {
            ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Password");
            return View();
        }

        //
        // POST: /Customer/Create

        [HttpPost]
        public ActionResult Create(Customer customer)
        {
            /*if (customer.FullName==null)
            {
                ModelState.AddModelError("FullName", "Full Name is required.");
            }
            if (customer.UserAccount_Username== null)
            {
                ModelState.AddModelError("UserAccount_Username", "Name is required.");
            }
            if (customer.Address ==null)
            {
                ModelState.AddModelError("Address", "Address is required.");
            }
            if (customer.PhoneNo.ToString().Length!=8)
            {
                ModelState.AddModelError("PhoneNo", "Phone Number must be 8 digits");
            }
            if (customer.FaxNo.ToString().Length != 8)
            {
                ModelState.AddModelError("FaxNo", "Fax Number must be 8 digits");
            }
            if (!Regex.IsMatch(customer.Email, @"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$"))
            {
                ModelState.AddModelError("Email", "Email format is invalid.");
            }
            if (!ModelState.IsValid)
            {
                return View("Create", customer);
            }*/


            if (ModelState.IsValid)
            {
                //add employee useraccount into userAccount database
                //username is fullname without space
                //password is NRIC
                UserAccount customerAcc = new UserAccount();
                customerAcc.Username = customer.UserAccount_Username;
                customerAcc.Password = customerAcc.Username;
                customerAcc.Salt = "lol";
                customerAcc.Type = "Customer";
                db.UserAccounts.Add(customerAcc);


                db.Customers.Add(customer);
                db.SaveChanges();
                
                //EmailController email = new EmailController();
                //bool ok =email.createAndEmailOTP();
                AuditLogController alc = new AuditLogController();
                alc.writeRecords();
                return RedirectToAction("Index");
                
            }

            ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Password", customer.UserAccount_Username);
            return View(customer);
        }

        //
        // GET: /Customer/Edit/5

        public ActionResult Edit(string id)
        {
            Customer customer = db.Customers.Find(id);
            if (customer == null)
            {
                return HttpNotFound();
            }
            ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Password", customer.UserAccount_Username);
            return View(customer);
        }

        //
        // POST: /Customer/Edit/5

        [HttpPost]
        public ActionResult Edit(Customer customer, string password)
        {
            if (ModelState.IsValid)
            {
                if (password != "")
                {
                    UserAccount customerAcc = new UserAccount();
                    customerAcc=db.UserAccounts.Find(customer.UserAccount_Username);
                    if (password == customerAcc.Password)
                    {
                        db.Entry(customer).State = EntityState.Modified;
                        db.SaveChanges();
                        return RedirectToAction("Index");
                    }
                }
                else { return View(customer); }
            }
            ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Password", customer.UserAccount_Username);
            return View("Edit", customer);
        }

        //
        // GET: /Customer/Delete/5

        public ActionResult Delete(string id = null)
        {
            Customer customer = db.Customers.Find(id);
            if (customer == null)
            {
                return HttpNotFound();
            }
            return View(customer);
        }

        //
        // POST: /Customer/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(string id)
        {
            Customer customer = db.Customers.Find(id);
            db.Customers.Remove(customer);
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