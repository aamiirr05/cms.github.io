using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data; 
public partial class employee : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    void AddSalary()
    {
        Txt_Gross.Text = (float.Parse(Txt_HRA.Text) + float.Parse(Txt_Basic_Salary.Text) + float.Parse(Txt_TA.Text) + float.Parse(Txt_DA.Text)).ToString();

    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        conn.ConnectionString = ConfigurationManager.AppSettings["ConnString1"];
        try
        {
            string id = Request.QueryString["id"];
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(id))
                {
                    data_bind(int.Parse(id));
                    update_btn.Visible = true;
                    Delete_btn.Visible = true;
                    cmd_submit.Visible = false;
                    TXT_EMP_ID.Visible = true;
                    //Lbl_ID.Visible = true;
                    
                }
                else
                {
                    update_btn.Visible = false;
                    Delete_btn.Visible = false;
                    cmd_submit.Visible = true;
                    //TXT_EMP_ID.Visible = false;
                    //Lbl_ID.Visible = false;
                }
            }
        }
        catch (Exception ex) { }
    }
    public void data_bind(int emp_id)
    {
        conn.Open();

        SqlCommand cmd = new SqlCommand("select E.employee_id , E.employee_code , E.employee_name , E.employee_email , E.employee_state , E.employee_city , E.employee_adress , S.HRA , S.DA , S.TA , S.BS , S.GROSS from employee as E inner join employee_salary as S on E.employee_id = S.employee_id where E.employee_id = '" + emp_id + "' ", conn);

        SqlDataReader reader = cmd.ExecuteReader();

        if (reader.Read())
        {
            TXT_EMP_ID.Text = emp_id.ToString();
            Txt_Code.Text = reader["employee_code"].ToString();
            Txt_Name.Text = reader["employee_name"].ToString();
            Txt_Email.Text = reader["employee_email"].ToString();
            Txt_State.Text = reader["employee_state"].ToString();
            Txt_City.Text = reader["employee_city"].ToString();
            Txt_Address.Text = reader["employee_adress"].ToString();
            Txt_HRA.Text = double.Parse(reader["HRA"].ToString()).ToString("0");
            Txt_DA.Text = double.Parse(reader["DA"].ToString()).ToString("0");
            Txt_TA.Text = double.Parse(reader["TA"].ToString()).ToString("0");
            Txt_Basic_Salary.Text = double.Parse(reader["BS"].ToString()).ToString("0");
            Txt_Gross.Text = double.Parse(reader["GROSS"].ToString()).ToString("0");

        }
        reader.Close();
        conn.Close();
        conn.Dispose();
    }


    protected void Txt_HRA_TextChanged(object sender, EventArgs e)
    {
        try
        {
            AddSalary();
            Txt_DA.Focus();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
            Txt_HRA.Text = "0";
            Txt_HRA.Focus();
        }
    }

    protected void Txt_DA_TextChanged(object sender, EventArgs e)
    {
        try
        {
            AddSalary();
            Txt_TA.Focus();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
            Txt_DA.Text = "0";
            Txt_DA.Focus();
        }
    }

    protected void Txt_TA_TextChanged(object sender, EventArgs e)
    {
        try
        {
            AddSalary();
            Txt_Basic_Salary.Focus();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
            Txt_TA.Text = "0";
            Txt_TA.Focus();
        }
    }

    protected void Txt_BS_TextChanged(object sender, EventArgs e)
    {
        try
        {
            AddSalary();

        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
            Txt_Basic_Salary.Text = "0";
            Txt_Basic_Salary.Focus();
        }
    }

    protected void cmd_submit_Click(object sender, EventArgs e)
    {
        
        

        String id = "";
        conn.Open();
        SqlCommand cmd = new SqlCommand("insert into employee (employee_code , employee_name , employee_email , employee_state , employee_city , employee_adress , employee_salary) values('" + Txt_Code.Text + "' , '" + Txt_Name.Text + "' , '" + Txt_Email.Text + "' , '" + Txt_State.Text + "' , '" + Txt_City.Text + "' , '" + Txt_Address.Text + "' , '0')", conn);
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Close();

        SqlCommand cmd2 = new SqlCommand("select max(employee_id) as E from employee", conn);
        SqlDataReader dr2 = cmd2.ExecuteReader();
        if (dr2.Read())
        {
            id = dr2["E"].ToString();

        }
        dr2.Close();

        SqlCommand cmd3 = new SqlCommand("insert into employee_salary (employee_id , HRA , DA , TA , BS , GROSS) values ('" + id + "' , '" + Txt_HRA.Text + "' , '" + Txt_DA.Text + "' , '" + Txt_TA.Text + "' , '" + Txt_Basic_Salary.Text + "' , '" + Txt_Gross.Text + "')", conn);
        SqlDataReader dr3 = cmd3.ExecuteReader();
        dr3.Close();
        conn.Close();
        conn.Dispose();

        Response.Write("<script>alert('Data inserted successfully')</script>");
        Response.Redirect("grid_view.aspx");
        //Response.Write("Inserted successfully");
    }

    protected void update_btn_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("update employee set  employee_code = '" + Txt_Code.Text + "' , employee_name = '" + Txt_Name.Text + "' , employee_email = '" + Txt_Email.Text + "' , employee_state = '" + Txt_State.Text + "' , employee_city = '" + Txt_City.Text + "' , employee_adress = '" + Txt_Address.Text + "' where employee_id = '" + TXT_EMP_ID.Text + "'  ", conn);
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Close();

        SqlCommand cmd2 = new SqlCommand("update employee_salary set HRA = '" + Txt_HRA.Text + "' , DA = '" + Txt_DA.Text + "' , TA = '" + Txt_DA.Text + "' , BS = '" + Txt_Basic_Salary.Text + "' , GROSS = '" + Txt_Gross.Text + "' where employee_id = '" + TXT_EMP_ID.Text + "' ", conn);
        SqlDataReader reader1 = cmd2.ExecuteReader();
        reader1.Close();
        Response.Write("Data Updated successfully");
        conn.Close();
        conn.Dispose();
        Response.Redirect("grid_view.aspx");
    }

    protected void Delete_btn_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("delete from employee where employee_id = '" + TXT_EMP_ID.Text + "' ", conn);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Close();
        SqlCommand cmd2 = new SqlCommand("delete from employee_salary where employee_id = '" + TXT_EMP_ID.Text + "' ", conn);
        SqlDataReader dr2 = cmd2.ExecuteReader();
        dr2.Close();

        conn.Close();
        conn.Dispose();
        Response.Write("Data Deleted successfully");
        Response.Redirect("grid_view.aspx");
    }
}