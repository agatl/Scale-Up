using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OMIS675_Lab0.DataLayer;
using System.Data;
using System.Web.UI.WebControls;
using System.Security.Cryptography;
using System.Text;
using System.IO;

namespace OMIS675_Lab0.Business_Layer
{
    public class BusinessLayer
    {
        DatabaseLayer db = new DatabaseLayer();
        public UserDetails createUserSession(UserDetails user, string email)
        {

            DataTable dt = new DataTable();
            dt = db.createUserSession(email.Trim());
            foreach (DataRow dr in dt.Rows)
            {
                user.firstName = dr["first_name"].ToString().Trim();
                user.lastName = dr["last_name"].ToString().Trim();
                user.lastLogin = (DateTime)dr["last_login_time"];
                user.examinee_id = (int)dr["examinee_id"];
            }
            return user;
        }
        public void fetchSkills(int examinee_id, int skillid)
        {
            db.fetchSkills(examinee_id, skillid);
        }
        public DataSet getQuestions(int assessment_id, int examinee_id)
        {
            return db.getQuestions(assessment_id, examinee_id);
        }
        public int fetchAssessmentStatus(int assessment_id)
        {
            return db.fetchAssesmentStatus(assessment_id);
        }
        public void createAssessment(int examineeId, List<string> selectedSkills, string assessmentName)
        {
            db.createAssessment(examineeId, selectedSkills, assessmentName);
        }
        public void UpdateAssessmentStatus(int assessment_id)
        {
            db.updateAssessmentStatus(assessment_id);
        }
        public DataTable fetchResults(int assessment_id)
        {
            return db.fetchResults(assessment_id);
        }
        public void storeUserResult(int assessment_id, int correct_answers, int wrong_answers, int total, bool result)
        {
             db.storeUserResult(assessment_id,  correct_answers,  wrong_answers,  total,  result);
        }
        public void UpdateUserStatus(int examinee_id)
        {
            db.updateUserStatus(examinee_id);
        }
        public void removeSkills(int examineeId,int skillId)
        {
            db.removeSkills(examineeId, skillId);
        }
    }
    
    public class UserDetails
    {
        public string lastName { get; set; }
        public string firstName { get; set; }
        public string email_id { get; set; }
        public DateTime lastLogin { get; set; }
        public int examinee_id { get; set; }
        static readonly string PasswordHash = "P@@Sw0rd";
        static readonly string SaltKey = "S@LT&KEY";
        static readonly string VIKey = "@1B2c3D4e5F6g7H8";
        public static string Encrypt(string plainText)
        {
            byte[] plainTextBytes = Encoding.UTF8.GetBytes(plainText);

            byte[] keyBytes = new Rfc2898DeriveBytes(PasswordHash, Encoding.ASCII.GetBytes(SaltKey)).GetBytes(256 / 8);
            var symmetricKey = new RijndaelManaged() { Mode = CipherMode.CBC, Padding = PaddingMode.Zeros };
            var encryptor = symmetricKey.CreateEncryptor(keyBytes, Encoding.ASCII.GetBytes(VIKey));

            byte[] cipherTextBytes;

            using (var memoryStream = new MemoryStream())
            {
                using (var cryptoStream = new CryptoStream(memoryStream, encryptor, CryptoStreamMode.Write))
                {
                    cryptoStream.Write(plainTextBytes, 0, plainTextBytes.Length);
                    cryptoStream.FlushFinalBlock();
                    cipherTextBytes = memoryStream.ToArray();
                    cryptoStream.Close();
                }
                memoryStream.Close();
            }
            return Convert.ToBase64String(cipherTextBytes);
        }
        public static string Decrypt(string encryptedText)
        {
            byte[] cipherTextBytes = Convert.FromBase64String(encryptedText);
            byte[] keyBytes = new Rfc2898DeriveBytes(PasswordHash, Encoding.ASCII.GetBytes(SaltKey)).GetBytes(256 / 8);
            var symmetricKey = new RijndaelManaged() { Mode = CipherMode.CBC, Padding = PaddingMode.None };

            var decryptor = symmetricKey.CreateDecryptor(keyBytes, Encoding.ASCII.GetBytes(VIKey));
            var memoryStream = new MemoryStream(cipherTextBytes);
            var cryptoStream = new CryptoStream(memoryStream, decryptor, CryptoStreamMode.Read);
            byte[] plainTextBytes = new byte[cipherTextBytes.Length];

            int decryptedByteCount = cryptoStream.Read(plainTextBytes, 0, plainTextBytes.Length);
            memoryStream.Close();
            cryptoStream.Close();
            return Encoding.UTF8.GetString(plainTextBytes, 0, decryptedByteCount).TrimEnd("\0".ToCharArray());
        }
    }
   
}