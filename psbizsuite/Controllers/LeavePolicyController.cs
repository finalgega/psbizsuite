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
        [Authorize]
        public ActionResult Index()
        {
            if (User.IsInRole("HR Manager"))
            {
                return View(db.LeavePolicies.ToList());
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // GET: /LeavePolicy/Details/5
        [Authorize]
        public ActionResult Details(int id = 0)
        {
            if (User.IsInRole("HR Manager"))
            {
                LeavePolicy leavepolicy = db.LeavePolicies.Find(id);
                if (leavepolicy == null)
                {
                    return HttpNotFound();
                }
                return View(leavepolicy);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
           
        }

        //
        // GET: /LeavePolicy/Create

        public ActionResult Create()
        {
            if (User.IsInRole("HR Manager"))
            {
                return View();
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // POST: /LeavePolicy/Create
        //exclude id from checking in ModelState.IsValid as LeavePolicyId is autoincremented in db
        [Authorize]
        [HttpPost]
        public ActionResult Create([Bind(Exclude = "LeavePolicyId")]LeavePolicy leavepolicy)
        {
            if (User.IsInRole("HR Manager"))
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
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // GET: /LeavePolicy/Edit/5
        [Authorize]
        public ActionResult Edit(int id = 0)
        {
            if (User.IsInRole("HR Manager"))
            {
                LeavePolicy leavepolicy = db.LeavePolicies.Find(id);
                if (leavepolicy == null)
                {
                    return HttpNotFound();
                }
                return View(leavepolicy);
            }
            else
            {
                return HttpNotFound("Unauthorized Access");
            }
        }

        //
        // POST: /LeavePolicy/Edit/5
        [Authorize]
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
        [Authorize]
        public ActionResult Delete(int id)
        {
            if (User.IsInRole("HR Manager"))
            {
                LeavePolicy leavepolicy = db.LeavePolicies.Find(id);
                db.LeavePolicies.Remove(leavepolicy);
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