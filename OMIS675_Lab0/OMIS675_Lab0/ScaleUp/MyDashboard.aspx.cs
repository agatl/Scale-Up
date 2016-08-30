using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OMIS675_Lab0.DataLayer;
using OMIS675_Lab0.Business_Layer;
using System.Data;

namespace OMIS675_Lab0.ScaleUp
{
    public partial class MyDashboard : System.Web.UI.Page
    {
        //System.Data.DataTable mytable = new System.Data.DataTable();
        BusinessLayer bb = new BusinessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {

            #region Session Variables
            WelcomeNote.Text = "Welcome  " + Session["UserName"].ToString().Trim();
            LastLogin.Text = "Your last login is on : " + Session["LastLogin"].ToString().Trim();
            #endregion
            //assessmentDropDown.Items.Add(new ListItem("Select", "0"));
            skills.SelectCommand = "SELECT Skills.skill_id, Skills.skill_name FROM Skills INNER JOIN SkillSet ON Skills.skill_id = SkillSet.skill_id where SkillSet.examinee_id= "+Session["UserId"].ToString().Trim()  + "ORDER BY Skills.skill_name";
            skills.DataBind();
            DatabaseLayer dl = new DatabaseLayer();
            System.Data.DataTable dt = new System.Data.DataTable();
            dt = dl.fetchAssessments(Convert.ToInt32(Session["UserId"].ToString().Trim()));
            foreach(DataRow dr in dt.Rows)
            {
                assessmentDropDown.Items.Add(new ListItem(dr["Assessment Name"].ToString().Trim(), dr["Assessment Id"].ToString().Trim()));
            }
            assessmentDropDown.DataBind();
        }
        
        protected void Logout_Click(object sender, EventArgs e)
        {
            bb.UpdateUserStatus(Convert.ToInt32(Session["UserId"].ToString().Trim()));
            Session.Abandon();
            Response.Redirect("~/Scaleup/Login");
        }

        
        //protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    AssessmentPanel.Visible = true;
        //    Label1.Text = GridView1.SelectedRow.Cells[0].Text;
        //    Session["Assessment_id"]=GridView1.SelectedRow.Cells[0].Text;
        //    Label2.Text = GridView1.SelectedRow.Cells[1].Text;
        //    Label3.Text = GridView1.SelectedRow.Cells[2].Text;
        //}
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Scaleup/addskill");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (assessmentDropDown.SelectedItem.Value != "0")
            {
                Session["assesmentid"] = assessmentDropDown.SelectedItem.Value;
                Session["assesmentName"] = assessmentDropDown.SelectedItem.Text;
                Response.Redirect("~/Scaleup/Result");
            }
            else
            {
                ErrorMessage.Text = "Select an Assessment";
            }   
        }

        protected void assessmentDropDown_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (assessmentDropDown.SelectedItem.Value != "0")
            {
                Session["assesmentid"] = assessmentDropDown.SelectedItem.Value;
                Session["assesmentName"] = assessmentDropDown.SelectedItem.Text;
            }
            //else
            //{
            //    ErrorMessage.Text = "Select an Assessment";
            //}


        }

        protected void btnModalPopup0_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ScaleUp/CreateAssessment");
        }

        protected void createAssessment_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ScaleUp/CreateAssessment");
        }
    }
}