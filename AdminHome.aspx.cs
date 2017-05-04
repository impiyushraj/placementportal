using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminHome : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        lblUpdateRollNo.Visible = false;
        lblUpdateRollNo.Enabled = false;
        txtUpdateRollNo.Visible = false;
        txtUpdateRollNo.Enabled = false;
        btnUpdateDetails.Visible = false;
        btnUpdateDetails.Enabled = false;
        btnUpdateCancel.Visible = false;
        btnUpdateCancel.Enabled = false;

        if (Session["Admin"] == null)
            Response.Redirect("AdminLogin.aspx");
        else
        {
            lblWelcome.Text = Session["Admin"].ToString();
        }
    }

    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        Session["Admin"] = null;
        Response.Redirect("AdminLogin.aspx");
    }

    protected void btnUpdateRollNo_Click(object sender, EventArgs e)
    {
        lblError.Enabled = false;
        lblError.Visible = false;
        lblError.Text = null;
        lblUpdateRollNo.Visible = true;
        lblUpdateRollNo.Enabled = true;
        lblUpdateRollNo.Text = "Enter Roll No of Student";
        txtUpdateRollNo.Visible = true;
        txtUpdateRollNo.Enabled = true;
        btnUpdateDetails.Visible = true;
        btnUpdateDetails.Enabled = true;
        //validUpdateRollNo.Visible = true;
        //validUpdateRollNo.Enabled = true;
        btnUpdateCancel.Visible = true;
        btnUpdateCancel.Enabled = true;
    }

    protected void btnUpdateDetails_Click(object sender, EventArgs e)
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
        sqlcon.Open();
        string query = "SELECT COUNT(*) FROM StudentSignUp WHERE RollNo =@RollNo";
        SqlCommand sqlcmd1 = new SqlCommand(query, sqlcon);
        sqlcmd1.Parameters.AddWithValue("@RollNo", txtUpdateRollNo.Text);
        int temp = Convert.ToInt32(sqlcmd1.ExecuteScalar().ToString());
        sqlcon.Close();
        if (temp == 1)
        {
            string rollno = txtUpdateRollNo.Text;
            Response.Redirect("AdminStudentDetailsUpdate.aspx?rollno=" + rollno);
        }
        else
        {
            lblError.Enabled = true;
            lblError.Visible = true;
            lblError.Text = "Given Roll No. does not exist in Database.";
            btnReEnter.Enabled = true;
            btnReEnter.Visible = true;
        }
    }

    protected void btnUpdateCancel_Click(object sender, EventArgs e)
    {
        //validUpdateRollNo.Enabled = false;
        //validUpdateRollNo.Visible = false;
        lblUpdateRollNo.Visible = false;
        lblUpdateRollNo.Enabled = false;
        txtUpdateRollNo.Visible = false;
        txtUpdateRollNo.Enabled = false;
        btnUpdateDetails.Visible = false;
        btnUpdateDetails.Enabled = false;
        btnUpdateCancel.Visible = false;
        btnUpdateCancel.Enabled = false;
    }

    protected void btnReEnter_Click(object sender, EventArgs e)
    {
        lblUpdateRollNo.Visible = true;
        lblUpdateRollNo.Enabled = true;
        lblUpdateRollNo.Text = "Enter Roll No of Student";
        txtUpdateRollNo.Visible = true;
        txtUpdateRollNo.Enabled = true;
        btnUpdateDetails.Visible = true;
        btnUpdateDetails.Enabled = true;
        //validUpdateRollNo.Visible = true;
        //validUpdateRollNo.Enabled = true;
        btnUpdateCancel.Visible = true;
        btnUpdateCancel.Enabled = true;

        btnReEnter.Enabled = false;
        btnReEnter.Visible = false;
        lblError.Enabled = false;
        lblError.Visible = false;
        lblError.Text = null;
    }
}