using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
public partial class AdminDeleteData : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnDelete_Click(object sender, EventArgs e)
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
        sqlcon.Open();
        string query1 = "DELETE FROM StudentDetailsAcademic where RollNo=@RollNo";
        SqlCommand sqlcmd1 = new SqlCommand(query1, sqlcon);
        sqlcmd1.Parameters.AddWithValue("@RollNo", txtRollNo.Text);
        sqlcmd1.ExecuteNonQuery();

        string query2 = "DELETE FROM StudentDetailsPersonal where RollNo=@RollNo";
        SqlCommand sqlcmd2 = new SqlCommand(query2, sqlcon);
        sqlcmd2.Parameters.AddWithValue("@RollNo", txtRollNo.Text);
        sqlcmd2.ExecuteNonQuery();

        string query3 = "DELETE FROM StudentSignUp where RollNo=@RollNo";
        SqlCommand sqlcmd3 = new SqlCommand(query3, sqlcon);
        sqlcmd3.Parameters.AddWithValue("@RollNo", txtRollNo.Text);
        sqlcmd3.ExecuteNonQuery();

        sqlcon.Close();

        Response.Write("<script>alert('Student Data Successfully Removed.')</script>");
    }
}