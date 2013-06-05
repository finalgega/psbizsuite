using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Net.Mail;

namespace psbizsuite.Controllers
{
    public class EmailController
    {
        public bool submitEmail()
        {
            string username = "June";
            
            string strSubject = "Your support ticket has been sent";
            string type = "Complaint";
            string priority = "Urgent";
            string message = "Help, error 404 in site";
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
                MailMsg.Body += "<p><b>Message type:" + type +"<br/>";
                MailMsg.Body += "<p><b>Message priority:" + priority + "<br/>";
                MailMsg.Body += "<p><b>Message sent:" + message + "<br/>";
                MailMsg.Body += "<p>Thank you and we will reply you shortly,<br />";
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

                return true;
            }
            catch (Exception ex)
            {
                return false;
            }
        }
    }
}
