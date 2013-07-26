using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;

namespace psbizsuite.Controllers
{
    public class AuditLogController
    {
        public void writeRecords(string actor, string action, string particulars)
        {
            string path = "../../../Users/Roy/Desktop/AuditLog.biz";
            
            if (!File.Exists(path))
            {
                // Create a file to write to. 
                using (StreamWriter sw = File.CreateText(path))
                {
                    sw.WriteLine("BizSuite Audit Log : Created on " +DateTime.Now);
                }
            }

            // This text is always added, making the file longer over time 
            // if it is not deleted. 
            using (StreamWriter sw = File.AppendText(path))
            {
                sw.WriteLine(DateTime.Now + " : " + actor + " has attempted to " + action + " - " + particulars);
            }

            // Open the file to read from. 
            using (StreamReader sr = File.OpenText(path))
            {
                string s = "";
                while ((s = sr.ReadLine()) != null)
                {
                    Console.WriteLine(s);
                }
            }

        }

        public void writeSuccessRecords(string actor, string action, string particulars)
        {
            string path = "../../../Users/Roy/Desktop/AuditLog.biz";

            if (!File.Exists(path))
            {
                // Create a file to write to. 
                using (StreamWriter sw = File.CreateText(path))
                {
                    sw.WriteLine("BizSuite Audit Log : Created on " + DateTime.Now);
                }
            }

            // This text is always added, making the file longer over time 
            // if it is not deleted. 
            using (StreamWriter sw = File.AppendText(path))
            {
                sw.WriteLine(DateTime.Now + " : " + actor + " has " + action + " - " + particulars + " successfully");
            }

            // Open the file to read from. 
            using (StreamReader sr = File.OpenText(path))
            {
                string s = "";
                while ((s = sr.ReadLine()) != null)
                {
                    Console.WriteLine(s);
                }
            }

        }

        public void writeFailedRecords(string actor, string action, string particulars)
        {
            string path = "../../../Users/Roy/Desktop/AuditLog.biz";

            if (!File.Exists(path))
            {
                // Create a file to write to. 
                using (StreamWriter sw = File.CreateText(path))
                {
                    sw.WriteLine("BizSuite Audit Log : Created on " + DateTime.Now);
                }
            }

            // This text is always added, making the file longer over time 
            // if it is not deleted. 
            using (StreamWriter sw = File.AppendText(path))
            {
                sw.WriteLine(DateTime.Now + " : " + actor + " has failed to " + action + " - " + particulars);
            }

            // Open the file to read from. 
            using (StreamReader sr = File.OpenText(path))
            {
                string s = "";
                while ((s = sr.ReadLine()) != null)
                {
                    Console.WriteLine(s);
                }
            }

        }
    }
}
