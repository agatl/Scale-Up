using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using OMIS675_Lab0.Business_Layer;
using System.Data;
using System.Configuration;
using System.Web.Configuration;

namespace OMIS675_Lab0.ScaleUp
{
    public partial class Examination : System.Web.UI.UserControl
    {
        BusinessLayer bb = new BusinessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                ScriptManager ScriptManager1 = (ScriptManager)Page.Master.FindControl("ScriptManager1");
                if (!ScriptManager1.IsInAsyncPostBack)

                   // WebConfigurationManager.AppSettings["PFUserName"];
                
                Session["timeout"] = DateTime.Now.AddMinutes(Convert.ToInt32(ConfigurationManager.AppSettings["TimerValue"].ToString())).ToString();
                loadgrid();
            }
        }
        protected void timer1_tick(object sender, EventArgs e)
        {
            if (0 > DateTime.Compare(DateTime.Now, DateTime.Parse(Session["timeout"].ToString())))
            {
                lblTimer.Text = string.Format("Time Remaining : 00:{0}:{1}", ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).TotalMinutes).ToString(), ((Int32)DateTime.Parse(Session["timeout"].ToString()).Subtract(DateTime.Now).Seconds).ToString());
            }
            else
            {
                timer1.Enabled = true;
                submit_Click(null, EventArgs.Empty);
                //Response.Redirect("Logout.aspx");

            }
        }
        private void loadgrid()
        {
            DataSet ds = new DataSet();
            ds = bb.getQuestions(Convert.ToInt32(Session["assesmentid"].ToString().Trim()), Convert.ToInt32(Session["UserId"].ToString().Trim()));
            GridView1.DataSource = ds.Tables[0];
            Dictionary<string, string> correctanswer = new Dictionary<string, string>();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                correctanswer.Add(dr["question_id"].ToString().Trim(), dr["correctanswer"].ToString().Trim());
            }
            Session["correctAnswers"] = correctanswer;
            GridView1.DataBind();
        }
        protected void submit_Click(object sender, EventArgs e)
        {
               Dictionary<string, string> userchoice = new Dictionary<string, string>();
            //    int question_id = 0;
               //string option = String.Empty;
               foreach (GridViewRow row in GridView1.Rows)
                {
                Label lbl = row.FindControl("question_id") as Label;
                RadioButton rb1 = row.FindControl("option1") as RadioButton;
                RadioButton rb2 = row.FindControl("option2") as RadioButton;
                RadioButton rb3 = row.FindControl("option3") as RadioButton;
                RadioButton rb4 = row.FindControl("option4") as RadioButton;
                if (rb1.Checked)
                {
                    userchoice.Add(lbl.Text, "option1");
                }
                else if (rb2.Checked)
                {
                    userchoice.Add(lbl.Text, "option2");
                }
                else if (rb3.Checked)
                {
                    userchoice.Add(lbl.Text, "option3");
                }
                else if (rb4.Checked)
                {
                    userchoice.Add(lbl.Text, "option4");
                }       
            }
            Session["userchoice"] = userchoice;
            bb.UpdateAssessmentStatus(Convert.ToInt32(Session["assesmentid"].ToString().Trim()));
            Response.Redirect("~/Scaleup/Result");
        }
    }
}
