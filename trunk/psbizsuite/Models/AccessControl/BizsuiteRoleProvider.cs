using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;

namespace psbizsuite.Models.AccessControl
{
    public class BizsuiteRoleProvider : RoleProvider
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        public override void AddUsersToRoles(string[] usernames, string[] roleNames)
        {
            throw new NotImplementedException();
        }

        public override string ApplicationName
        {
            get
            {
                throw new NotImplementedException();
            }
            set
            {
                throw new NotImplementedException();
            }
        }

        public override void CreateRole(string roleName)
        {
            throw new NotImplementedException();
        }

        public override bool DeleteRole(string roleName, bool throwOnPopulatedRole)
        {
            throw new NotImplementedException();
        }

        public override string[] FindUsersInRole(string roleName, string usernameToMatch)
        {
            throw new NotImplementedException();
        }

        public override string[] GetAllRoles()
        {
            throw new NotImplementedException();
        }

        public override string[] GetRolesForUser(string username)
        {
            return new string[] { db.Employees.Find(username).EmployeePosition_PositionName };
        }

        public override string[] GetUsersInRole(string roleName)
        {
            throw new NotImplementedException();
        }

        public override bool IsUserInRole(string username, string roleName)
        {
            UserAccount acc = db.UserAccounts.Find(username);

            if (acc != null)
            {
                if (acc.Type == "Employee")
                {
                    Employee employee = db.Employees.Find(username);
                    return employee.EmployeePosition_PositionName == roleName;
                }
                else
                {
                    return acc.Type == roleName;
                }
            }
            else
            {
                return false;
            }
        }

        public override void RemoveUsersFromRoles(string[] usernames, string[] roleNames)
        {
            throw new NotImplementedException();
        }

        //for employee only
        public override bool RoleExists(string roleName)
        {
            EmployeePosition position = db.EmployeePositions.Find(roleName);
            if (position != null)
            {
                return true;
            }
            else
            {
                return false;
            }
        }
    }
}