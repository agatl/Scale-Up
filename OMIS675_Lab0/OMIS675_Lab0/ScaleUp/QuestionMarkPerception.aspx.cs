using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Data;
using OMIS675_Lab0.Business_Layer;
using System.Text;

namespace OMIS675_Lab0.ScaleUp
{
    public partial class QuestionMarkPerception : System.Web.UI.Page
    {
        BusinessLayer bl = new BusinessLayer();
        System.Collections.Generic.Dictionary<string ,string > result = new Dictionary<string, string>();
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet questionPaper = new DataSet();
            Label1.Text = "testststststs ";
            Label1.Text = Label1.Text+ Session["Assessment_id"].ToString().Trim();
            //questionPaper=bl.getQuestions(Convert.ToInt32(Session["Assessment_id"].ToString().Trim()));
            //createQuestions(questionPaper);

        }
        public void createQuestions(DataSet ds)
        {
            HtmlGenericControl NewDiv = new HtmlGenericControl();
            NewDiv.ID = "divcreated";
            //NewDiv.InnerHtml = "<label>hi</label>";
            questionmark.Controls.Add(NewDiv);
            NewDiv.InnerHtml = "<br/>";
            StringBuilder mainContent = new StringBuilder();
            int questionNo = 1;
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                Label lbl = new Label();
                lbl.ID = Convert.ToString(questionNo++);
                
                string question = "<br/><div><asp:Label ID= \"" + lbl.ID + "\" runat = \"server\" >" + lbl.ID + "  " + dr["question"].ToString().Trim() + "</asp:Label><br/>";
                result.Add("lbl"+lbl.ID, dr["correctanswer"].ToString().Trim());
                mainContent.Append(question);
                //NewDiv.InnerHtml = NewDiv.InnerHtml+ question;
                StringBuilder sss = new StringBuilder();
                sss.Append("rblist").Append(lbl.ID);
               // RadioButtonList rbList = new RadioButtonList();
                string radio= "<br/><asp:RadioButtonList ID = \"" + sss.ToString()+"\" runat = \"server\" >";
                mainContent.Append(radio);
                foreach (DataRow str in ds.Tables[1].Rows)
                {
                    string option = String.Empty;
                    if (dr["question_id"].ToString().Trim() == str["question_id"].ToString().Trim())
                    {
                        if (str["option"].ToString().Trim() != null)
                            option= option+ "<Input \" type = \"radio\" name="+ lbl.ID + "  Value = \"" + str["option"].ToString().Trim()+"\"" + "> " + str["option"].ToString().Trim() + " </Input><br/>";
                            mainContent.Append(option);
                            //NewDiv.InnerHtml = NewDiv.InnerHtml + option;
                        //rbList.Items.Add(new ListItem(str["option"].ToString().Trim(), str["option"].ToString().Trim()));
                    }
                }
                mainContent.Append("</asp:RadioButtonList><br/><br/></div>");
                //NewDiv.InnerHtml = NewDiv.InnerHtml + "</asp:RadioButtonList>";
              //  NewDiv.Controls.Add(lbl);
               // NewDiv.Controls.Add(rbList);
            }
            NewDiv.InnerHtml =mainContent.ToString();
            Session["result"] = result;
        }
        public RadioButtonList createRadioButtonList(RadioButtonList rb, DataRow str,string id)
        {
            ListItem lt = new ListItem();
            rb.Items.Add(new ListItem(str["option_1"].ToString().Trim(), str["option_id"].ToString().Trim()));
            rb.Items.Add(new ListItem("Text 2", "Value 2"));
            rb.Items.Add(new ListItem("Text 3", "Value 3"));
            rb.ID = "rb_"+id;
            rb.Items.Add(str["option_1"].ToString().Trim());
            rb.Items.Add(str["option_2"].ToString().Trim());
            rb.Items.Add(str["option_3"].ToString().Trim());
            rb.Items.Add(str["option_4"].ToString().Trim());
            rb.DataBind();
            return rb;

        }
       

        protected void Logout_Click(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string count = "1";
            string lbl = "lbl" + count;
            HtmlGenericControl divControl = (HtmlGenericControl)questionmark.FindControl(lbl);
            if ((divControl != null))
            {
                divControl.ToString();
                // Get All Controll inside the div into string . 
                // order[i] = divControl.ToString();
            }
            foreach (Control c in questionmark.Controls)
            {
                foreach (HtmlInputRadioButton rb in c.Controls.OfType<HtmlInputRadioButton>())
                {
                    Label1.Text = rb.Name;
                    Response.Redirect("Default");
                }
            }
        }
    }
}