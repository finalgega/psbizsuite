﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool
//     Changes to this file will be lost if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

public class Supplier : User
{
	public virtual string description
	{
		get;
		set;
	}

	public virtual IEnumerable<InventoryItem> InventoryItem
	{
		get;
		set;
	}

    public override bool isExist()
    {
        return (this == null) ? false : true;
    }

}

