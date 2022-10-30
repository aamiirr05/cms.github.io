using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class grid_teacher : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Page.Title = "Teacher Gridview";
        conn.ConnectionString = ConfigurationManager.AppSettings["ConnString"];
        conn.Open();
        SqlDataAdapter ada = new SqlDataAdapter("select T.t_id , T.first_name , T.middle_name , T.last_name , T.email ,  T.country , T.gender , S.gross  from teachers as T inner join teacher_salary as S on S.t_id = T.t_id ", conn);
        DataSet ds = new DataSet();
        ada.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
        conn.Close();
        conn.Dispose();
    }

    protected void Insert_Btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("teachers.aspx");
    }
}