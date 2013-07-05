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
    public class OrderController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        //
        // GET: /Order/
        [Authorize]
        public ActionResult Index()
        {
            if (User.IsInRole("Sale"))
            {
                var orderitems = db.OrderItems.Include(o => o.Order);
                return View(orderitems.ToList());
            }
            else
            {
                return HttpNotFound("Unauthorized Accessed");
            }
        }

        //
        // GET: /Order/Details/5

        public ActionResult Details(int id = 0)
        {
            OrderItem orderitem = db.OrderItems.Find(id);
            if (orderitem == null)
            {
                return HttpNotFound();
            }
            return View(orderitem);
        }

        //
        // GET: /Order/Create

        /*public ActionResult Create()
        {
            //ViewBag.Order_OrderId = new SelectList(db.Orders, "OrderId", "Status");
            ViewBag.OrderItemId = new SelectList(db.Inventories, "InventoryId", "ItemName");
            
            return View();
        }*/

        public ActionResult Create(OrderItem orderitem, FormCollection collection, int InventoryId = 2)
        {

            //ViewBag.Order_OrderId = new SelectList(db.Orders, "OrderId", "Status");
            ViewBag.OrderItemId = new SelectList(db.Inventories, "InventoryId", "ItemName");

            OrderItem o = new OrderItem();
            TempData["price"] = o.UnitPrice = (double)db.Inventories.Find(InventoryId).UnitCost;
            o.UnitPrice = (double)db.Inventories.Find(InventoryId).UnitCost;

            //IQueryable<Object> getAllEvents = ViewBag.OrderItemId.GetEventsSelectlist();
            int selectedvalue = Convert.ToInt32(collection["selectedValue"]);
            //ViewData["dropdownlist"] = new SelectList(getAllEvents.ToList(), "InventoryId", "ItemName", selectedvalue);// your dropdownlist

            return View("Create", orderitem);

        }

        //
        // POST: /Order/Create

        [HttpPost]
        public ActionResult Create(OrderItem orderitem)
        {
            if (ModelState.IsValid)
            {
                Order order = new Order();
                order.Customer_UserAccount_Username = "jack";
                order.Status = "Unpaid";
                order.TotalAmount = 500;
                order.ReceiptId = 9001; //what the hell does receiptid even means?
                db.Orders.Add(order);
                db.OrderItems.Add(orderitem);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.Order_OrderId = new SelectList(db.Orders, "OrderId", "Status", orderitem.Order_OrderId);

            return View(orderitem);
        }

        //
        // GET: /Order/Edit/5

        public ActionResult Edit(int id = 0)
        {
            OrderItem orderitem = db.OrderItems.Find(id);
            if (orderitem == null)
            {
                return HttpNotFound();
            }
            ViewBag.Order_OrderId = new SelectList(db.Orders, "OrderId", "Status", orderitem.Order_OrderId);
            return View(orderitem);
        }

        //
        // POST: /Order/Edit/5

        [HttpPost]
        public ActionResult Edit(OrderItem orderitem)
        {
            if (ModelState.IsValid)
            {
                db.Entry(orderitem).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.Order_OrderId = new SelectList(db.Orders, "OrderId", "Status", orderitem.Order_OrderId);
            return View(orderitem);
        }

        //
        // GET: /Order/Delete/5

        public ActionResult Delete(int id = 0)
        {
            OrderItem orderitem = db.OrderItems.Find(id);
            if (orderitem == null)
            {
                return HttpNotFound();
            }
            return View(orderitem);
        }

        //
        // POST: /Order/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            OrderItem orderitem = db.OrderItems.Find(id);
            db.OrderItems.Remove(orderitem);
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