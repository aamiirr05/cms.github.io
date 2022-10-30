using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class grid_student : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Page.Title = "Student Gridview";
        conn.ConnectionString = ConfigurationManager.AppSettings["ConnString"];
        conn.Open();
        SqlDataAdapter ada = new SqlDataAdapter("select s_id , first_name , middle_name , last_name , email ,  country , address , gender  from students",conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        conn.Close();
        conn.Dispose();
    }

    protected void Insert_Btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("student.aspx");
    }
}