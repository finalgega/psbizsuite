using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.Mvc;
using psbizsuite.Models;
using psbizsuite.Models.Utilities;
using System.Data.Entity.Validation;
using iTextSharp;
using iTextSharp.text;
using iTextSharp.text.pdf;
namespace psbizsuite.Controllers
{
    public class InventoryController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /Inventory/

        public ActionResult Index()
        {
            if (User.IsInRole("Logistic"))
            {
                var inventories = db.Inventories.Include(i => i.Supplier);
                return View(inventories.ToList());
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
        }

        //
        // GET: /Inventory/Details/5

        public ActionResult Details(int id = 0)
        {
            if (User.IsInRole("Logistic"))
            {
                Inventory inventory = db.Inventories.Find(id);
                if (inventory == null)
                {
                    return HttpNotFound();
                }
                var imageData = inventory.Image;
                TempData["filepath"] = File(imageData, "image/jpg");
                return View(inventory);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
            
        }

        //
        // GET: /Inventory/Create

        public ActionResult Create()
        {
            if (User.IsInRole("Logistic"))
            {
                ViewBag.Supplier_UserAccount_Username = new SelectList(db.Suppliers, "UserAccount_Username", "FullName");
                ViewBag.Category_CatId = new SelectList(db.categories, "CatId", "CatName");
                return View();
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
            
        }

        //
        // POST: /Inventory/Create

        [HttpPost]
        public ActionResult Create(Inventory inventory, HttpPostedFileBase uploadFile)
        {
            if (User.IsInRole("Logistic"))
            {
                if (ModelState.IsValid)
                {
                    Inventory inventoryItem = inventory;
                    inventoryItem.TimeStamp = System.DateTime.Now;
                    if (uploadFile != null && uploadFile.ContentLength > 0)
                    {
                       //  extracts filename
                        inventoryItem.Image = new byte[uploadFile.ContentLength];
                        uploadFile.InputStream.Read(inventoryItem.Image, 0, uploadFile.ContentLength);    
                    db.Inventories.Add(inventoryItem);
                        db.SaveChanges();
                    }

                    ViewBag.Supplier_UserAccount_Username = new SelectList(db.Suppliers, "UserAccount_Username", "FullName", inventory.Supplier_UserAccount_Username);
                     ViewBag.Category_CatId = new SelectList(db.categories, "CatId", "CatName");
                    return View(inventory);
                }
                return View(inventory);
                }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
            
        }

        //
        // GET: /Inventory/Edit/5

        public ActionResult Edit(int id = 0)
        {
            if (User.IsInRole("Logistic"))
            {
                Inventory inventory = db.Inventories.Find(id);
                if (inventory == null)
                {
                    return HttpNotFound();
                }
                ViewBag.Supplier_UserAccount_Username = new SelectList(db.Suppliers, "UserAccount_Username", "FullName", inventory.Supplier_UserAccount_Username);
                return View(inventory);
               
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
            
        }

        //
        // POST: /Inventory/Edit/5

        [HttpPost]
        public ActionResult Edit(Inventory inventory)
        {
            if (User.IsInRole("Logistic"))
            {
                var errors = ModelState.Values.SelectMany(v => v.Errors);
                if (ModelState.IsValid)
                {
                    try
                    {
                        inventory.TimeStamp = System.DateTime.Now;
                        db.Entry(inventory).State = EntityState.Modified;

                        db.SaveChanges();
                        ViewBag.Supplier_UserAccount_Username = new SelectList(db.Suppliers, "UserAccount_Username", "FullName", inventory.Supplier_UserAccount_Username);
                        return View(inventory);
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
                    ViewBag.Supplier_UserAccount_Username = new SelectList(db.Suppliers, "UserAccount_Username", "FullName", inventory.Supplier_UserAccount_Username);
                    return View(inventory);
                }

                ViewBag.Supplier_UserAccount_Username = new SelectList(db.Suppliers, "UserAccount_Username", "FullName", inventory.Supplier_UserAccount_Username);
                return View(inventory);
                }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
           
        }

        //
        // GET: /Inventory/Delete/5

        public ActionResult Delete(int id = 0)
        {
            if (User.IsInRole("Logistic"))
            {
                    Inventory inventory = db.Inventories.Find(id);
                if (inventory == null)
                {
                    return HttpNotFound();
                }
           
                return View(inventory);
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
            
        }

        //
        // POST: /Inventory/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            if (User.IsInRole("Logistic"))
            {
                Inventory inventory = db.Inventories.Find(id);
                db.Inventories.Remove(inventory);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            else
            {
                return HttpNotFound("Unauthorized access");
            }
          
        }

        public ActionResult CreateInventoryItem()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateItemRecord()
        {
            Debug.WriteLine("POST MADE IT!");
            EncryptionController encrypt = new EncryptionController();
            StringBuilder randStr = new StringBuilder("Hello World!\n");
            StringBuilder nXtString = encrypt.SimpleXORAlgorithm(randStr);
            Debug.WriteLine("randStr : " + randStr);
            Debug.WriteLine("nXtString : " + nXtString);
            Debug.WriteLine("x0r of nXtString : " + encrypt.SimpleXORAlgorithm(nXtString));
            string pbkdf2Pwd = EncryptionController.CreatePasswordHash("Sypeskder");
            Debug.WriteLine("Original Password :  Sypeskder");
            Debug.WriteLine("Hash of password using PBKDF2 : " + pbkdf2Pwd);
            return RedirectToAction("Index");
        }

        public ActionResult CreateSupplier()
        {
            return View();
        }

        [HttpPost]
        public ActionResult CreateSupplier(Supplier supplier)
        {
            if (ModelState.IsValid)
            {
                Supplier usrAc = supplier;
                UserAccount uAc = new UserAccount();
                uAc.Username = usrAc.FullName;
                uAc.Type = "Supplier";
                string hashData = Encryption.CreatePasswordHash(usrAc.FullName);
                char[] delimiter = { ':' };
                string[] split = hashData.Split(delimiter);
                string salt = split[Encryption.SALT_INDEX];
                string hash = split[Encryption.PBKDF2_INDEX];
                uAc.Password = hash;
                uAc.Salt = salt;
                db.UserAccounts.Add(uAc);
                usrAc.UserAccount_Username = uAc.Username;
                db.Suppliers.Add(usrAc);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            return View();
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }

        public ActionResult ShowImage(int id)
        {
            Inventory inventory = db.Inventories.Find(id);
            var imageData = inventory.Image;
            return File(imageData, "image/jpg");
        }

        public ActionResult GenerateReport()
        {
            List<Inventory> inventoryList = db.Inventories.ToList();
            if (inventoryList != null)
            {
                for (int i = 0; i < inventoryList.Count; i++)
                {
                    Debug.WriteLine(inventoryList[i].ItemName);
                    Debug.WriteLine(inventoryList[i].ItemDescription);
                    Debug.WriteLine(inventoryList[i].Quantity);
                    Debug.WriteLine(inventoryList[i].Supplier);
                    Debug.WriteLine(inventoryList[i].UnitCost);
                    Debug.WriteLine(inventoryList[i].UnitWeightKilo);
                    Debug.WriteLine(inventoryList[i].category.CatName);
                }
            }
            using (MemoryStream ms = new MemoryStream())
            {
                Document document = new Document(PageSize.A4, 25, 25, 30, 30);
                document.SetPageSize(PageSize.A4.Rotate());
                PdfWriter writer = PdfWriter.GetInstance(document, ms);
                document.Open();
                //  Adding meta information to document
                document.AddAuthor("Tigger");
                document.AddCreator("Tigger Tigris");
                document.AddKeywords("Inventory Report;BizSuite");
                document.AddSubject("Inventory Report as of " + System.DateTime.Now);
                document.AddTitle("Inventory Report as of " + System.DateTime.Now);
                PdfPTable table = new PdfPTable(9);
                //actual width of table in points
                table.TotalWidth = 800f;
                //fix the absolute width of the table
                table.LockedWidth = true;

                //relative col widths in proportions - 1/3 and 2/3
                float[] widths = new float[] { 1f, 2f,3f,1f,1f,1f,2f,1f,1f,};
                table.SetWidths(widths);
                table.HorizontalAlignment = 0;
                //leave a gap before and after the table
                table.SpacingBefore = 20f;
                table.SpacingAfter = 30f;

                PdfPCell cell = new PdfPCell(new Phrase("Inventory"));
                cell.Colspan = 10;
                cell.Border = 0;
                cell.HorizontalAlignment = 1;
                table.AddCell(cell);
                string[] columnNames = { "S/N", "Item Name", "Description", "Quantity", "Unit Cost", "Unit Weight (kg)", "Location", "Supplier", "Category" };
                for(int i = 0; i < columnNames.Length;i++)
                {
                    table.AddCell(columnNames[i]);
                }
                for (int i = 0; i < inventoryList.Count; i++)
                {
                    table.AddCell(inventoryList[i].InventoryId.ToString());
                    table.AddCell(inventoryList[i].ItemName.ToString());
                    table.AddCell(inventoryList[i].ItemDescription.ToString());
                    table.AddCell(inventoryList[i].Quantity.ToString());
                    table.AddCell(inventoryList[i].UnitCost.ToString());
                    table.AddCell(inventoryList[i].UnitWeightKilo.ToString());
                    table.AddCell(inventoryList[i].Location.ToString());
                    table.AddCell(inventoryList[i].Supplier_UserAccount_Username.ToString());
                    table.AddCell(inventoryList[i].category.CatName.ToString());
                }
                document.Add(table);
                document.Close();
                writer.Close();
                Response.ContentType = "pdf/application";
                Response.AddHeader("content-disposition",
                "attachment;filename=Inventory Report as of " + System.DateTime.Now+".pdf");
                Response.OutputStream.Write(ms.GetBuffer(), 0, ms.GetBuffer().Length);
            }

            return View();
        }
    }
}