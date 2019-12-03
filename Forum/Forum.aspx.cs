using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace Forum
{
    public partial class Forum : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void subBtn_Click(object sender, EventArgs e)
        {
            String subject = subjectTxt.Text;

            if (Session["username"] == null)
            {
                Response.Redirect("/Login.aspx");
            }


            String username = Session["username"].ToString();
            var userid =0;

            SqlConnection db = new SqlConnection(SqlDataSource1.ConnectionString);
            SqlCommand cmd = new SqlCommand();
            SqlCommand cmdid = new SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmdid.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO [Thread] (Thread_Subject, User_Id) VALUES (@subject, @userid)";
            cmdid.CommandText = "Select User_Id from [User] where User_Username = '" + username + "';";
            cmdid.Connection = db;
            db.Open();
            SqlDataReader rdr = cmdid.ExecuteReader();
            while (rdr.Read())
            {
                userid = rdr.GetInt32(0);
            }
            db.Close();
            cmd.Parameters.Add("@subject", DbType.String).Value = subject;
            cmd.Parameters.Add("@userid", DbType.Int16).Value = userid;




            cmd.Connection = db;
            db.Open();
            if (cmd.ExecuteNonQuery() == 1)
            {
                Response.Write("<script>alert('Successfully created.');window.location = 'Forum.aspx';</script>");
            }
            db.Close();
        }
    }
}