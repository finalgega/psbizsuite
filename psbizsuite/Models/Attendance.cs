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
    
    public partial class Attendance
    {
        public int AttendanceId { get; set; }
        public System.DateTime Date { get; set; }
        public string Location { get; set; }
        public string Employee_UserAccount_Username { get; set; }
        public Nullable<System.TimeSpan> ClockInTime { get; set; }
        public string ClockOutTime { get; set; }
    
        public virtual Employee Employee { get; set; }
    }
}