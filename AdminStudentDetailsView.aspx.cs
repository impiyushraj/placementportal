using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class AdminStudentDetailsView : System.Web.UI.Page
{
    SqlConnection sqlcon;
    SqlCommand sqlcmd1, sqlcmd2;
    SqlDataReader dr1, dr2;
    SqlDataAdapter da;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
        {
            Response.Redirect("AdminLogin.aspx");
        }
        else
        {
            lblWelcome.Text = Session["Admin"].ToString();

            
        }
    }
    
    protected void btnView_Click(object sender, EventArgs e)
    {
        //Personal Details
        sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
        sqlcon.Open();

        sqlcmd1 = new SqlCommand("select * from StudentDetailsPersonal where RollNo=@RollNo", sqlcon);
        sqlcmd1.Parameters.AddWithValue("@RollNo", txtStRollNo.Text);
        dr1 = sqlcmd1.ExecuteReader();
        if (dr1.Read())
        {
            lblStudentName.Text = dr1[1].ToString();
            lblRollNo.Text = dr1[2].ToString();
            lblStudentNo.Text = dr1[3].ToString();

            //Gender
            if (dr1[4].ToString() == "1")
                lblGender.Text = "Male";
            else if (dr1[4].ToString() == "2")
                lblGender.Text = "Female";

            lblFather.Text = dr1[5].ToString();
            lblMother.Text = dr1[6].ToString();
            lblMobile.Text = dr1[7].ToString();
            lblEmail.Text = dr1[8].ToString();
            lblDOB.Text = dr1[9].ToString() + "-" + dr1[10].ToString() + "-" + dr1[11].ToString();
            lblLAddress.Text = dr1[12].ToString() + "<br/>" + dr1[13].ToString() + "<br/>" + dr1[14].ToString() + "<br/>" + dr1[15].ToString() + "<br/>" + dr1[16].ToString() + ", " + dr1[17].ToString() + " - " + dr1[18].ToString();
            lblPAddress.Text = dr1[19].ToString() + "<br/>" + dr1[20].ToString() + "<br/>" + dr1[21].ToString() + "<br/>" + dr1[22].ToString() + "<br/>" + dr1[23].ToString() + ", " + dr1[24].ToString() + " - " + dr1[25].ToString();
        }
        else { Response.Write("<script>alert('No Personal data present for this Roll No.')</script>"); }
        sqlcon.Close();

        //Academic Details
        sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
        sqlcon.Open();
        sqlcmd2 = new SqlCommand("select * from StudentDetailsAcademic where RollNo=@RollNo", sqlcon);
        sqlcmd2.Parameters.AddWithValue("@RollNo", txtStRollNo.Text);
        dr2 = sqlcmd2.ExecuteReader();
        if (dr2.Read())
        {
            lblCourse.Text = dr2[2].ToString();
            lblBranch.Text = dr2[3].ToString();
            lblYear.Text = dr2[4].ToString();
            lblBatch.Text = dr2[5].ToString();
            lblBackTotal.Text = dr2[6].ToString();
            lblBackLive.Text = dr2[7].ToString();
            lblBackCode.Text = dr2[8].ToString();
            lbl10Percent.Text = dr2[9].ToString();
            lbl10Year.Text = dr2[10].ToString();
            lbl10Board.Text = dr2[11].ToString();
            lbl12Percent.Text = dr2[12].ToString();
            lbl12Year.Text = dr2[13].ToString();
            lbl12Board.Text = dr2[14].ToString();
            lblGapYear.Text = dr2[15].ToString();
            lblSem1MO.Text = dr2[16].ToString();
            lblSem1TM.Text = dr2[17].ToString();
            lblSem2MO.Text = dr2[18].ToString();
            lblSem2TM.Text = dr2[19].ToString();
            lblSem3MO.Text = dr2[20].ToString();
            lblSem3TM.Text = dr2[21].ToString();
            lblSem4MO.Text = dr2[22].ToString();
            lblSem4TM.Text = dr2[23].ToString();
            lblSem5MO.Text = dr2[24].ToString();
            lblSem5TM.Text = dr2[25].ToString();
            lblSem6MO.Text = dr2[26].ToString();
            lblSem6TM.Text = dr2[27].ToString();
            lblSem7MO.Text = dr2[28].ToString();
            lblSem7TM.Text = dr2[29].ToString();
            lblSem8MO.Text = dr2[30].ToString();
            lblSem8TM.Text = dr2[31].ToString();
            lblTotalMO.Text = dr2[32].ToString();
            lblTotalTM.Text = dr2[33].ToString();
            lblAggregate.Text = dr2[34].ToString();
        }
        else { Response.Write("<script>alert('No Academic data present for this Roll No.')</script>"); }
        sqlcon.Close();
    }
    protected void btnEditDetails_Click(object sender, EventArgs e)
    {
        Session["AdminRollNo"] = txtStRollNo.Text;
        Response.Redirect("AdminStudentDetailsUpdate.aspx");
    }
    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        Session["Admin"] = null;
        Response.Redirect("AdminLogin.aspx");
    }
}