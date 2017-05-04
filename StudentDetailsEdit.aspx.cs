using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

public partial class StudentDetailsEdit : System.Web.UI.Page
{
    SqlConnection sqlcon;
    SqlCommand sqlcmd1, sqlcmd2, sqlcmd3, sqlcmd4, sqlcmd5;
    SqlDataReader dr1, dr2, dr3;
    int mo, tm;
    double agg, aggregate;
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["RollNo"] == null)
        {
            Response.Redirect("Login.aspx");
        }
        else
        {
            if (!(Page.IsPostBack))
                bind();
        }
    }
    public void bind()
    {

        lblWelcome.Text = Session["RollNo"].ToString();

        //Retreive & Display Student 'Personal' Details already available
        sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
        sqlcon.Open();
        sqlcmd1 = new SqlCommand("select * from StudentDetailsPersonal where RollNo='" + Session["RollNo"] + "'", sqlcon);
        dr1 = sqlcmd1.ExecuteReader();
        if (dr1.Read())
        {
            txtStudentName.Text = dr1[1].ToString().ToUpper();
            txtRollNo.Text = dr1[2].ToString();
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
        sqlcon.Close();
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        submit();
    }
    public void submit()
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

            sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
            sqlcon.Open();
            string query1 = "UPDATE StudentDetailsPersonal SET StNo=@StNo, Father=@Father, Mother=@Mother, Gender=@Gender, Mobile=@Mobile, Email=@Email, DOBDate=@DOBDate, DOBMonth=@DOBMonth, DOBYear=@DOBYear, LHouse=@LHouse, LAddress1=@LAddress1, LAddress2=@LAddress2, LStreet=@LStreet, LCity=@LCity, LState=@LState, LPincode=@LPincode, PHouse=@PHouse, PAddress1=@PAddress1, PAddress2=@PAddress2, PStreet=@PStreet, PCity=@PCity, PState=@PState, PPincode=@PPincode where RollNo='" + Session["RollNo"] + "'";
            sqlcmd2 = new SqlCommand(query1, sqlcon);
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
            Response.Redirect("StudentDetailsView.aspx");
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
            sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
            sqlcon.Open();
            sqlcmd4 = new SqlCommand("select * from StudentDetailsPersonal where RollNo='" + Session["RollNo"] + "'", sqlcon);
            dr2 = sqlcmd4.ExecuteReader();
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
            sqlcon.Close();
        }
    }
    protected void btnLogOut_Click(object sender, EventArgs e)
    {
        Session["RollNo"] = null;
        Response.Redirect("Login.aspx");
    }
}