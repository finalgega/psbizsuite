using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Data;
using MySql.Data.MySqlClient;
namespace psbizsuite.Controllers
{
    public class MySQLController : ApiController
    {
        public static void Main()
        {
            MySqlConnection conn = new MySqlConnection("server=localhost;User Id=root;database=BizSuiteDB");
            try
            {
                Console.WriteLine("connecting to mysql");
                conn.Open();


            }
        }
        
    }
}
