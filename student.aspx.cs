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
        this.Page.Title = "Registration form";  
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
                    Lbl_ID.Visible=false;
                    update_btn.Visible = false;
                    Delete_btn.Visible = false;
                    cmd_Insert.Visible = true;

                }
            }
        }
        catch (Exception ex)
        { }

    }

    public void bindedit(int s_id)
    {
        conn.Open();
        SqlCommand cmd = new SqlCommand("Select  first_name , middle_name , last_name , email , country , state , district , city , address from students where s_id =  " + s_id, conn);
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

            Txt_ID.Text = s_id.ToString();

        }
        reader.Close();
        conn.Close();   
        conn.Dispose();
    }



    protected void Insert_btn_Click(object sender, EventArgs e)
    {

        string gender = string.Empty;
        if (chk_male.Checked)
        {
            gender = "Male";
        }
        else if (chk_female.Checked)
        {
            gender = "Female";
        }

        else if(chk_no.Checked)
        {
            gender= "Non-Binary";
        }

        // String id = "";
        conn.Open();
            SqlCommand cmd = new SqlCommand("insert into students (first_name , middle_name , last_name , email , country , state ,district , city , address , gender ) values('" + Txt_First.Text + "' , '" + Txt_Middle.Text + "' , '" + Txt_Last.Text + "' , '" + Txt_Email.Text + "' , '" + Txt_Country.Text + "' , '" + Txt_State.Text + "' , '" + Txt_District.Text + "' , '" + Txt_City.Text + "' , '" + Txt_Address.Text + "' , '" + gender + "' )", conn);
            SqlDataReader reader = cmd.ExecuteReader();
            reader.Close();
            conn.Close();
            Response.Write("<script>alert('Data inserted successfully');</script>");
            Response.Redirect("grid_student.aspx");
    }

    protected void update_btn_Click(object sender, EventArgs e) 
    {
        Response.Write("Updated");
        conn.Open();

        SqlCommand cmd = new SqlCommand("update students set first_name = '" + Txt_First.Text + "' , middle_name = '" + Txt_Middle.Text + "' , last_name = '" + Txt_Last.Text + "' , email = '" + Txt_Email.Text + "' , country = '" + Txt_Country.Text + "' , state = '" + Txt_State.Text + "' , city = '" + Txt_City.Text + "' , address = '" + Txt_Address.Text + "'  where s_id = '" + Txt_ID.Text + "'", conn);
        SqlDataReader reader = cmd.ExecuteReader();
        reader.Close();

        conn.Close();
        conn.Dispose();
        Response.Redirect("grid_student.aspx");
    }

    protected void Delete_btn_Click(object sender, EventArgs e)
    {
        Response.Write("Deleted Successfully");
        conn.Open();
        SqlCommand cmd = new SqlCommand("delete from students where s_id = '" + Txt_ID.Text + "'", conn);
        SqlDataReader r = cmd.ExecuteReader();
        r.Close();
        conn.Close();
        conn.Dispose();

        Response.Redirect("grid_student.aspx");
    }

}