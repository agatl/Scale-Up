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
    public partial class AddSkill : System.Web.UI.Page
    {
        BusinessLayer bl = new BusinessLayer();
        protected void Page_Load(object sender, EventArgs e)
        {
            #region Session Variables
            WelcomeNote.Text = "Welcome  " + Session["UserName"].ToString().Trim();
            LastLogin.Text = "Your last login is on : " + Session["LastLogin"].ToString().Trim();
            #endregion
            selectedSkillList.SelectCommand = "SELECT Skills.skill_id, Skills.skill_name FROM Skills INNER JOIN SkillSet ON Skills.skill_id = SkillSet.skill_id where SkillSet.examinee_id= " + Session["UserId"].ToString().Trim() + "ORDER BY Skills.skill_name";
            selectedSkillList.DataBind();
            availableSkillList.SelectCommand = "SELECT[skill_id],[skill_name] FROM[Skills] where skill_id not in (Select skill_id from skillset where examinee_id =" + Session["UserId"].ToString().Trim() + ") ORDER BY skill_name;";
            availableSkillList.DataBind();

            //DataSet ds = new DataSet();
            //ds = bl.fetchSkills(Convert.ToInt32(Session["UserId"].ToString().Trim()));
            //availableSkills.DataTextField = "skill_name";
            //availableSkills.DataValueField = "skill_id";
            //availableSkills.DataSource = ds.Tables[0];
            //selectedSkills.DataBind();
            //selectedSkills.DataTextField = "skill_name";
            //selectedSkills.DataValueField = "skill_id";
            //selectedSkills.DataSource = ds.Tables[1];
            //selectedSkills.DataBind();
        }

        protected void delete_Click(object sender, EventArgs e)
        {
            if (selectedSkills.SelectedItem != null)
            {
                //selectedSkillValidation.Enabled = true;
                //selectedSkillValidation.EnableClientScript = true;
                //availableSkillValidation.Enabled = false;
                //availableSkillValidation.EnableClientScript = false;
                availableSkills.Items.Add(new ListItem(selectedSkills.SelectedItem.Text,selectedSkills.SelectedItem.Value));
                
                BusinessLayer bl = new BusinessLayer();
                bl.removeSkills(Convert.ToInt32(Session["UserId"].ToString()), Convert.ToInt32(selectedSkills.SelectedItem.Value));
                    selectedSkills.Items.Remove(selectedSkills.SelectedItem);

            }
        }

        protected void add_Click(object sender, EventArgs e)
        {
            if (availableSkills.SelectedItem != null)
            {
                selectedSkills.Items.Add(new ListItem(availableSkills.SelectedItem.Text, availableSkills.SelectedItem.Value));
                availableSkills.Items.Remove(availableSkills.SelectedItem);

            }
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            bl.UpdateUserStatus(Convert.ToInt32(Session["UserId"].ToString().Trim()));
            Session.Abandon();
            Response.Redirect("~/Scaleup/Login");
        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            foreach( ListItem str in selectedSkills.Items)
            {
                bl.fetchSkills(Convert.ToInt32(Session["UserId"].ToString().Trim()), Convert.ToInt32(str.Value));
            }
            Response.Redirect("~/Scaleup/Mydashboard");
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/Scaleup/Mydashboard");
        }
    }
}