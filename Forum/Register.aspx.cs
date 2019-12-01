using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Forum
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void registerBtn_Click(object sender, EventArgs e)
        {
            String username = usernameTxt.Text;
            String email = emailTxt.Text;
            String first = fNameTxt.Text;
            String last = lNameTxt.Text;
            String pass = passwordTxt.Text;

            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO [User] (User_Username, User_Password, User_Email, User_FName, User_LName) VALUES (@username, @pass, @email, @first, @last)";
            cmd.Connection = db;
            cmd.Parameters.Add("@username", DbType.String).Value = username;
            cmd.Parameters.Add("@pass", DbType.String).Value = pass;
            cmd.Parameters.Add("@email", DbType.String).Value = email;
            cmd.Parameters.Add("@first", DbType.String).Value = first;
            cmd.Parameters.Add("@last", DbType.String).Value = last;

            cmd.Connection = db;
            db.Open();
            if (cmd.ExecuteNonQuery() == 1)
            {
                Response.Write("<script>alert('Registration successful. Please log in.');window.location = 'Login.aspx';</script>");
            }
            db.Close();
        }
    }
}