//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace psbizsuite.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Supplier
    {
        public Supplier()
        {
            this.Inventories = new HashSet<Inventory>();
            this.purchases = new HashSet<purchase>();
        }
    
        public string FullName { get; set; }
        public string Address { get; set; }
        public int PhoneNo { get; set; }
        public string Email { get; set; }
        public Nullable<int> FaxNo { get; set; }
        public string Description { get; set; }
        public string UserAccount_Username { get; set; }
    
        public virtual ICollection<Inventory> Inventories { get; set; }
        public virtual UserAccount UserAccount { get; set; }
        public virtual ICollection<purchase> purchases { get; set; }
    }
}
