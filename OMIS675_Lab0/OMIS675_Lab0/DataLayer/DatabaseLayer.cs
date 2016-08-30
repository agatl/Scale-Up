using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace OMIS675_Lab0.DataLayer
{
    public class DatabaseLayer
    {
        public string connString = @"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=z1765389;User ID=OMIS675FA;Password=omis675 ";
        public int ValidateLogin(string Email,string Password)
        {
            // connString = @"Data Source= omisbi3.niunt.niu.edu;Initial Catalog=z1765389;User ID=OMIS675FA;Password=omis675 ";
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("ValidateLogin", conn);
            //SqlDataReader sqlR;
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@EmailAddress", Email));
            cmd.Parameters.Add(new SqlParameter("@Password", Password));
            SqlParameter returnParameter = cmd.Parameters.Add("RetVal", SqlDbType.Int);
            returnParameter.Direction = ParameterDirection.ReturnValue;
            cmd.ExecuteNonQuery();
            conn.Close();
            return (int)returnParameter.Value;
        }

        public int RegisterUser(string tbfirstName, string tbLastName, string tbEmail, string tbPassword, 
            string tbPhone, string tbPin, string tbCity, string tbaddressLine1, string tbAddressLine2, 
            string ddlState, List<string> checkedSkills)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("RegisterUser", conn);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.Add(new SqlParameter("@first_name", tbfirstName));
            cmd.Parameters.Add(new SqlParameter("@last_name", tbLastName));
            cmd.Parameters.Add(new SqlParameter("@email_id", tbEmail));
            cmd.Parameters.Add(new SqlParameter("@password", tbPassword));
            cmd.Parameters.Add(new SqlParameter("@phone_no", tbPhone));
            cmd.Parameters.Add(new SqlParameter("@zipcode", tbPin));
            cmd.Parameters.Add(new SqlParameter("@city", tbCity));
            cmd.Parameters.Add(new SqlParameter("@Address", string.IsNullOrEmpty(tbAddressLine2) ==true ?tbaddressLine1: tbaddressLine1 + tbAddressLine2));
            cmd.Parameters.Add(new SqlParameter("@state", ddlState));
            SqlParameter returnParameter = cmd.Parameters.Add("RetVal", SqlDbType.Int);
            returnParameter.Direction = ParameterDirection.ReturnValue;
            cmd.ExecuteNonQuery();
            
            int returnValue= (int)returnParameter.Value;
            if(returnValue!=0)
            {
                foreach (string item in checkedSkills)
                {
                    SqlCommand cmd1 = new SqlCommand("CreateSkillSet", conn);
                    cmd1.CommandType = CommandType.StoredProcedure;
                    cmd1.Parameters.Add(new SqlParameter("@skill_id", item));
                    cmd1.Parameters.Add(new SqlParameter("@examinee_id", returnValue));
                    cmd1.ExecuteNonQuery();
                    cmd1.Dispose();
                }

            }
            conn.Close();
            return returnValue;
        }

        internal void createAssessment(int examineeId, List<string> selectedSkills,string assessmentName)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("CreateAssessment", conn);
            cmd.Parameters.Add(new SqlParameter("@examinee_id", examineeId));
            cmd.Parameters.Add(new SqlParameter("@assessmentName", assessmentName));
            cmd.CommandType = CommandType.StoredProcedure;
            SqlParameter returnParameter = cmd.Parameters.Add("RetVal", SqlDbType.Int);
            returnParameter.Direction = ParameterDirection.ReturnValue;
            cmd.ExecuteNonQuery();
            int returnValue = (int)returnParameter.Value;
            if (returnValue != 0) {
                foreach (string item in selectedSkills)
                {
                    SqlCommand cmd1 = new SqlCommand("CreateAssessmentDetails", conn);
                    cmd1.CommandType = CommandType.StoredProcedure;
                    cmd1.Parameters.Add(new SqlParameter("@skill_id", item));
                    cmd1.Parameters.Add(new SqlParameter("@assessment_id", returnValue));
                    cmd1.Parameters.Add(new SqlParameter("@examinee_id", examineeId));
                    cmd1.ExecuteNonQuery();
                    cmd1.Dispose();
                }
            }
            conn.Close();
            //return returnValue;
        }

        public DataTable createUserSession(string email)
    {
        SqlConnection conn = new SqlConnection(connString);
        conn.Open();
        SqlCommand cmd = new SqlCommand("CreateUserSession", conn);
            DataTable dt = new DataTable();
            cmd.Parameters.Add(new SqlParameter("@email_id", email));
            using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                adp.Fill(dt);
            }
            conn.Close();
            return dt;    
        }
        public void fetchSkills(int examinee_id,int skillid)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("SaveSkills", conn);
            cmd.Parameters.Add(new SqlParameter("@examinee_id", examinee_id));
            cmd.Parameters.Add(new SqlParameter("@skill_id", skillid));
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            conn.Close();

        }
        public void removeSkills(int examinee_id, int skillid)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("RemoveSkill", conn);
            cmd.Parameters.Add(new SqlParameter("@examinee_id", examinee_id));
            cmd.Parameters.Add(new SqlParameter("@skillId", skillid));
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            conn.Close();

        }
        public void updateAssessmentStatus(int assessment_id)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("UpdateAssessmentStatus", conn);
            cmd.Parameters.Add(new SqlParameter("@assessment_id", assessment_id));
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            conn.Close();
        }
        public void updateUserStatus(int examinee_id)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("UpdateUserStatus", conn);
            cmd.Parameters.Add(new SqlParameter("@examinee_id", examinee_id));
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            conn.Close();

        }
        public void storeUserResult(int assessment_id,int correct_answers,int wrong_answers,int total,bool result)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("InsertResult", conn);
            cmd.Parameters.Add(new SqlParameter("@assessment_id", assessment_id));
            cmd.Parameters.Add(new SqlParameter("@correct_answers", correct_answers));
            cmd.Parameters.Add(new SqlParameter("@wrong_answers", wrong_answers));
            cmd.Parameters.Add(new SqlParameter("@total", total));
            cmd.Parameters.Add(new SqlParameter("@result", result));
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            conn.Close();

        }
        public DataTable fetchResults(int assessment_id)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("FetchResult", conn);
            DataTable dt = new DataTable();
            cmd.Parameters.Add(new SqlParameter("@assessment_id", assessment_id));
            using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                adp.Fill(dt);

            }
            conn.Close();
            return dt;

        }
        public DataTable fetchAssessments(int examinee_id)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("FetchAssessments", conn);
            DataTable dt = new DataTable();
            cmd.Parameters.Add(new SqlParameter("@examinee_id", examinee_id));
            using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                adp.Fill(dt);

            }
            conn.Close();
            return dt;
            
        }
        public int fetchAssesmentStatus(int assessment_id)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("CheckAssessments", conn);
            cmd.Parameters.Add(new SqlParameter("@assessment_id", assessment_id));
            //cmd.Parameters.Add(new SqlParameter("@skill_id", skillid));
            cmd.CommandType = CommandType.StoredProcedure;
            string nameValue = string.Empty;
            using (SqlDataReader reader = cmd.ExecuteReader())
            {
                while (reader.Read())
                {
                    //Send these to your WinForms textboxes
                    nameValue = reader["return"].ToString();
                    //string classValue = reader["Class"].ToString();
                    //string schoolValue = reader["School"].ToString();
                    
                }
            }
            conn.Close();
            return Convert.ToInt32(nameValue);
            //SqlDataReader dr = null;
            //dr=cmd.ExecuteReader();
            //return Convert.ToInt32(dr["return".ToString().Trim()]);
        }
        public DataSet getQuestions(int assessment_id,int examinee_id)
        {
            SqlConnection conn = new SqlConnection(connString);
            conn.Open();
            SqlCommand cmd = new SqlCommand("GetQuestions", conn);
            DataSet dt = new DataSet();
            cmd.Parameters.Add(new SqlParameter("@assessmentid", assessment_id));
            cmd.Parameters.Add(new SqlParameter("@examinee_id", examinee_id));
            using (SqlDataAdapter adp = new SqlDataAdapter(cmd))
            {
                cmd.CommandType = CommandType.StoredProcedure;
                adp.Fill(dt);
            }
            conn.Close();
            return dt;
        }
    }
}