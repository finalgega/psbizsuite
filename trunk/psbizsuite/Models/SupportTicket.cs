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
    using System.ComponentModel.DataAnnotations;
    
    public partial class SupportTicket
    {
        public SupportTicket()
        {
            this.SupportTicket1 = new HashSet<SupportTicket>();
        }
    
        public int SupportTicketId { get; set; }
        [Required(ErrorMessage = "Please select the type of enquiry")]
        public string EnquiryType { get; set; }
        [Required(ErrorMessage = "Please select the priority of enquiry")]
        public string EnquiryPriority { get; set; }
        [Required(ErrorMessage = "Please enter Support Ticket Details")]
        public string Details { get; set; }
        public string Reply { get; set; }
        public string Customer_UserAccount_Username { get; set; }
        public Nullable<int> ReferenceId { get; set; }
        public string Employee_UserAccount_Username { get; set; }
    
        public virtual Customer Customer { get; set; }
        public virtual Employee Employee { get; set; }
        public virtual ICollection<SupportTicket> SupportTicket1 { get; set; }
        public virtual SupportTicket SupportTicket2 { get; set; }
    }
}
