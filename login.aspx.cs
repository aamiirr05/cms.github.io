using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
public partial class login : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Page.Title = "Login";
        conn.ConnectionString = ConfigurationManager.AppSettings["ConnString"];
    }
     
    protected void Login_Page_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand query = new SqlCommand("select admin_username , admin_password from admin_master where admin_username= '" + User.Text + "' ", conn);

        SqlDataReader reader = query.ExecuteReader();
        if (reader.Read())
        {
            User.Text = reader["admin_username"].ToString();
            Password.Text = reader["admin_password"].ToString();
            Response.Redirect("dashboard.aspx");
        }

        else
        {
            Response.Write("<script>alert('Incorrect Username/password')</script>");

        }

        reader.Close();
        conn.Close();
        conn.Dispose();

    }
}