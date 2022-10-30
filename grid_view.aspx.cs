using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
public partial class _Default : System.Web.UI.Page
{
    SqlConnection con=new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        con.ConnectionString = ConfigurationManager.AppSettings["ConnString1"];
        SqlDataAdapter ada = new SqlDataAdapter("select E.employee_id , E.employee_code , E.employee_name , E.employee_email , E.employee_state , E.employee_city , E.employee_adress , S.GROSS from employee as E inner join employee_salary as S on E.employee_id = S.employee_id", con);
         
        DataSet ds = new DataSet();
        ada.Fill(ds);
        GridView1.DataSource = ds.Tables[0];
        GridView1.DataBind();
    }

    protected void Insert_Btn_Click(object sender, EventArgs e)
    {
        Response.Redirect("employee.aspx");
    }
}
