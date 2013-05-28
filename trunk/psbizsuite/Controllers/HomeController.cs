﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using psbizsuite.Models;

namespace psbizsuite.Controllers
{
    public class HomeController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /Home/

        public ActionResult Index()
        {
            return View(db.UserAccounts.ToList());
        }

        //
        // GET: /Home/Details/5

        public ActionResult Details(string id = null)
        {
            UserAccount useraccount = db.UserAccounts.Find(id);
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