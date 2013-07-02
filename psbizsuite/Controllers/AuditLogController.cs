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
        public void writeRecords()
        {
            /*FileStream ostrm;
            StreamWriter writer;
            TextWriter oldOut = Console.Out;
            try
            {
                ostrm = new FileStream("CustomerLog.txt", FileMode.OpenOrCreate, FileAccess.Write);
                writer = new StreamWriter(ostrm);
            }
            catch (Exception e)
            {
                Console.WriteLine("Cannot open CustomerLog.txt for writing");
                Console.WriteLine(e.Message);
                return;
            }
            Console.SetOut(writer);
            Console.WriteLine("A customer has been created!");
            Console.WriteLine("Name -> Jack");
            Console.WriteLine("ID -> 1");
            Console.SetOut(oldOut);
            writer.Close();
            ostrm.Close();*/
            Console.WriteLine("Hello World");
            FileStream fs = new FileStream("../../../Users/Roy/CustomerLog.txt", FileMode.Create);
            // First, save the standard output.
            TextWriter tmp = Console.Out;
            StreamWriter sw = new StreamWriter(fs);
            Console.SetOut(sw);
            Console.WriteLine("A new customer has been created: Name -> Jack, ID -> 1");
            Console.SetOut(tmp);
            //Console.WriteLine("ID -> 1");
            sw.Close();
        }
    }
}
