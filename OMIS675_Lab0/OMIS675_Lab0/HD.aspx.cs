using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;

namespace OMIS675_Lab0.MyITHelpDesk
{
    public partial class HD : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] != null)
                Response.Redirect("~/Scaleup/Mydashboard");
        }

        protected void btnCreate_Click(object sender, EventArgs e)
        {

            if (tbTicket.Visible == false)
            {

                tbTicket.Visible = true;
                tbTicket.Text = "CLICK SUBMIT to submit a new Help Desk Ticket will be created with the following details: " + System.Environment.NewLine + System.Environment.NewLine + System.Environment.NewLine +
                    "USER INFORMATION:" + System.Environment.NewLine + tbUserFirst.Text + " " + tbUserLast.Text + System.Environment.NewLine + tbUserPhon.Text + System.Environment.NewLine +
                    tbUserEmail.Text + System.Environment.NewLine + System.Environment.NewLine + "SYSTEM INFORMATION:" + System.Environment.NewLine + tbSysName.Text + System.Environment.NewLine + tbIP.Text + System.Environment.NewLine +
                    ddOS.SelectedItem.Text + System.Environment.NewLine + rbFF.SelectedItem.Text + System.Environment.NewLine + System.Environment.NewLine + "PROBLEM INFORMATION:" + System.Environment.NewLine +
                    tbProblem.Text + System.Environment.NewLine + "Priority =" + rbPriority.Text;

                btnCreate.Text = "SUBMIT";
            }
            else
            {
                Submit();

            }
        }
        public void Write2DB()
        {
            SqlConnection conn = new SqlConnection();
            SqlCommand cmd1 = new SqlCommand();

            String cmdString1 = "Insert Incident (CreateDate, fName, lName, " +
              " phone, email, sysName, IP, OS, FF, Description, Status, ResponseTime, " + " ResolutionTime) Values " + "('" + DateTime.Now + "','" + tbUserFirst.Text + "','" + tbUserLast.Text + "','" + tbUserPhon.Text + "','" + tbUserEmail.Text + "','" +
           tbSysName.Text + "','" + tbIP.Text + "','" + ddOS.SelectedItem.Text + "','" + rbFF.SelectedItem.Text + "' ,'" + tbProblem.Text + "' ,'" + "OPEN" + "' ,'" + rbPriority.Text + "' ,' ')";


            conn = new SqlConnection(@"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=z1765389;User ID=OMIS675FA;Password=omis675 ");

            cmd1 = new SqlCommand(cmdString1, conn);
            conn.Open();

            cmd1.ExecuteNonQuery();
            conn.Close();

        }
        public void Submit()
        {

            tbTicket.Visible = false;
            Write2DB();
            SendMail();
            Clear();
            btnCreate.Text = "Create Ticket";
        }

        public void Clear()
        {
            tbUserFirst.Text = "";
            tbUserLast.Text = "";
            tbUserPhone.Text = "";
            tbUserEmail.Text = "";
            tbSysName.Text = "";
            tbIP.Text = "";
            tbProblem.Text = "";
        }
        public void SendMail()
    {
        MailAddress from = new MailAddress(tbUserEmail.Text, "support");
        MailAddress to = new MailAddress(tbUserEmail.Text);
        MailMessage mail = new MailMessage(from, to);
        mail.Subject = "Help Desk Ticket Submitted";
      
        mail.Body = tbTicket.Text;
        
        SmtpClient ms = new SmtpClient("smtp.staff.niu.edu");
      
        ms.UseDefaultCredentials = false;
        ms.Send(mail);
        Response.Redirect("/Z1765389/");
    }

        protected void tbUserLast_TextChanged(object sender, EventArgs e)
        {

        }
    }
}
