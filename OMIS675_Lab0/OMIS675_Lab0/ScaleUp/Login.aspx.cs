using System;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using OMIS675_Lab0.Models;
using System.Data;
using System.Data.SqlClient;
using OMIS675_Lab0.DataLayer;
using OMIS675_Lab0.Business_Layer;

namespace OMIS675_Lab0.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RegisterHyperLink.NavigateUrl = "Register";
            // Enable this once you have account confirmation enabled for password reset functionality
            //ForgotPasswordHyperLink.NavigateUrl = "Forgot";
            //OpenAuthLogin.ReturnUrl = Request.QueryString["ReturnUrl"];
            //var returnUrl = HttpUtility.UrlEncode(Request.QueryString["ReturnUrl"]);
            //if (!String.IsNullOrEmpty(returnUrl))
            //{
            //    RegisterHyperLink.NavigateUrl += "?ReturnUrl=" + returnUrl;
            //}
        }

        protected void LogIn(object sender, EventArgs e)
        {
            if (IsValid)
            {
                // Validate the user password
                DatabaseLayer dblayer = new DatabaseLayer();
                //encrypt the user password.
                string encryption=UserDetails.Encrypt(Password.Text.ToString().Trim());
                //decrypt the user password.
                string decryption = UserDetails.Decrypt(encryption);
                int returnValue=dblayer.ValidateLogin(Email.Text.ToString().Trim(), encryption.Trim());
                //if (returnValue != 9999 || returnValue != 9998)
                //{
                //    
                //    returnValue = 1;
                //}
                switch (returnValue)
                {
                    default:
                        //Success
                            // IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
                            //Create session Variables.
                        BusinessLayer bl = new BusinessLayer();
                        UserDetails us = new UserDetails();
                        bl.createUserSession(us,Email.Text.ToString().Trim());
                        Session["UserName"] = us.firstName + ","+us.lastName;
                        Session["UserEmail"] = Email.Text.ToString().Trim();
                        Session["LastLogin"] = us.lastLogin;
                        Session["UserId"] = returnValue;
                        Response.Redirect("~/Scaleup/Mydashboard");
                      break;
                    
                    case 9999:// Failure: Userid validated but password is given wrong.
                    //default:
                        FailureText.Text = "Invalid Password";
                        ErrorMessage.Visible = true;
                        break;
                    case 9998:
                        //Userid itself is wrong.
                        FailureText.Text = "Invalid login attempt. Check Username or Password";
                        ErrorMessage.Visible = true;
                        break;
                }
            }
        }
    }
}