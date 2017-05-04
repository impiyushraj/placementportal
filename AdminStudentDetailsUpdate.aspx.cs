using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminStudentDetailsUpdate : System.Web.UI.Page
{
    int s1o, s1t, s2o, s2t, s3o, s3t, s4o, s4t, s5o, s5t, s6o, s6t, s7o, s7t, s8o, s8t, mo = 0, tm = 0;
    double agg = 0.0, aggregate = 0.0;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["Admin"] == null)
            Response.Redirect("AdminLogin.aspx");
        else
        {
            lblWelcome.Text = Session["Admin"].ToString();
            if (!(Page.IsPostBack))
            {
                if (!String.IsNullOrEmpty(Request.QueryString["rollno"]))
                    bind();
            }
        }
    }
    public void bind()
    {
        txtRollNo.Text = Request.QueryString["rollno"].ToString();
        txtRollNo.Enabled = false;

        //Retreive & Display Student 'Academic' Details already available
        SqlConnection sqlcon1 = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
        sqlcon1.Open();
        SqlCommand sqlcmd1 = new SqlCommand("SELECT * FROM StudentDetailsAcademic WHERE RollNo=@RollNo", sqlcon1);
        sqlcmd1.Parameters.AddWithValue("@RollNo", Request.QueryString["rollno"].ToString());
        SqlDataReader dr3 = sqlcmd1.ExecuteReader();
        if (dr3.Read())
        {
            ddlCourse.SelectedValue = dr3[2].ToString();
            ddlBranch.SelectedValue = dr3[3].ToString();
            ddlYear.SelectedValue = dr3[4].ToString();
            ddlAddYear.SelectedValue = dr3[5].ToString();
            ddlBackTotal.SelectedValue = dr3[6].ToString();
            rbBackLive.SelectedValue = dr3[7].ToString();
            txtBackLiveCode.Text = dr3[8].ToString();
            txt10Percent.Text = dr3[9].ToString();
            txt10Year.Text = dr3[10].ToString();
            ddl10Board.SelectedValue = dr3[11].ToString();
            txt12Percent.Text = dr3[12].ToString();
            txt12Year.Text = dr3[13].ToString();
            ddl12Board.SelectedValue = dr3[14].ToString();
            ddlGapYear.SelectedValue = dr3[15].ToString();
            txtSem1Obtain.Text = dr3[16].ToString();
            txtSem1Total.Text = dr3[17].ToString();
            txtSem2Obtain.Text = dr3[18].ToString();
            txtSem2Total.Text = dr3[19].ToString();
            txtSem3Obtain.Text = dr3[20].ToString();
            txtSem3Total.Text = dr3[21].ToString();
            txtSem4Obtain.Text = dr3[22].ToString();
            txtSem4Total.Text = dr3[23].ToString();
            txtSem5Obtain.Text = dr3[24].ToString();
            txtSem5Total.Text = dr3[25].ToString();
            txtSem6Obtain.Text = dr3[26].ToString();
            txtSem6Total.Text = dr3[27].ToString();
            txtSem7Obtain.Text = dr3[28].ToString();
            txtSem7Total.Text = dr3[29].ToString();
            txtSem8Obtain.Text = dr3[30].ToString();
            txtSem8Total.Text = dr3[31].ToString();
            lblTotalMO.Text = dr3[32].ToString();
            lblTotalTM.Text = dr3[33].ToString();
            lblAggregate.Text = dr3[34].ToString();
        }
        dr3.Close();
        sqlcon1.Close();

        //Retreive & Display Student 'Personal' Details already available
        SqlConnection sqlcon2 = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
        sqlcon2.Open();
        SqlCommand sqlcmd2 = new SqlCommand("SELECT * FROM StudentDetailsPersonal WHERE RollNo=@RollNo", sqlcon2);
        sqlcmd2.Parameters.AddWithValue("@RollNo", Request.QueryString["rollno"].ToString());
        SqlDataReader dr1 = sqlcmd2.ExecuteReader();
        if (dr1.Read())
        {
            txtStudentName.Text = dr1[1].ToString().ToUpper();
            txtStudentNo.Text = dr1[3].ToString();
            rbGender.SelectedValue = dr1[4].ToString();
            txtFather.Text = dr1[5].ToString();
            txtMother.Text = dr1[6].ToString();
            txtMobile.Text = dr1[7].ToString();
            txtEmail.Text = dr1[8].ToString();
            ddlDOBDate.SelectedValue = dr1[9].ToString();
            ddlDOBMonth.SelectedValue = dr1[10].ToString();
            ddlDOBYear.SelectedValue = dr1[11].ToString();
            txtLHouse.Text = dr1[12].ToString();
            txtLAddress1.Text = dr1[13].ToString();
            txtLAddress2.Text = dr1[14].ToString();
            txtLStreet.Text = dr1[15].ToString();
            txtLCity.Text = dr1[16].ToString();
            txtLState.Text = dr1[17].ToString();
            txtLPincode.Text = dr1[18].ToString();
            txtPHouse.Text = dr1[19].ToString();
            txtPAddress1.Text = dr1[20].ToString();
            txtPAddress2.Text = dr1[21].ToString();
            txtPStreet.Text = dr1[22].ToString();
            txtPCity.Text = dr1[23].ToString();
            txtPState.Text = dr1[24].ToString();
            txtPPincode.Text = dr1[25].ToString();
        }
        dr1.Close();
        sqlcon2.Close();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        update();
    }
    public void update()
    {
        //Permanent Address same as Local Address
        if (cbAddressSame.Checked)
        {
            txtPHouse.Text = txtLHouse.Text;
            txtPAddress1.Text = txtLAddress1.Text;
            txtPAddress2.Text = txtLAddress2.Text;
            txtPStreet.Text = txtLStreet.Text;
            txtPCity.Text = txtLCity.Text;
            txtPState.Text = txtLState.Text;
            txtPPincode.Text = txtLPincode.Text;
        }

        //Update Details into Database
        try
        {
            SqlConnection sqlcon1 = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
            sqlcon1.Open();
            string query1 = "UPDATE StudentDetailsPersonal SET StNo=@StNo, Father=@Father, Mother=@Mother, Gender=@Gender, Mobile=@Mobile, Email=@Email, DOBDate=@DOBDate, DOBMonth=@DOBMonth, DOBYear=@DOBYear, LHouse=@LHouse, LAddress1=@LAddress1, LAddress2=@LAddress2, LStreet=@LStreet, LCity=@LCity, LState=@LState, LPincode=@LPincode, PHouse=@PHouse, PAddress1=@PAddress1, PAddress2=@PAddress2, PStreet=@PStreet, PCity=@PCity, PState=@PState, PPincode=@PPincode WHERE RollNo=@RollNo";
            SqlCommand sqlcmd2 = new SqlCommand(query1, sqlcon1);
            sqlcmd2.Parameters.AddWithValue("@RollNo", Request.QueryString["rollno"].ToString());
            sqlcmd2.Parameters.AddWithValue("@StNo", txtStudentNo.Text);
            sqlcmd2.Parameters.AddWithValue("@Gender", rbGender.SelectedValue);
            sqlcmd2.Parameters.AddWithValue("@Father", txtFather.Text.ToUpper());
            sqlcmd2.Parameters.AddWithValue("@Mother", txtMother.Text.ToUpper());
            sqlcmd2.Parameters.AddWithValue("@Mobile", txtMobile.Text);
            sqlcmd2.Parameters.AddWithValue("@Email", txtEmail.Text.ToLower());
            sqlcmd2.Parameters.AddWithValue("@DOBDate", ddlDOBDate.SelectedValue);
            sqlcmd2.Parameters.AddWithValue("@DOBMonth", ddlDOBMonth.SelectedValue);
            sqlcmd2.Parameters.AddWithValue("@DOBYear", ddlDOBYear.SelectedValue);
            sqlcmd2.Parameters.AddWithValue("@LHouse", txtLHouse.Text.ToUpper());
            sqlcmd2.Parameters.AddWithValue("@LAddress1", txtLAddress1.Text.ToUpper());
            sqlcmd2.Parameters.AddWithValue("@LAddress2", txtLAddress2.Text.ToUpper());
            sqlcmd2.Parameters.AddWithValue("@LStreet", txtLStreet.Text.ToUpper());
            sqlcmd2.Parameters.AddWithValue("@LCity", txtLCity.Text.ToUpper());
            sqlcmd2.Parameters.AddWithValue("@LState", txtLState.Text.ToUpper());
            sqlcmd2.Parameters.AddWithValue("@LPincode", txtLPincode.Text);
            sqlcmd2.Parameters.AddWithValue("@PHouse", txtPHouse.Text.ToUpper());
            sqlcmd2.Parameters.AddWithValue("@PAddress1", txtPAddress1.Text.ToUpper());
            sqlcmd2.Parameters.AddWithValue("@PAddress2", txtPAddress2.Text.ToUpper());
            sqlcmd2.Parameters.AddWithValue("@PStreet", txtPStreet.Text.ToUpper());
            sqlcmd2.Parameters.AddWithValue("@PCity", txtPCity.Text.ToUpper());
            sqlcmd2.Parameters.AddWithValue("@PState", txtPState.Text.ToUpper());
            sqlcmd2.Parameters.AddWithValue("@PPincode", txtPPincode.Text);
            sqlcmd2.ExecuteNonQuery();
            sqlcon1.Close();

            SqlConnection sqlcon2 = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
            sqlcon2.Open();
            string query = "UPDATE StudentDetailsAcademic SET Course=@Course, Branch=@Branch, Year=@Year, AddYear=@AddYear, BackTotal=@BackTotal, BackLive=@BackLive, BackCode=@BackCode, Percent10th=@Percent10th, Year10=@Year10, Board10=@Board10, Percent12th=@Percent12th, Year12=@Year12, Board12=@Board12, GapYear=@GapYear, Sem1MO=@Sem1MO, Sem1TM=@Sem1TM, Sem2MO=@Sem2MO, Sem2TM=@Sem2TM, Sem3MO=@Sem3MO, Sem3TM=@Sem3TM, Sem4MO=@Sem4MO, Sem4TM=@Sem4TM, Sem5MO=@Sem5MO, Sem5TM=@Sem5TM, Sem6MO=@Sem6MO, Sem6TM=@Sem6TM, Sem7MO=@Sem7MO, Sem7TM=@Sem7TM, Sem8MO=@Sem8MO, Sem8TM=@Sem8TM, TotalMO=@TotalMO, TotalTM=@TotalTM, Aggregate=@Aggregate WHERE RollNo=@RollNo";
            SqlCommand sqlcmd = new SqlCommand(query, sqlcon2);
            sqlcmd.Parameters.AddWithValue("@RollNo", Request.QueryString["rollno"].ToString());
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
            sqlcon2.Close();

            Response.Write("<script>alert('Data Updated Successfully')</script>");
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
    protected void cbAddressSame_CheckedChanged(object sender, EventArgs e)
    {
        if (cbAddressSame.Checked)
        {
            txtPHouse.Text = null;
            txtPAddress1.Text = null;
            txtPAddress2.Text = null;
            txtPStreet.Text = null;
            txtPCity.Text = null;
            txtPState.Text = null;
            txtPPincode.Text = null;
            txtPHouse.Enabled = false;
            txtPAddress1.Enabled = false;
            txtPAddress2.Enabled = false;
            txtPStreet.Enabled = false;
            txtPCity.Enabled = false;
            txtPState.Enabled = false;
            txtPPincode.Enabled = false;
        }
        else if (!(cbAddressSame.Checked))
        {
            txtPHouse.Enabled = true;
            txtPAddress1.Enabled = true;
            txtPAddress2.Enabled = true;
            txtPStreet.Enabled = true;
            txtPCity.Enabled = true;
            txtPState.Enabled = true;
            txtPPincode.Enabled = true;
            SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
            sqlcon.Open();
            SqlCommand sqlcmd = new SqlCommand("SELECT * FROM StudentDetailsPersonal WHERE RollNo=@RollNo", sqlcon);
            SqlDataReader dr2 = sqlcmd.ExecuteReader();
            sqlcmd.Parameters.AddWithValue("@RollNo", Request.QueryString["rollno"].ToString());
            if (dr2.Read())
            {
                txtPHouse.Text = dr2[19].ToString();
                txtPAddress1.Text = dr2[20].ToString();
                txtPAddress2.Text = dr2[21].ToString();
                txtPStreet.Text = dr2[22].ToString();
                txtPCity.Text = dr2[23].ToString();
                txtPState.Text = dr2[24].ToString();
                txtPPincode.Text = dr2[25].ToString();
            }
            dr2.Close();
            sqlcon.Close();
        }
    }

    
    //Calculate Aggregate
    protected void btnAggregate_Click(object sender, EventArgs e)
    {
        if (String.IsNullOrEmpty(txtSem1Obtain.Text)) s1o = 0; else s1o = Convert.ToInt32(txtSem1Obtain.Text);
        if (String.IsNullOrEmpty(txtSem1Total.Text)) s1t = 0; else s1t = Convert.ToInt32(txtSem1Total.Text);
        if (String.IsNullOrEmpty(txtSem2Obtain.Text)) s2o = 0; else s2o = Convert.ToInt32(txtSem2Obtain.Text);
        if (String.IsNullOrEmpty(txtSem2Total.Text)) s2t = 0; else s2t = Convert.ToInt32(txtSem2Total.Text);
        if (String.IsNullOrEmpty(txtSem3Obtain.Text)) s3o = 0; else s3o = Convert.ToInt32(txtSem3Obtain.Text);
        if (String.IsNullOrEmpty(txtSem3Total.Text)) s3t = 0; else s3t = Convert.ToInt32(txtSem3Total.Text);
        if (String.IsNullOrEmpty(txtSem4Obtain.Text)) s4o = 0; else s4o = Convert.ToInt32(txtSem4Obtain.Text);
        if (String.IsNullOrEmpty(txtSem4Total.Text)) s4t = 0; else s4t = Convert.ToInt32(txtSem4Total.Text);
        if (String.IsNullOrEmpty(txtSem5Obtain.Text)) s5o = 0; else s5o = Convert.ToInt32(txtSem5Obtain.Text);
        if (String.IsNullOrEmpty(txtSem5Total.Text)) s5t = 0; else s5t = Convert.ToInt32(txtSem5Total.Text);
        if (String.IsNullOrEmpty(txtSem6Obtain.Text)) s6o = 0; else s6o = Convert.ToInt32(txtSem6Obtain.Text);
        if (String.IsNullOrEmpty(txtSem6Total.Text)) s6t = 0; else s6t = Convert.ToInt32(txtSem6Total.Text);
        if (String.IsNullOrEmpty(txtSem7Obtain.Text)) s7o = 0; else s7o = Convert.ToInt32(txtSem7Obtain.Text);
        if (String.IsNullOrEmpty(txtSem7Total.Text)) s7t = 0; else s7t = Convert.ToInt32(txtSem7Total.Text);
        if (String.IsNullOrEmpty(txtSem8Obtain.Text)) s8o = 0; else s8o = Convert.ToInt32(txtSem8Obtain.Text);
        if (String.IsNullOrEmpty(txtSem8Total.Text)) s8t = 0; else s8t = Convert.ToInt32(txtSem8Total.Text);

        mo = s1o + s2o + s3o + s4o + s5o + s6o + s7o + s8o;
        tm = s1t + s2t + s3t + s4t + s5t + s6t + s7t + s8t;
        agg = (Convert.ToDouble(mo) / Convert.ToDouble(tm)) * 100;
        aggregate = Math.Round(agg, 2);
        lblTotalMO.Text = mo.ToString();
        lblTotalTM.Text = tm.ToString();
        lblAggregate.Text = aggregate.ToString();
    }

    //Log Out
    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        Session["Admin"] = null;
        Response.Redirect("AdminLogin.aspx");
    }
}