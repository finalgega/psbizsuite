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
    
    public partial class EmployeePosition
    {
        public EmployeePosition()
        {
            this.Employees = new HashSet<Employee>();
        }
    
        public int PositionId { get; set; }
        public string PositionName { get; set; }
        public string Responsibility { get; set; }
    
        public virtual ICollection<Employee> Employees { get; set; }
    }
}