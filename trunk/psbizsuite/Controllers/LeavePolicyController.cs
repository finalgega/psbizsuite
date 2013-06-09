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
    public class LeavePolicyController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /LeavePolicy/

        public ActionResult Index()
        {
            return View(db.LeavePolicies.ToList());
        }

        //
        // GET: /LeavePolicy/Details/5

        public ActionResult Details(int id = 0)
        {
            LeavePolicy leavepolicy = db.LeavePolicies.Find(id);
            if (leavepolicy == null)
            {
                return HttpNotFound();
            }
            return View(leavepolicy);
        }

        //
        // GET: /LeavePolicy/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /LeavePolicy/Create
        //exclude id from checking in ModelState.IsValid as LeavePolicyId is autoincremented in db
        [HttpPost]
        public ActionResult Create([Bind(Exclude = "LeavePolicyId")]LeavePolicy leavepolicy)
        {
            var errors = ModelState.Values.SelectMany(v => v.Errors);
            if (ModelState.IsValid)
            {
                db.LeavePolicies.Add(leavepolicy);
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
                return RedirectToAction("Index");
            }

            return View(leavepolicy);
        }

        //
        // GET: /LeavePolicy/Edit/5

        public ActionResult Edit(int id = 0)
        {
            LeavePolicy leavepolicy = db.LeavePolicies.Find(id);
            if (leavepolicy == null)
            {
                return HttpNotFound();
            }
            return View(leavepolicy);
        }

        //
        // POST: /LeavePolicy/Edit/5

        [HttpPost]
        public ActionResult Edit(LeavePolicy leavepolicy)
        {
            if (ModelState.IsValid)
            {
                db.Entry(leavepolicy).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View(leavepolicy);
        }

        //
        // GET: /LeavePolicy/Delete/5

        public ActionResult Delete(int id)
        {
            LeavePolicy leavepolicy = db.LeavePolicies.Find(id);
            db.LeavePolicies.Remove(leavepolicy);
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