using System;
using System.Linq;
using System.Web;
using System.Web.UI;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.Owin;
using Owin;
using OMIS675_Lab0.Models;
using OMIS675_Lab0.DataLayer;
using System.Web.UI.WebControls;
using System.Collections.Generic;
using OMIS675_Lab0.Business_Layer;

namespace OMIS675_Lab0.Account
{
    public partial class Register : Page
    {
        protected void CreateUser_Click(object sender, EventArgs e)
        {
            //List<string> selectedValues = null;
            List<string> selectedValues = chbxSkills.Items.Cast<ListItem>()
            .Where(li => li.Selected)
            .Select(li => li.Value)
            .ToList();
            DatabaseLayer db = new DatabaseLayer();
            int returnValue=db.RegisterUser(tbfirstName.Text.ToString().Trim(),tbLastName.Text.ToString().Trim(), tbEmail.Text.ToString().Trim(), UserDetails.Encrypt(tbPassword.Text.ToString().Trim()), tbPhone.Text.ToString().Trim(), tbPin.Text.ToString().Trim(), tbCity.Text.ToString().Trim(), tbaddressLine1.Text.ToString().Trim(), tbAddressLine2.Text.ToString().Trim(), ddlState.SelectedValue.ToString().Trim(), selectedValues);
            Session["UserId"] = returnValue;
            BusinessLayer bl = new BusinessLayer();
            UserDetails us = new UserDetails();
            bl.createUserSession(us, tbEmail.Text.ToString().Trim());
            Session["UserName"] = us.firstName + "," + us.lastName;
            Session["UserEmail"] = tbEmail.Text.ToString().Trim();
            Session["LastLogin"] = us.lastLogin;
            if (returnValue == 0)
                ErrorMessage.Text = "Email Id Already Registered.";
            else
                Response.Redirect("~/Scaleup/Mydashboard");
            //var manager = Context.GetOwinContext().GetUserManager<ApplicationUserManager>();
            //var signInManager = Context.GetOwinContext().Get<ApplicationSignInManager>();
            //var user = new ApplicationUser() { UserName = tbEmail.Text, Email = tbEmail.Text };
            //IdentityResult result = manager.Create(user, tbPassword.Text);

            //if (result.Succeeded)
            //{
            //    // For more information on how to enable account confirmation and password reset please visit http://go.microsoft.com/fwlink/?LinkID=320771
            //    //string code = manager.GenerateEmailConfirmationToken(user.Id);
            //    //string callbackUrl = IdentityHelper.GetUserConfirmationRedirectUrl(code, user.Id, Request);
            //    //manager.SendEmail(user.Id, "Confirm your account", "Please confirm your account by clicking <a href=\"" + callbackUrl + "\">here</a>.");

            //    signInManager.SignIn( user, isPersistent: false, rememberBrowser: false);
            //    IdentityHelper.RedirectToReturnUrl(Request.QueryString["ReturnUrl"], Response);
            //}
            //else 
            //{
            //    ErrorMessage.Text = result.Errors.FirstOrDefault();
            //}
        }
    }
}