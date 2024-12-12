using System;
using System.Configuration;
using System.Data.SqlClient;

namespace Project1
{
    public partial class Login : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BSignIn_Click(object sender, EventArgs e)
        {
            int userId = CheckUser(TBEmail.Text, TBPassword.Text);
            if (userId > 0)
            {
                // Store user ID and email in session
                Session["UserID"] = userId;
                //Session["LoggedInUser"] = TBEmail.Text;
                Response.Redirect("Expenses.aspx");
            }
            else
            {
                LResult.Text = "Invalid username or password";
                LResult.ForeColor = System.Drawing.Color.Red;
            }

        }

        private int CheckUser(string username, string password)
        {
            string ConStr = ConfigurationManager.ConnectionStrings["MyConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(ConStr))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT user_id FROM UserInfo WHERE email = @username AND password = @password", con))
                {
                    cmd.Parameters.AddWithValue("@username", username);
                    cmd.Parameters.AddWithValue("@password", password);
                    con.Open();
                    object result = cmd.ExecuteScalar();
                    if (result != null)
                    {
                        return Convert.ToInt32(result);
                    }
                }
            }
            return -1; // Return -1 if user is not found
        }
    }
}