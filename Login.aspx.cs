using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
        sqlcon.Open();
        string queryrollno = "select count(*) from StudentSignUp where RollNo = '" + txtRollNo.Text + "'";
        SqlCommand sqlcmd1 = new SqlCommand(queryrollno, sqlcon);
        int temp = Convert.ToInt32(sqlcmd1.ExecuteScalar().ToString());
        sqlcon.Close();
        if (temp == 1)
        {
            sqlcon.Open();
            string querypassword = "select Password from StudentSignUp where RollNo='" + txtRollNo.Text + "'";
            SqlCommand sqlcmd2 = new SqlCommand(querypassword, sqlcon);
            string password = sqlcmd2.ExecuteScalar().ToString().Replace(" ", "");
            sqlcon.Close();
            if (password == txtPassword.Text)
            {
                Session["RollNo"] = txtRollNo.Text;
                Response.Cookies["RollNo"].Value = txtRollNo.Text;
                Response.Cookies["RollNo"].Expires = DateTime.Now.AddDays(1);
                Response.Redirect("StudentPage.aspx");
            }
            else
                lblMessage.Text = "Password Not Correct";
        }
        else
            lblMessage.Text = "Account with this Roll No does not exist.";
    }
}