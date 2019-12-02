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
    public partial class AdminConsole : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Cookies["admin"] == null)
            {
                Response.Redirect("/AdminLogin.aspx");
            }

        }

        protected void deleteUser_Click(object sender, EventArgs e)
        {
            try { 
            deleteErrorLabel.Visible = false;
            if(!(GridView1.SelectedIndex > 0))
            {
                    deleteErrorLabel.Text = "No user selected";
                    deleteErrorLabel.Visible = true;
                    return;
            }
            GridViewRow row = GridView1.Rows[GridView1.SelectedIndex];
            int userId = Convert.ToInt32(row.Cells[1].Text);
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ForumApplicationConnectionString"].ConnectionString))
            {
                con.Open();
                using (SqlCommand com = new SqlCommand("DELETE FROM [User] WHERE User_Id=@ID", con))
                {
                    com.Parameters.AddWithValue("@ID", userId);
                    com.ExecuteNonQuery();
                    Response.Redirect("/AdminConsole.aspx");
                    }
                }
            }
            catch (Exception)
            {
                deleteErrorLabel.Text = "Unable to delete user.";
                deleteErrorLabel.Visible = true;
            }

        }
    }
}