using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Project1
{
    public partial class SignUp : System.Web.UI.Page
    {
        private string ConStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BSignUp_Click(object sender, EventArgs e)
        {
            if (isEmailExist(TBEmail.Text))
            {
                LCheckEmail.Text = "Email Already Exists";
                LCheckEmail.ForeColor = System.Drawing.Color.Red;
            }
            else
            {
                try
                {
                    using (SqlConnection conn = new SqlConnection(ConStr))
                    {
                        conn.Open();
                        string insertQuery = "INSERT INTO UserInfo (first_name, last_name, email, password) VALUES (@first_name, @last_name, @email, @password)";
                        using (SqlCommand cmd = new SqlCommand(insertQuery, conn))
                        {
                            cmd.Parameters.Add(new SqlParameter("@first_name", TBFirstName.Text));
                            cmd.Parameters.Add(new SqlParameter("@last_name", TBLastName.Text));
                            cmd.Parameters.Add(new SqlParameter("@email", TBEmail.Text));
                            cmd.Parameters.Add(new SqlParameter("@password", TBPassword.Text));

                            cmd.ExecuteNonQuery();
                        }
                    }

                    Response.Redirect("Login.aspx");
                }
                catch (Exception ex)
                {
                    // Log the exception (consider logging to a file or monitoring tool)
                    Response.Write("An error occurred: " + ex.Message);
                }
            }
        }

        private bool isEmailExist(string email)
        {
            using (SqlConnection conn = new SqlConnection(ConStr))
            {
                conn.Open();
                string query = "SELECT COUNT(1) FROM UserInfo WHERE email = @Email";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.Add(new SqlParameter("@Email", email));
                    return (int)cmd.ExecuteScalar() > 0;
                }
            }
        }
    }
}