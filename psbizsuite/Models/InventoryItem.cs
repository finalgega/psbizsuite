using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace psbizsuite.Models
{
    public class InventoryItem
    {

        private int _quantity;

        public InventoryItem getItem() { return null; }

        public bool doesExist() { return false; }

        protected void reduceQuantity(int quantity){ this._quantity -= quantity;}

        protected void replenishStock(int quantity){ this._quantity += quantity;}


    }
}