using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace psbizsuite.Models
{
    public class Inventory
    {
        private List<InventoryItem> _listOfInventoryItems;
        Inventory(List<InventoryItem> inventoryItems)
        {
            this._listOfInventoryItems = inventoryItems;
        }
    }
}