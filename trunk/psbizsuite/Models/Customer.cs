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

public class Customer : User
{
	public virtual IEnumerable<SupportTicket> SupportTicket
	{
		get;
		set;
	}

	public virtual IEnumerable<Order> Order
	{
		get;
		set;
	}

}
