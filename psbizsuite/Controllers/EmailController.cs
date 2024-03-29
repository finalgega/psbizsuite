﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Net.Mail;
using System.Web.Mvc;
using psbizsuite.Models;
using psbizsuite.Models.Utilities;

namespace psbizsuite.Controllers
{
    public class EmailController : Controller
    {
        private BizSuiteDBEntities db = new BizSuiteDBEntities();

        public bool submitEmail(int id, string username, string type, string priority, string message)
        {
            //string username = "Jack";
            
            string strSubject = "Your support ticket has been sent - " +type+ " #"+id;
            //string type = "General Enquiry";
            //string priority = "Urgent";
            //string message = "Help, error 404 in site";
            string adminEmail = "secuca53study@gmail.com"; //from
            string strFromEmail = "BizSuite Admin";
            string email = "yugioh1324@hotmail.com "; //to

            
            try
            {
                //create the new mail message[/color]
                MailMessage MailMsg = new MailMessage();

                //cretate the FROM[/color]
                MailMsg.From = new MailAddress(adminEmail);

                //create the subject[/color]
                MailMsg.Subject = strSubject;

                //We obviously need to create the TO - otherwise it goes nowhere.
                MailMsg.To.Add(email); //assuming there was a form to fill out and they put the right email address in.

                MailMsg.IsBodyHtml = true; //I decided to make it html - so I could format the text.
                MailMsg.Body = "<h3>To, " + username + "</h3><br /><br/>";
                MailMsg.Body += "<p><b>You have successfully submitted your message to the Support Center<br />";
                MailMsg.Body += "<p><b>Message type: " + type +"<br/>";
                MailMsg.Body += "<p><b>Message priority: " + priority + "<br/>";
                MailMsg.Body += "<p><b>Message sent: " + message + "<br/>";
                MailMsg.Body += "<p><b>URL : <a href='http://localhost:27996/SupportTicket/Details/" +id+ "'>Click here to view your enquiry</a><br/>";
                MailMsg.Body += "<p>Thank you and we will reply you shortly,<br />";
                MailMsg.Body += "<p>" + username + "<br/>";
                MailMsg.Body += "<p><b>From: " + strFromEmail + "<br/>";


                //utilizing SMTP (simple mail transfer protocol)
                SmtpClient smtp = new SmtpClient();
                smtp.Credentials = new NetworkCredential("secuca53study@gmail.com", "commonpw");
                smtp.Port = 587;
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                object userState = MailMsg;
                smtp.Send(MailMsg);

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public bool submitEmail(int id, string username, string type, string priority, string message, string reply, string employee, int smth)
        {
            //string username = "Jack";

            string strSubject = "Your support ticket has been replied - " + type + " #" + id;
            //string type = "General Enquiry";
            //string priority = "Urgent";
            //string message = "Help, error 404 in site";
            //string reply = "We are sorry for the inconvenience caused. We will look into it immediately.";
            string adminEmail = "secuca53study@gmail.com"; //from
            //string strFromEmail = "BizSuite Admin";
            string email = "yugioh1324@hotmail.com "; //to


            try
            {
                //create the new mail message[/color]
                MailMessage MailMsg = new MailMessage();

                //cretate the FROM[/color]
                MailMsg.From = new MailAddress(adminEmail);

                //create the subject[/color]
                MailMsg.Subject = strSubject;

                //We obviously need to create the TO - otherwise it goes nowhere.
                MailMsg.To.Add(email); //assuming there was a form to fill out and they put the right email address in.

                MailMsg.IsBodyHtml = true; //I decided to make it html - so I could format the text.
                MailMsg.Body = "<h3>To, " + username + "</h3><br /><br/>";
                MailMsg.Body += "<p><b>You have received a reply from the Support Center<br />";
                MailMsg.Body += "<p><b>Message type: " + type + "<br/>";
                MailMsg.Body += "<p><b>Message priority: " + priority + "<br/>";
                MailMsg.Body += "<p><b>Original Message: " + message + "<br/>";
                MailMsg.Body += "<p><b>Reply: " + reply + "<br/>";
                MailMsg.Body += "<p><b>URL : <a href='http://localhost:27996/SupportTicket/Details/" + id + "'>Click here to view your enquiry</a><br/>";
                MailMsg.Body += "<p>Thank you for using BizSuite and we are always happy to serve you,<br />";
                MailMsg.Body += "<p>" + username + "<br/>";
                MailMsg.Body += "<p><b>From: " + employee + "<br/>";


                //utilizing SMTP (simple mail transfer protocol)
                SmtpClient smtp = new SmtpClient();
                smtp.Credentials = new NetworkCredential("secuca53study@gmail.com", "commonpw");
                smtp.Port = 587;
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                object userState = MailMsg;
                smtp.Send(MailMsg);

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }

        public bool createAndEmailOTP(string username){

            //username = User.Identity.Name;  //USE THIS WHEN READY NOW COMMENTED
            string strSubject = "Your Account is being accessed... ";
            //string message = "Please complete your login by entering this: ";
            string adminEmail = "secuca53study@gmail.com"; //from
            string strFromEmail = "BizSuite Admin";
            string email = "yugioh1324@hotmail.com "; //to

            //creating three string variables.
            //This one tells you how many characters the string will contain.
            string PasswordLength = "12";
            //This one, is empty for now - but will hold the randomly generated password
            string NewPassword = "";

            //This one tells you which characters are allowed in this new password
            string allowedChars = "";
            allowedChars = "1,2,3,4,5,6,7,8,9,0";
            allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
            allowedChars += "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";


            //Then working with an array...

            char[] sep = { ',' };
            string[] arr = allowedChars.Split(sep);

            string IDString = "";
            string temp = "";

            //utilize the "random" class
            Random rand = new Random();

            //and lastly - loop through the generation process...
            for (int i = 0; i < Convert.ToInt32(PasswordLength); i++)
            {
                temp = arr[rand.Next(0, arr.Length)];
                IDString += temp;
                NewPassword = IDString;
            }

            try
            {
                //create the new mail message[/color]
                MailMessage MailMsg = new MailMessage();

                //cretate the FROM[/color]
                MailMsg.From = new MailAddress(adminEmail);

                //create the subject[/color]
                MailMsg.Subject = strSubject;

                //We obviously need to create the TO - otherwise it goes nowhere.
                MailMsg.To.Add(email); //assuming there was a form to fill out and they put the right email address in.

                MailMsg.IsBodyHtml = true; //I decided to make it html - so I could format the text.
                MailMsg.Body = "<h3>To, " + username + "</h3><br /><br/>";
                MailMsg.Body += "<p><b>Please complete your login by entering the code below: <br/>";
                MailMsg.Body += "<p><b>Key: " + NewPassword + "<br/>";
                MailMsg.Body += "<p>Thank you for using BizSuite and we are always happy to serve you,<br />";
                MailMsg.Body += "<p>" + username + "<br/>";
                MailMsg.Body += "<p><b>From:" + strFromEmail + "<br/>";


                //utilizing SMTP (simple mail transfer protocol)
                SmtpClient smtp = new SmtpClient();
                smtp.Credentials = new NetworkCredential("secuca53study@gmail.com", "commonpw");
                smtp.Port = 587;
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                object userState = MailMsg;
                smtp.Send(MailMsg);

                UserAccount customerAcc = new UserAccount();
                customerAcc.Otp = NewPassword;
                customerAcc.OtpExpiry = DateTime.Now;
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
            
        }

        public bool confirmAndEmailOTP(string username)
        {

            //username = User.Identity.Name;  //USE THIS WHEN READY NOW COMMENTED
            string strSubject = "Changes are being made to your account... ";
            //string message = "Please complete your login by entering this: ";
            string adminEmail = "secuca53study@gmail.com"; //from
            string strFromEmail = "BizSuite Admin";
            string email = "yugioh1324@hotmail.com "; //to

            //creating three string variables.
            //This one tells you how many characters the string will contain.
            string PasswordLength = "12";
            //This one, is empty for now - but will hold the randomly generated password
            string NewPassword = "";

            //This one tells you which characters are allowed in this new password
            string allowedChars = "";
            allowedChars = "1,2,3,4,5,6,7,8,9,0";
            allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
            allowedChars += "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";


            //Then working with an array...

            char[] sep = { ',' };
            string[] arr = allowedChars.Split(sep);

            string IDString = "";
            string temp = "";

            //utilize the "random" class
            Random rand = new Random();

            //and lastly - loop through the generation process...
            for (int i = 0; i < Convert.ToInt32(PasswordLength); i++)
            {
                temp = arr[rand.Next(0, arr.Length)];
                IDString += temp;
                NewPassword = IDString;
            }

            try
            {
                //create the new mail message[/color]
                MailMessage MailMsg = new MailMessage();

                //cretate the FROM[/color]
                MailMsg.From = new MailAddress(adminEmail);

                //create the subject[/color]
                MailMsg.Subject = strSubject;

                //We obviously need to create the TO - otherwise it goes nowhere.
                MailMsg.To.Add(email); //assuming there was a form to fill out and they put the right email address in.

                MailMsg.IsBodyHtml = true; //I decided to make it html - so I could format the text.
                MailMsg.Body = "<h3>To, " + username + "</h3><br /><br/>";
                MailMsg.Body += "<p><b>Please confirm your changes by entering the code below: <br/>";
                MailMsg.Body += "<p><b>Key: " + NewPassword + "<br/>";
                MailMsg.Body += "<p>Thank you for using BizSuite and we are always happy to serve you,<br />";
                MailMsg.Body += "<p>" + username + "<br/>";
                MailMsg.Body += "<p><b>From:" + strFromEmail + "<br/>";


                //utilizing SMTP (simple mail transfer protocol)
                SmtpClient smtp = new SmtpClient();
                smtp.Credentials = new NetworkCredential("secuca53study@gmail.com", "commonpw");
                smtp.Port = 587;
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                object userState = MailMsg;
                smtp.Send(MailMsg);

                UserAccount customerAcc = new UserAccount();
                customerAcc = db.UserAccounts.Find(username);
                customerAcc.Otp = NewPassword;
                customerAcc.OtpExpiry = DateTime.Now;
                db.SaveChanges();
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }

        public bool ForgetPasswordAndEmail(string username)
        {

            //username = User.Identity.Name;  //USE THIS WHEN READY NOW COMMENTED
            string strSubject = "Your Account Password is being reset... ";
            //string message = "Please complete your login by entering this: ";
            string adminEmail = "secuca53study@gmail.com"; //from
            string strFromEmail = "BizSuite Admin";
            string email = "yugioh1324@hotmail.com "; //to

            //creating three string variables.
            //This one tells you how many characters the string will contain.
            string PasswordLength = "12";
            //This one, is empty for now - but will hold the randomly generated password
            string NewPassword = "";

            //This one tells you which characters are allowed in this new password
            string allowedChars = "";
            allowedChars = "1,2,3,4,5,6,7,8,9,0";
            allowedChars += "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,";
            allowedChars += "a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,";


            //Then working with an array...

            char[] sep = { ',' };
            string[] arr = allowedChars.Split(sep);

            string IDString = "";
            string temp = "";

            //utilize the "random" class
            Random rand = new Random();

            //and lastly - loop through the generation process...
            for (int i = 0; i < Convert.ToInt32(PasswordLength); i++)
            {
                temp = arr[rand.Next(0, arr.Length)];
                IDString += temp;
                NewPassword = IDString;
            }

            try
            {
                //create the new mail message[/color]
                MailMessage MailMsg = new MailMessage();

                //cretate the FROM[/color]
                MailMsg.From = new MailAddress(adminEmail);

                //create the subject[/color]
                MailMsg.Subject = strSubject;

                //We obviously need to create the TO - otherwise it goes nowhere.
                MailMsg.To.Add(email); //assuming there was a form to fill out and they put the right email address in.

                MailMsg.IsBodyHtml = true; //I decided to make it html - so I could format the text.
                MailMsg.Body = "<h3>To, " + username + "</h3><br /><br/>";
                
                MailMsg.Body += "<p><b>Your new password is : " + NewPassword + "<br/>";
                MailMsg.Body += "<p>Thank you for using BizSuite and we are always happy to serve you,<br />";
                MailMsg.Body += "<p>" + username + "<br/>";
                MailMsg.Body += "<p><b>From:" + strFromEmail + "<br/>";


                //utilizing SMTP (simple mail transfer protocol)
                SmtpClient smtp = new SmtpClient();
                smtp.Credentials = new NetworkCredential("secuca53study@gmail.com", "commonpw");
                smtp.Port = 587;
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                object userState = MailMsg;
                smtp.Send(MailMsg);

                UserAccount userac = new UserAccount();
                userac.Password = NewPassword;
                string hashData = Encryption.CreatePasswordHash(userac.Password);
                char[] delimiter = { ':' };
                string[] split = hashData.Split(delimiter);
                string salt = split[Encryption.SALT_INDEX];
                string hash = split[Encryption.PBKDF2_INDEX];
                userac.Salt = salt;
                userac.Password = hash;
                return true;
            }
            catch (Exception ex)
            {
                return false;
            }

        }
    }
}
