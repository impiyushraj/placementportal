using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminStudentDetailsEdit : System.Web.UI.Page
{
    int s1o, s1t, s2o, s2t, s3o, s3t, s4o, s4t, s5o, s5t, s6o, s6t, s7o, s7t, s8o, s8t, mo=0, tm=0;
    double agg=0.0, aggregate=0.0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
            Response.Redirect("AdminLogin.aspx");
        else
            lblWelcome.Text = Session["Admin"].ToString();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        //Update Details into Database
        try
        {
            SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
            sqlcon.Open();
            string query = "UPDATE StudentDetailsAcademic SET Course=@Course, Branch=@Branch, Year=@Year, AddYear=@AddYear, BackTotal=@BackTotal, BackLive=@BackLive, BackCode=@BackCode, Percent10th=@Percent10th, Year10=@Year10, Board10=@Board10, Percent12th=@Percent12th, Year12=@Year12, Board12=@Board12, GapYear=@GapYear, Sem1MO=@Sem1MO, Sem1TM=@Sem1TM, Sem2MO=@Sem2MO, Sem2TM=@Sem2TM, Sem3MO=@Sem3MO, Sem3TM=@Sem3TM, Sem4MO=@Sem4MO, Sem4TM=@Sem4TM, Sem5MO=@Sem5MO, Sem5TM=@Sem5TM, Sem6MO=@Sem6MO, Sem6TM=@Sem6TM, Sem7MO=@Sem7MO, Sem7TM=@Sem7TM, Sem8MO=@Sem8MO, Sem8TM=@Sem8TM, TotalMO=@TotalMO, TotalTM=@TotalTM, Aggregate=@Aggregate where RollNo=@RollNo";
            SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
            sqlcmd.Parameters.AddWithValue("@RollNo", txtRollNo.Text);
            sqlcmd.Parameters.AddWithValue("@Course", ddlCourse.SelectedValue);
            sqlcmd.Parameters.AddWithValue("@Branch", ddlBranch.SelectedValue);
            sqlcmd.Parameters.AddWithValue("@Year", ddlYear.SelectedValue);
            sqlcmd.Parameters.AddWithValue("@AddYear", ddlAddYear.SelectedValue);
            sqlcmd.Parameters.AddWithValue("@BackTotal", ddlBackTotal.SelectedValue);
            sqlcmd.Parameters.AddWithValue("@BackLive", rbBackLive.SelectedValue);
            sqlcmd.Parameters.AddWithValue("@BackCode", txtBackLiveCode.Text.ToUpper());
            sqlcmd.Parameters.AddWithValue("@Percent10th", txt10Percent.Text);
            sqlcmd.Parameters.AddWithValue("@Year10", txt10Year.Text);
            sqlcmd.Parameters.AddWithValue("@Board10", ddl10Board.SelectedValue);
            sqlcmd.Parameters.AddWithValue("@Percent12th", txt12Percent.Text);
            sqlcmd.Parameters.AddWithValue("@Year12", txt12Year.Text);
            sqlcmd.Parameters.AddWithValue("@Board12", ddl12Board.SelectedValue);
            sqlcmd.Parameters.AddWithValue("@GapYear", ddlGapYear.SelectedValue);
            sqlcmd.Parameters.AddWithValue("@Sem1MO", txtSem1Obtain.Text);
            sqlcmd.Parameters.AddWithValue("@Sem1TM", txtSem1Total.Text);
            sqlcmd.Parameters.AddWithValue("@Sem2MO", txtSem2Obtain.Text);
            sqlcmd.Parameters.AddWithValue("@Sem2TM", txtSem2Total.Text);
            sqlcmd.Parameters.AddWithValue("@Sem3MO", txtSem3Obtain.Text);
            sqlcmd.Parameters.AddWithValue("@Sem3TM", txtSem3Total.Text);
            sqlcmd.Parameters.AddWithValue("@Sem4MO", txtSem4Obtain.Text);
            sqlcmd.Parameters.AddWithValue("@Sem4TM", txtSem4Total.Text);
            sqlcmd.Parameters.AddWithValue("@Sem5MO", txtSem5Obtain.Text);
            sqlcmd.Parameters.AddWithValue("@Sem5TM", txtSem5Total.Text);
            sqlcmd.Parameters.AddWithValue("@Sem6MO", txtSem6Obtain.Text);
            sqlcmd.Parameters.AddWithValue("@Sem6TM", txtSem6Total.Text);
            sqlcmd.Parameters.AddWithValue("@Sem7MO", txtSem7Obtain.Text);
            sqlcmd.Parameters.AddWithValue("@Sem7TM", txtSem7Total.Text);
            sqlcmd.Parameters.AddWithValue("@Sem8MO", txtSem8Obtain.Text);
            sqlcmd.Parameters.AddWithValue("@Sem8TM", txtSem8Total.Text);
            sqlcmd.Parameters.AddWithValue("@TotalMO", lblTotalMO.Text);
            sqlcmd.Parameters.AddWithValue("@TotalTM", lblTotalTM.Text);
            sqlcmd.Parameters.AddWithValue("@Aggregate", lblAggregate.Text);
            sqlcmd.ExecuteNonQuery();
            sqlcon.Close();
            Response.Write("<script>alert('Details Submitted.')</script>");

        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    protected void btnAggregate_Click(object sender, EventArgs e)
    {
        if (txtSem1Obtain.Text == null || txtSem1Obtain.Text == "") { s1o = 0; } else { s1o = Convert.ToInt32(txtSem1Obtain.Text); }
        if (txtSem1Total.Text == null || txtSem1Total.Text == "") { s1t = 0; } else { s1t = Convert.ToInt32(txtSem1Total.Text); }
        if (txtSem2Obtain.Text == null || txtSem2Obtain.Text == "") { s2o = 0; } else { s2o = Convert.ToInt32(txtSem2Obtain.Text); }
        if (txtSem2Total.Text == null || txtSem2Total.Text == "") { s2t = 0; } else { s2t = Convert.ToInt32(txtSem2Total.Text); }
        if (txtSem3Obtain.Text == null || txtSem3Obtain.Text == "") { s3o = 0; } else { s3o = Convert.ToInt32(txtSem3Obtain.Text); }
        if (txtSem3Total.Text == null || txtSem3Total.Text == "") { s3t = 0; } else { s3t = Convert.ToInt32(txtSem3Total.Text); }
        if (txtSem4Obtain.Text == null || txtSem4Obtain.Text == "") { s4o = 0; } else { s4o = Convert.ToInt32(txtSem4Obtain.Text); }
        if (txtSem4Total.Text == null || txtSem4Total.Text == "") { s4t = 0; } else { s4t = Convert.ToInt32(txtSem4Total.Text); }
        if (txtSem5Obtain.Text == null || txtSem5Obtain.Text == "") { s5o = 0; } else { s5o = Convert.ToInt32(txtSem5Obtain.Text); }
        if (txtSem5Total.Text == null || txtSem5Total.Text == "") { s5t = 0; } else { s5t = Convert.ToInt32(txtSem5Total.Text); }
        if (txtSem6Obtain.Text == null || txtSem6Obtain.Text == "") { s6o = 0; } else { s6o = Convert.ToInt32(txtSem6Obtain.Text); }
        if (txtSem6Total.Text == null || txtSem6Total.Text == "") { s6t = 0; } else { s6t = Convert.ToInt32(txtSem6Total.Text); }
        if (txtSem7Obtain.Text == null || txtSem7Obtain.Text == "") { s7o = 0; } else { s7o = Convert.ToInt32(txtSem7Obtain.Text); }
        if (txtSem7Total.Text == null || txtSem7Total.Text == "") { s7t = 0; } else { s7t = Convert.ToInt32(txtSem7Total.Text); }
        if (txtSem8Obtain.Text == null || txtSem8Obtain.Text == "") { s8o = 0; } else { s8o = Convert.ToInt32(txtSem8Obtain.Text); }
        if (txtSem8Total.Text == null || txtSem8Total.Text == "") { s8t = 0; } else { s8t = Convert.ToInt32(txtSem8Total.Text); }

        mo = s1o + s2o + s3o + s4o + s5o + s6o + s7o + s8o;
        tm = s1t + s2t + s3t + s4t + s5t + s6t + s7t + s8t;
        agg = (Convert.ToDouble(mo) / Convert.ToDouble(tm)) * 100;
        aggregate = Math.Round(agg, 2);
        lblTotalMO.Text = mo.ToString();
        lblTotalTM.Text = tm.ToString();
        lblAggregate.Text = aggregate.ToString();
    }

    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        Session["Admin"] = null;
        Response.Redirect("AdminLogin.aspx");
    }
}