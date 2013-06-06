using System;
using System.Diagnostics;
using System.Collections.Generic;
using System.Collections;
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
        private MySqlConnection con;
        private string server = "localhost";
        private string uid = "root";
        private string passkey = "Vivienphua030492";
        private string dbName = "BizSuiteDB";
        
        /// <summary>
        /// 
        /// </summary>
        public void SetUp()
        {
            con = new MySqlConnection("server="+server+";User Id="+ uid + ";password=" + passkey + ";database= " + dbName +")";
            try
            {
                Debug.WriteLine("Attempting connection to mysql");
                if (con.Ping())
                {
                    con.Open();
                    Debug.WriteLine("Reached Host!");
                }
                else
                {
                    Debug.WriteLine("Host cannot be reached!");
                }
            }
            catch (MySqlException mysqlEX)
            {
                Debug.WriteLine(mysqlEX.Message);
            }
        }
        
        public ArrayList ReadRequest(string dbQuery) {
            ArrayList results = null;
            try
            {
                //  Creates a statement obj

                //  Executes an SQL query and get the result
            }
            catch (MySqlException mysqlEx)
            {
                Debug.WriteLine(mysqlEx.Message);
            }
            return results;
    }

        public int UpdateRequest(string dbQuery)
        {
            int count = 0;
            try
            {
                //  Create a statement and get e count of execute update
            }
            catch (MySqlException mysqlEx)
            {
                Debug.WriteLine(mysqlEx.Message);
            }
            return count;
        }

        /// <summary>
        /// Closes the connection to the database
        /// </summary>
        public void terminate()
        {
            try
            {
                con.Close();
            }
            catch (MySqlException mysqlEx)
            {
                Debug.WriteLine(mysqlEx.Message);
            }
        }
        
    }
}
