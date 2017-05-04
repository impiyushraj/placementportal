using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class SignUp : System.Web.UI.Page
{
    SqlConnection sqlcon;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnSignUp_Click(object sender, EventArgs e)
    {
        try
        {
            sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
            sqlcon.Open();
            SqlCommand sqlcmd1 = new SqlCommand("select RollNo from StudentSignUp where RollNo=@RollNo", sqlcon);
            sqlcmd1.Parameters.AddWithValue("@RollNo", txtRollNo.Text);
            SqlDataReader dr = sqlcmd1.ExecuteReader();
            if (dr.HasRows)
            {
                lblExist.Text = "Account already exist with this Roll No.";
            }
            else
            {
                sqlcon.Close();
                Guid id = Guid.NewGuid();
                sqlcon.Open();
                //check:
                //SqlCommand sqlcmd5 = new SqlCommand("select Id from StudentSignUp where Id=@Id", sqlcon);
                //sqlcmd5.Parameters.AddWithValue("@Id", id.ToString());
                //SqlDataReader dr2 = sqlcmd5.ExecuteReader();
                //if (dr2.HasRows)
                //{
                //    id= Guid.NewGuid();
                //    goto check;
                //}
                string query2 = "insert into StudentSignUp (Id, StName, RollNo, Password) values (@Id, @StName, @RollNo, @Password)";
                SqlCommand sqlcmd2 = new SqlCommand(query2, sqlcon);
                sqlcmd2.Parameters.AddWithValue("@Id", id.ToString());
                sqlcmd2.Parameters.AddWithValue("@StName", txtStudentName.Text.ToUpper());
                sqlcmd2.Parameters.AddWithValue("@RollNo", txtRollNo.Text);
                sqlcmd2.Parameters.AddWithValue("@Password", txtPassword.Text);
                sqlcmd2.ExecuteNonQuery();
                string query3 = "insert into StudentDetailsPersonal (Id, StName, RollNo) values (@Id, @StName, @RollNo)";
                SqlCommand sqlcmd3 = new SqlCommand(query3, sqlcon);
                sqlcmd3.Parameters.AddWithValue("@Id", id.ToString());
                sqlcmd3.Parameters.AddWithValue("@StName", txtStudentName.Text.ToUpper());
                sqlcmd3.Parameters.AddWithValue("@RollNo", txtRollNo.Text);
                sqlcmd3.ExecuteNonQuery();
                string query4 = "insert into StudentDetailsAcademic (Id, RollNo) values (@Id, @RollNo)";
                SqlCommand sqlcmd4 = new SqlCommand(query4, sqlcon);
                sqlcmd4.Parameters.AddWithValue("@Id", id.ToString());
                sqlcmd4.Parameters.AddWithValue("@RollNo", txtRollNo.Text);
                sqlcmd4.ExecuteNonQuery();

                //Create a Session
                Session["RollNo"] = txtRollNo.Text;
                Response.Redirect("StudentPage.aspx");

                
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
        finally
        {
            sqlcon.Close();
        }
    }
}