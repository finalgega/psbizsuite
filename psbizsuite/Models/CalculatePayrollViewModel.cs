﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace psbizsuite.Models
{
    public class CalculatePayrollViewModel
    {
        public string name { get; set; }
        public TimeSpan totalHours { get; set; }
        public TimeSpan normalHours { get; set; }
        public double salaryPerHour { get; set; }

    }
}