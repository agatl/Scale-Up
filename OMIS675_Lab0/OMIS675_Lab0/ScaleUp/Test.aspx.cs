using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OMIS675_Lab0.ScaleUp
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            #region Session Variables
            WelcomeNote.Text = "Welcome  " + Session["UserName"].ToString().Trim();
            LastLogin.Text = "You last login is on : " + Session["LastLogin"].ToString().Trim();
            #endregion
        }

        
    }
}