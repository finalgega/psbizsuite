﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class BizSuiteDBEntities : DbContext
    {
        public BizSuiteDBEntities()
            : base("name=BizSuiteDBEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public DbSet<Attendance> Attendances { get; set; }
        public DbSet<Customer> Customers { get; set; }
        public DbSet<Employee> Employees { get; set; }
        public DbSet<EmployeePosition> EmployeePositions { get; set; }
        public DbSet<Inventory> Inventories { get; set; }
        public DbSet<KeyPair> KeyPairs { get; set; }
        public DbSet<LeavePolicy> LeavePolicies { get; set; }
        public DbSet<LeaveRequest> LeaveRequests { get; set; }
        public DbSet<Order> Orders { get; set; }
        public DbSet<OrderItem> OrderItems { get; set; }
        public DbSet<PayrollRequest> PayrollRequests { get; set; }
        public DbSet<Supplier> Suppliers { get; set; }
        public DbSet<SupportTicket> SupportTickets { get; set; }
        public DbSet<UserAccount> UserAccounts { get; set; }
        public DbSet<category> categories { get; set; }
        public DbSet<cashflow> cashflows { get; set; }
        public DbSet<invoice> invoices { get; set; }
        public DbSet<profitloss> profitlosses { get; set; }
    }
}
