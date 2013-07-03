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
    
    public partial class UserAccount
    {
        public string Username { get; set; }
        public string Password { get; set; }
        public string Type { get; set; }
        public string Salt { get; set; }
        public string Otp { get; set; }
        public Nullable<System.DateTime> OtpExpiry { get; set; }
    
        public virtual Customer Customer { get; set; }
        public virtual Employee Employee { get; set; }
        public virtual Supplier Supplier { get; set; }
    }
}
