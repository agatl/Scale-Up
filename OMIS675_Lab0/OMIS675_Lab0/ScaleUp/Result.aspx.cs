using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OMIS675_Lab0.Business_Layer;
using System.Data;

namespace OMIS675_Lab0.ScaleUp
{
    public partial class Result : System.Web.UI.Page
    {
        BusinessLayer bb = new BusinessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            #region Session Variables
            WelcomeNote.Text = "Welcome    " + Session["UserName"].ToString().Trim();
            LastLogin.Text = "Your last login is on : " + Session["LastLogin"].ToString().Trim();
            #endregion
            int returnValueFromDB = 0;
            returnValueFromDB = bb.fetchAssessmentStatus(Convert.ToInt32(Session["assesmentid"].ToString().Trim()));
            if (returnValueFromDB == 2)
            {
                resultPanel.Visible = true;
                Dictionary<string, string> userValues = new Dictionary<string, string>();
                Dictionary<string, string> correctValues = new Dictionary<string, string>();
                userValues = (Dictionary<string, string>)Session["userchoice"];
                correctValues = (Dictionary<string, string>)Session["correctAnswers"];
                if (userValues != null && correctValues != null)
                {
                    GradeExam(userValues, correctValues);
                    // nullifiying user session 
                    Session["userchoice"] = null;
                }
                else
                {
                    //retrive data from Database.
                    DataTable dt = new DataTable();
                    dt=bb.fetchResults(Convert.ToInt32(Session["assesmentid"].ToString().Trim()));
                    foreach (DataRow dr in dt.Rows)
                    {
                        lblAssessment_Name.Text = "Assessment Name: " + Session["assesmentName"].ToString();
                        lblAssessment_Date.Text = "Assessment Taken at: " + dr["assessment_finished_date"].ToString();
                        Label1.Text = "Questions Answered: " + dr["total"].ToString();
                        Label2.Text = "Questions Answered were Correct: " + dr["correct_answers"].ToString();
                        Label3.Text = "Questions Answered were wrong: " + dr["wrong_answers"].ToString();
                        Label4.Text = "Pass/Fail: ";
                        //string re = (double)(correctcount * 100) / total >= 70 ? "Pass" : "Fail";
                        if (Convert.ToBoolean(dr["result"]) ==true)
                            Label5.Text = " Cleared!!";
                        else
                            Label6.Text = " Fail";
                    }
                    
                }
                //correctValues = null;
            }
            else if(returnValueFromDB==1)
            {
                examStartPanel.Visible = true;
            }
        }
        protected void Logout_Click(object sender, EventArgs e)
        {
            bb.UpdateUserStatus(Convert.ToInt32(Session["UserId"].ToString().Trim()));
            Session.Abandon();
            Response.Redirect("~/Scaleup/Login");
        }
        public void GradeExam(Dictionary<string, string> userQA, Dictionary<string, string> dbQA)
        {
            //Exam e = new Exam();
            int incorrectCount = 0;
            int correctcount = 0;
            int total = 0;

            foreach (KeyValuePair<string, string> entry in dbQA)
            {
                //test to see if kv pair exists in userQA...
                //if not, do something...
                if (!userQA.ContainsKey(entry.Key))
                {
                    // the user didn't answer the question at all maybe
                    incorrectCount = incorrectCount + 1;
                }
                else if (entry.Value != userQA[entry.Key])
                {
                    // the answers do not match so the user gave an incorrect answer
                    incorrectCount = incorrectCount + 1;
                }
                // else the user answered the question and answered it correctly
                total = total + 1;
            }
            correctcount = total - incorrectCount;
            //populate the exam object properties...
            lblAssessment_Name.Text = "Assessment Name: " + Session["assesmentName"].ToString();
            lblAssessment_Date.Text = "Assessment Taken at: " + DateTime.Now.ToString();
            Label1.Text = "Questions Answered: " + total;
            Label2.Text = "Questions Answered were Correct: " + correctcount;
            Label3.Text = "Questions Answered were wrong: " + incorrectCount;
            Label4.Text = "Pass/Fail: ";
            bool result;
            string re = (double)(correctcount * 100) / total >= 70 ? "Pass" : "Fail";
            if (re == "Pass")
            {
                Label5.Text = " Cleared!!";
                result = true;
            }
            else
            {
                Label6.Text = " Fail";
                result = false;
            }
            //Save to Database
            bb.storeUserResult(Convert.ToInt32(Session["assesmentid"].ToString().Trim()), correctcount, incorrectCount, total, result);

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Scaleup/test");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Scaleup/Mydashboard");
        }
    }
}