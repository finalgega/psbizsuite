using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Mvc;
using psbizsuite.Models;
using psbizsuite.Models.AccessControl;
using psbizsuite.Models.Utilities;

namespace psbizsuite.Controllers
{
    public class CustomerController : Controller
    {
        AuditLogController alc = new AuditLogController();
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /Customer/

        public ActionResult Index()
        {
            if (User.IsInRole("Sale"))
            {
                var customers = db.Customers.Include(c => c.UserAccount);
                
                alc.writeRecords(User.Identity.Name, "view all customer details", " ");
                return View(customers.ToList());
            }
            if (User.IsInRole("Customer"))
            {
                var username = User.Identity.Name;
                var customers = db.Customers.Where(c => c.UserAccount_Username == username).Include(c => c.UserAccount);
                
                alc.writeRecords(User.Identity.Name, "view his own customer details", " ");
                return View(customers.ToList());
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // GET: /Customer/Details/5

        public ActionResult Details(string id = null)
        {
            if (User.IsInRole("Sale") || User.IsInRole("Customer"))
            {
                Customer customer = db.Customers.Find(id);
                if (customer == null)
                {
                    return HttpNotFound();
                }
                return View(customer);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
           
        }

        //
        // GET: /Customer/Create

        public ActionResult Create()
        {

            if (User.IsInRole("Sale"))
            {
                ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Password");
                return View();
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
           
        }

        //
        // POST: /Customer/Create

        [HttpPost]
        public ActionResult Create(Customer customer)
        {
            AuditLogController alc = new AuditLogController();
            alc.writeRecords(User.Identity.Name, "create customer", customer.UserAccount_Username);
            
            if (User.IsInRole("Sale"))
            {
                if (ModelState.IsValid)
                {

                    UserAccount customerAcc = new UserAccount();
                    EncryptionController ec = new EncryptionController();
                    if (db.UserAccounts.Find(customer.UserAccount_Username) == null)
                    {//IS IT SOMETHING LIKE THIS?
                        customerAcc.Username = customer.UserAccount_Username;
                        customerAcc.Password = customerAcc.Username;
                        string hashData = Encryption.CreatePasswordHash(customerAcc.Password);
                        char[] delimiter = { ':' };
                        string[] split = hashData.Split(delimiter);
                        string salt = split[Encryption.SALT_INDEX];
                        string hash = split[Encryption.PBKDF2_INDEX];
                        customerAcc.Salt = salt;
                        customerAcc.Password = hash;

                        customerAcc.Type = "Customer";
                        db.UserAccounts.Add(customerAcc);


                        db.Customers.Add(customer);
                        db.SaveChanges();

                        
                        alc.writeSuccessRecords(User.Identity.Name, "create customer", customer.UserAccount_Username);
                        TempData["errorMsg"] = "";
                        return RedirectToAction("Index");
                    }

                }
                alc.writeFailedRecords(User.Identity.Name, "create customer", customer.UserAccount_Username);
                TempData["errorMsg"] = "Please enter another username. Create is unsuccessful. Please correct the errors and try again."; 
                ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Password", customer.UserAccount_Username);
                return View(customer);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }

           
        }

        //
        // GET: /Customer/Edit/5

        public ActionResult Edit(string id)
        {
            if (User.IsInRole("Sale") || User.IsInRole("Customer"))
            {
                Customer customer = db.Customers.Find(id);
                if (customer == null)
                {
                    return HttpNotFound();
                }
                ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Password", customer.UserAccount_Username);
                return View(customer);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
           
        }

        //
        // POST: /Customer/Edit/5

        [HttpPost]
        public ActionResult Edit(Customer customer, string password)
        {
            
            if (User.IsInRole("Sale") || User.IsInRole("Customer"))
            {
                if (ModelState.IsValid)
                {
                    alc.writeRecords(User.Identity.Name, "edit customer details", customer.UserAccount_Username);
                    if (password != "")
                    {
                        UserAccount customerAcc = new UserAccount();
                        customerAcc = db.UserAccounts.Find(customer.UserAccount_Username);
                        if (password == customerAcc.Password)
                        {
                            db.Entry(customer).State = EntityState.Modified;
                            db.SaveChanges();
                            TempData["errorMsg"] = "";
                            alc.writeSuccessRecords(User.Identity.Name, "create customer", customer.UserAccount_Username);
                            return RedirectToAction("Details/"+customer.UserAccount_Username, "Customer");
                        }
                    }
                    else {
                        TempData["errorMsg"] = "Your entered details are incorrect. Please recheck";
                        alc.writeFailedRecords(User.Identity.Name, "edit customer details", customer.UserAccount_Username);
                        return View(customer);
                    }
                }
                ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Password", customer.UserAccount_Username);
                TempData["errorMsg"] = "Your entered details are incorrect. Please recheck";
                alc.writeFailedRecords(User.Identity.Name, "edit customer details", customer.UserAccount_Username);
                return View("Edit", customer);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // GET: /Customer/EditPassword/5

        public ActionResult EditPassword(string id)
        {
            if (User.IsInRole("Customer"))
            {
                Customer customer = db.Customers.Find(id);
                if (customer == null)
                {
                    return HttpNotFound();
                }
                ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Password", customer.UserAccount_Username);
                EmailController ec = new EmailController();
                ec.confirmAndEmailOTP(id);
                return View(customer);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
                
        }

        //
        // POST: /Customer/EditPassword/5

        [HttpPost]
        public ActionResult EditPassword(Customer customer, string password, string newpassword, string otp)
        {
            
            if (User.IsInRole("Customer"))
            {
                if (ModelState.IsValid)
                {
                    if (password != "")
                    {
                        UserAccount customerAcc = new UserAccount();
                        customerAcc = db.UserAccounts.Find(customer.UserAccount_Username);
                        alc.writeRecords(User.Identity.Name, "change password", " ");
                        //if (password == customerAcc.Password)
                        if (Encryption.ValidatePassword(password, customerAcc.Password, customerAcc.Salt))
                        {
                            if (customerAcc.Otp == otp)
                            {
                                db.Entry(customer).State = EntityState.Modified;
                                //customerAcc.Password = newpassword;

                                customerAcc.Password = password;
                                string hashData = Encryption.CreatePasswordHash(customerAcc.Password);
                                char[] delimiter = { ':' };
                                string[] split = hashData.Split(delimiter);
                                string salt = split[Encryption.SALT_INDEX];
                                string hash = split[Encryption.PBKDF2_INDEX];
                                customerAcc.Salt = salt;
                                customerAcc.Password = hash;
                                db.SaveChanges();
                                alc.writeSuccessRecords(User.Identity.Name, "change password", " ");
                                return RedirectToAction("Details/" + customer.UserAccount_Username, "Customer");
                            }
                        }
                    }
                    else {
                        TempData["errorMsg"] = "Your entered details are incorrect. Please recheck";
                        alc.writeFailedRecords(User.Identity.Name, "change password", " ");
                        return View(customer); 
                    }
                }
                ViewBag.UserAccount_Username = new SelectList(db.UserAccounts, "Username", "Password", customer.UserAccount_Username);
                
                TempData["errorMsg"] = "Your entered details are incorrect. Please recheck";
                alc.writeFailedRecords(User.Identity.Name, "change password", customer.UserAccount_Username);
                return View(customer); 
                }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // GET: /Customer/Delete/5

        public ActionResult Delete(string id = null)
        {
            if (User.IsInRole("Sale"))
            {
                Customer customer = db.Customers.Find(id);
                if (customer == null)
                {
                    return HttpNotFound();
                }

                return View(customer);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
            
        }

        //
        // POST: /Customer/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(string id)
        {
            if (User.IsInRole("Sale"))
            {
                Customer customer = db.Customers.Find(id);
                alc.writeSuccessRecords(User.Identity.Name, "deleted a customer", customer.UserAccount_Username);
                db.Customers.Remove(customer);
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