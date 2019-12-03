using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Forum
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void loginBtn_Click(object sender, EventArgs e)
        {
            errorLbl.Visible = false;


            String username = usernameTxt.Text;
            String password = passwordTxt.Text;
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ForumApplicationConnectionString"].ConnectionString);
            SqlCommand checkAuth = new SqlCommand("SELECT COUNT(*) FROM [Admin] WHERE (Admin_Username = @user) and (Admin_Password = @pass)", conn);
            checkAuth.Parameters.AddWithValue("@user", username);
            checkAuth.Parameters.AddWithValue("@pass", password);

            checkAuth.Connection = conn;
            conn.Open();

            int UserExist = (int)checkAuth.ExecuteScalar();

            if (UserExist > 0)
            {
                Session["admin"] = "true";
                Response.Redirect("/AdminConsole.aspx");
                conn.Close();
            }
            else
            {
                errorLbl.Visible = true;
                conn.Close();
            }
        }
    }
}