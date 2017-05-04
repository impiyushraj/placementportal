using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
public partial class AdminLogin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
        sqlcon.Open();
        string queryuser = "select count(*) from Admin where UserName = '" + txtUser.Text + "'";
        SqlCommand sqlcmd1 = new SqlCommand(queryuser, sqlcon);
        int temp = Convert.ToInt32(sqlcmd1.ExecuteScalar().ToString());
        sqlcon.Close();
        if (temp == 1)
        {
            sqlcon.Open();
            string querypassword = "select Password from Admin where UserName = '" + txtUser.Text + "'";
            SqlCommand sqlcmd2 = new SqlCommand(querypassword, sqlcon);
            string password = sqlcmd2.ExecuteScalar().ToString().Replace(" ", "");
            sqlcon.Close();
            if (password == txtPassword.Text)
            {
                Session["Admin"] = txtUser.Text;
                Response.Redirect("AdminHome.aspx");
            }
            else
                lblMessage.Text = "Password Not Correct";
        }
        else
            lblMessage.Text = "Account with this UserName does not exist.";
        
    }
}