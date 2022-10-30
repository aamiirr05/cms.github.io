using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class teachers : System.Web.UI.Page
{
    SqlConnection conn = new SqlConnection();
    protected void Page_Load(object sender, EventArgs e)
    {
        this.Page.Title = "Insert Teacher";
        conn.ConnectionString = ConfigurationManager.AppSettings["ConnString"];
        try
        {
            string id = Request.QueryString["id"];

            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(id))
                {
                    bindedit(int.Parse(id));
                    update_btn.Visible = true;
                    Delete_btn.Visible = true;
                    cmd_Insert.Visible = false;
                    Lbl_ID.Visible = true;
                    Txt_ID.Visible = true;
                }
                else
                {
                    Txt_ID.Visible = false;
                    Lbl_ID.Visible = false;
                    update_btn.Visible = false;
                    Delete_btn.Visible = false;
                    cmd_Insert.Visible = true;

                }
            }
        }
        catch (Exception ex)
        { 
          Response.Write("error occured");
        }
    }

    public void bindedit(int t_id)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select  T.first_name , T.middle_name , T.last_name , T.email , T.country , T.state , T.district , T.city , T.address , S.HRA , S.DA , S.TA , S.BS , S.GROSS  from teachers as T inner join teacher_salary as S on T.t_id = S.t_id where T.t_id =  " + t_id, conn);
        SqlDataReader reader = cmd.ExecuteReader();
        if (reader.Read())
        {
            Txt_First.Text = reader["first_name"].ToString();
            Txt_Middle.Text = reader["middle_name"].ToString();
            Txt_Last.Text = reader["last_name"].ToString();
            Txt_Email.Text = reader["email"].ToString();
            Txt_Country.Text = reader["country"].ToString();
            Txt_State.Text = reader["state"].ToString();
            Txt_District.Text = reader["district"].ToString();
            Txt_City.Text = reader["city"].ToString();
            Txt_Address.Text = reader["address"].ToString();
            Txt_HRA.Text = double.Parse(reader["HRA"].ToString()).ToString("0");
            Txt_DA.Text = double.Parse(reader["DA"].ToString()).ToString("0");
            Txt_TA.Text = double.Parse(reader["TA"].ToString()).ToString("0");
            Txt_Basic_Salary.Text = double.Parse(reader["BS"].ToString()).ToString("0");
            Txt_Gross.Text = double.Parse(reader["GROSS"].ToString()).ToString("0");
            Txt_ID.Text = t_id.ToString();

        }
        reader.Close();
        conn.Close();
        conn.Dispose();
    } 

    protected void cmd_Insert_Click(object sender, EventArgs e)
    {
        String id = "";
        conn.Open();
        string gender = string.Empty;
        if (chk_male.Checked)
        {
            gender = "Male";
        }
        else if (chk_female.Checked)
        {
            gender = "Female";
        }

        else if (chk_no.Checked)
        {
            gender = "Non-Binary";
        }
        SqlCommand cmd1 = new SqlCommand("insert into teachers (first_name , middle_name , last_name , email , country , state ,district , city , address , gender ) values('" + Txt_First.Text + "' , '" + Txt_Middle.Text + "' , '" + Txt_Last.Text + "' , '" + Txt_Email.Text + "' , '" + Txt_Country.Text + "' , '" + Txt_State.Text + "' , '" + Txt_District.Text + "' , '" + Txt_City.Text + "' , '" + Txt_Address.Text + "' , '" + gender + "' )", conn);
        SqlDataReader reader = cmd1.ExecuteReader();
        reader.Close();

        SqlCommand cmd2 = new SqlCommand("select max(t_id) as T from teachers", conn);
        SqlDataReader dr2 = cmd2.ExecuteReader();
        if (dr2.Read())
        {
            id = dr2["T"].ToString();

        }
        dr2.Close();

        SqlCommand cmd3 = new SqlCommand("insert into teacher_salary (t_id , hra , da , ta , bs , gross) values ('" + id + "' ,'" + Txt_HRA.Text + "' , '" + Txt_DA.Text + "' , '" + Txt_TA.Text + "' , '" + Txt_Basic_Salary.Text + "' , '" + Txt_Gross.Text + "')", conn);
        SqlDataReader dr = cmd3.ExecuteReader();
        dr.Close();
        conn.Close();
        Response.Write("<script>alert('Data inserted successfully');</script>");
      //  Response.Redirect("grid_teacher.aspx");
      conn.Close();
        conn.Dispose();
    }

    protected void update_btn_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("update teachers set first_name = '" + Txt_First.Text + "' , middle_name = '" + Txt_Middle.Text + "' , last_name = '" + Txt_Last.Text + "' , email = '" + Txt_Email.Text + "' , country = '" + Txt_Country.Text + "' , state = '" + Txt_State.Text + "' , city = '" + Txt_City.Text + "' , address = '" + Txt_Address.Text + "'  where t_id = '" + Txt_ID.Text + "'", conn);
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Close();

        SqlCommand cmd2 = new SqlCommand("update teacher_salary set HRA = '" + Txt_HRA.Text + "' , DA = '" + Txt_DA.Text + "' , TA = '" + Txt_DA.Text + "' , BS = '" + Txt_Basic_Salary.Text + "' , GROSS = '" + Txt_Gross.Text + "' where t_id = '" + Txt_ID.Text + "' ", conn);
        SqlDataReader reader1 = cmd2.ExecuteReader();
        reader1.Close();
        Response.Write("Data Updated successfully");
        conn.Close();
        conn.Dispose();
        Response.Redirect("grid_teacher.aspx");
    }

    protected void Delete_btn_Click(object sender, EventArgs e)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("delete from teachers where t_id = '" + Txt_ID.Text + "' ", conn);
        SqlDataReader dr = cmd.ExecuteReader();
        dr.Close();
        SqlCommand cmd2 = new SqlCommand("delete from teacher_salary where t_id = '" + Txt_ID.Text + "' ", conn);
        SqlDataReader dr2 = cmd2.ExecuteReader();
        dr2.Close();

        conn.Close();
        conn.Dispose();
        Response.Write("Data Deleted successfully");
        Response.Redirect("Grid_teacher.aspx");
    }

    void AddSalary()
    {
        Txt_Gross.Text = (float.Parse(Txt_HRA.Text) + float.Parse(Txt_Basic_Salary.Text) + float.Parse(Txt_TA.Text) + float.Parse(Txt_DA.Text)).ToString();

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

    protected void Txt_Basic_Salary_TextChanged(object sender, EventArgs e)
    {
        try
        {
            AddSalary();
            Txt_Gross.Focus();
        }
        catch (Exception ex)
        {
            Response.Write(ex.Message);
            Txt_Basic_Salary.Text = "0";
            Txt_Basic_Salary.Focus();
        }
    }
}