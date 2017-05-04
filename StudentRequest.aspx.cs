using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class StudentRequest : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["RollNo"] == null)
            Response.Redirect("Login.aspx");
        else
        {
            if (!(Page.IsPostBack))
            {
                bind();
            }
        }
    }
    void bind()
    {
        txtRollNo.Text = Server.HtmlEncode(Request.Cookies["RollNo"].Value);
        txtRollNo.Enabled = false;
    }

    protected void btnChangePass_Click(object sender, EventArgs e)
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
        sqlcon.Open();
        string querypassword = "SELECT Password FROM StudentSignUp WHERE RollNo='" + txtRollNo.Text + "'";
        SqlCommand sqlcmd = new SqlCommand(querypassword, sqlcon);
        string password = sqlcmd.ExecuteScalar().ToString().Replace(" ", "");
        if (password == txtPassOld.Text)
        {
            string query = "UPDATE StudentSignUp SET Password=@Password WHERE RollNo='" + txtRollNo.Text + "'";
            SqlCommand sqlcmd2 = new SqlCommand(query, sqlcon);
            sqlcmd2.Parameters.AddWithValue("@Password", txtPassNew.Text);
            sqlcmd2.ExecuteNonQuery();
            Response.Write("<script>alert('Password Changed Succesfully.')</script>");
        }
        else { Response.Write("<script>alert('Old Password is Incorrect.')</script>"); }
        sqlcon.Close();
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
        sqlcon.Open();
        string query = "INSERT INTO StudentRequest () VALUES (@) WHERE RollNo=@RollNo";
        SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
        sqlcmd.Parameters.AddWithValue("@RollNo", txtRollNo.Text);
        sqlcmd.ExecuteNonQuery();
        sqlcon.Close();
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["RollNo"] != null)
        {
            Response.Cookies["RollNo"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("Default.aspx");
        }
    }

    protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
    {
        //if (CheckBox1.Checked)
        //{
            txtCourseOld.Enabled = true;
            txtCourseNew.Enabled = true;
        //}
            
    }

    protected void CheckBox2_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void CheckBox3_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void CheckBox4_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void CheckBox5_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void CheckBox6_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void CheckBox7_CheckedChanged(object sender, EventArgs e)
    {

    }
}