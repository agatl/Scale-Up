using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using OMIS675_Lab0.Business_Layer;
using System.Text;

namespace OMIS675_Lab0.ScaleUp
{
    public partial class CreateAssessment : System.Web.UI.Page
    {
        BusinessLayer bb = new BusinessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = "SELECT Skills.skill_id, Skills.skill_name FROM Skills INNER JOIN SkillSet ON Skills.skill_id = SkillSet.skill_id where SkillSet.examinee_id= " + Session["UserId"].ToString().Trim() + "ORDER BY Skills.skill_name";
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/ScaleUp/Mydashboard");
        }

        protected void CREATE_Click(object sender, EventArgs e)
        {
            List<string> selectedValues = checkboxlist.Items.Cast<ListItem>().Where(li => li.Selected)
            .Select(li => li.Value)
            .ToList();   
            int examineeId=Convert.ToInt32(Session["UserId"].ToString().Trim());
            bb.createAssessment(examineeId, selectedValues, tbAssessmentName.Text);
            checkboxlist.SelectedItem.Selected = false;
            Label1.Visible = true; 
            Label1.Text = tbAssessmentName.Text + "  sucessfully created.";
            tbAssessmentName.Text = null;
        }
    }
}