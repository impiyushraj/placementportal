using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CompanyRegister : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnJobFormUpload_Click(object sender, EventArgs e)
    {
        string destinationurl = null;
        if (fuJobForm.HasFile)
        {
            string fileNm = fuJobForm.FileName;
            destinationurl = Server.MapPath("ad/" + fileNm);
            fuJobForm.SaveAs(destinationurl);

            SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
            sqlcon.Open();

            //Insert data to Company TABLE
            string query1 = "insert into Company (CpName, CpWebsite, CpAddress, CpSector,CpHRName, CpHRMobile, CpHREmail, CpHRLandline, CpType) values (@CpName, @CpWebsite, @CpAddress, @CpSector, @CpHRName, @CpHRMobile, @CpHREmail, @CpHRLandline, @CpType)";
            SqlCommand sqlcmd1 = new SqlCommand(query1, sqlcon);
            sqlcmd1.Parameters.AddWithValue("@CpName", txtCompanyName.Text.ToUpper());
            sqlcmd1.Parameters.AddWithValue("@CpWebsite", txtCompanyWebsite.Text.ToLower());
            sqlcmd1.Parameters.AddWithValue("@CpAddress", txtCompanyAddress.Text.ToUpper());
            sqlcmd1.Parameters.AddWithValue("@CpSector", txtCompanySector.Text.ToUpper());
            sqlcmd1.Parameters.AddWithValue("@CpHRName", txtHRName.Text.ToUpper());
            sqlcmd1.Parameters.AddWithValue("@CpHRMobile", txtHRMobile.Text);
            sqlcmd1.Parameters.AddWithValue("@CpHREmail", txtHREmail.Text.ToLower());
            sqlcmd1.Parameters.AddWithValue("@CpHRLandline", txtHRLandline.Text);
            sqlcmd1.Parameters.AddWithValue("@CpType", rbCompanyType.SelectedValue);
            sqlcmd1.ExecuteNonQuery();

            //Insert data to NewAd TABLE
            string query2 = "insert into NewAd (CpName, CpWebsite, CpAddress, CpSector,CpHRName, CpHRMobile, CpHREmail, CpHRLandline, CpType, JobAdPath) values (@CpName, @CpWebsite, @CpAddress, @CpSector, @CpHRName, @CpHRMobile, @CpHREmail, @CpHRLandline, @CpType, @JobAdPath)";
            SqlCommand sqlcmd2 = new SqlCommand(query2, sqlcon);
            sqlcmd2.Parameters.AddWithValue("@CpName", txtCompanyName.Text.ToUpper());
            sqlcmd2.Parameters.AddWithValue("@CpWebsite", txtCompanyWebsite.Text.ToLower());
            sqlcmd2.Parameters.AddWithValue("@CpAddress", txtCompanyAddress.Text.ToUpper());
            sqlcmd2.Parameters.AddWithValue("@CpSector", txtCompanySector.Text.ToUpper());
            sqlcmd2.Parameters.AddWithValue("@CpHRName", txtHRName.Text.ToUpper());
            sqlcmd2.Parameters.AddWithValue("@CpHRMobile", txtHRMobile.Text);
            sqlcmd2.Parameters.AddWithValue("@CpHREmail", txtHREmail.Text.ToLower());
            sqlcmd2.Parameters.AddWithValue("@CpHRLandline", txtHRLandline.Text);
            sqlcmd2.Parameters.AddWithValue("@CpType", rbCompanyType.SelectedValue);
            sqlcmd2.Parameters.AddWithValue("@JobAdPath", destinationurl);
            sqlcmd2.ExecuteNonQuery();

            sqlcon.Close();

            txtCompanyName.Text = null;
            txtCompanyWebsite.Text = null;
            txtCompanyAddress.Text = null;
            txtCompanySector.Text = null;
            txtHRName.Text = null;
            txtHRMobile.Text = null;
            txtHREmail.Text = null;
            txtHRLandline.Text = null;
            rbCompanyType.SelectedValue = null;

            Response.Redirect("Success.html");
        }
        else
        {
            Response.Write("<script>alert('Please Select a file to Upload')</script>");
        }
    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
        sqlcon.Open();

        ////Insert data to Company TABLE
        string query1 = "insert into Company (CpName, CpWebsite, CpAddress, CpSector,CpHRName, CpHRMobile, CpHREmail, CpHRLandline, CpType) values (@CpName, @CpWebsite, @CpAddress, @CpSector, @CpHRName, @CpHRMobile, @CpHREmail, @CpHRLandline, @CpType)";
        SqlCommand sqlcmd1 = new SqlCommand(query1, sqlcon);
        sqlcmd1.Parameters.AddWithValue("@CpName", txtCompanyName.Text.ToUpper());
        sqlcmd1.Parameters.AddWithValue("@CpWebsite", txtCompanyWebsite.Text.ToLower());
        sqlcmd1.Parameters.AddWithValue("@CpAddress", txtCompanyAddress.Text.ToUpper());
        sqlcmd1.Parameters.AddWithValue("@CpSector", txtCompanySector.Text.ToUpper());
        sqlcmd1.Parameters.AddWithValue("@CpHRName", txtHRName.Text.ToUpper());
        sqlcmd1.Parameters.AddWithValue("@CpHRMobile", txtHRMobile.Text);
        sqlcmd1.Parameters.AddWithValue("@CpHREmail", txtHREmail.Text.ToLower());
        sqlcmd1.Parameters.AddWithValue("@CpHRLandline", txtHRLandline.Text);
        sqlcmd1.Parameters.AddWithValue("@CpType", rbCompanyType.SelectedValue);
        sqlcmd1.ExecuteNonQuery();

        //Insert data to NewAd TABLE
        string query2 = "insert into NewAd (CpName, CpWebsite, CpAddress, CpSector,CpHRName, CpHRMobile, CpHREmail, CpHRLandline, CpType, JobDsg, JobDsc, JobLocation, JobOfferNo, JobCTC, JobBonus, JobBond, SelectPref, SelectMode, Eligibility, MemberNo, RoomNo, OtherReq, RoundNo, VisitPeriod, OtherDetail) values (@CpName, @CpWebsite, @CpAddress, @CpSector, @CpHRName, @CpHRMobile, @CpHREmail, @CpHRLandline, @CpType, @JobDsg, @JobDsc, @JobLocation, @JobOfferNo, @JobCTC, @JobBonus, @JobBond, @SelectPref, @SelectMode, @Eligibility, @MemberNo, @RoomNo, @OtherReq, @RoundNo, @VisitPeriod, @OtherDetail)";
        SqlCommand sqlcmd2 = new SqlCommand(query2, sqlcon);
        sqlcmd2.Parameters.AddWithValue("@CpName", txtCompanyName.Text.ToUpper());
        sqlcmd2.Parameters.AddWithValue("@CpWebsite", txtCompanyWebsite.Text.ToLower());
        sqlcmd2.Parameters.AddWithValue("@CpAddress", txtCompanyAddress.Text.ToUpper());
        sqlcmd2.Parameters.AddWithValue("@CpSector", txtCompanySector.Text.ToUpper());
        sqlcmd2.Parameters.AddWithValue("@CpHRName", txtHRName.Text.ToUpper());
        sqlcmd2.Parameters.AddWithValue("@CpHRMobile", txtHRMobile.Text);
        sqlcmd2.Parameters.AddWithValue("@CpHREmail", txtHREmail.Text.ToLower());
        sqlcmd2.Parameters.AddWithValue("@CpHRLandline", txtHRLandline.Text);
        sqlcmd2.Parameters.AddWithValue("@CpType", rbCompanyType.SelectedValue);
        sqlcmd2.Parameters.AddWithValue("@JobDsg", txtJobDsg.Text);
        sqlcmd2.Parameters.AddWithValue("@JobDsc",txtJobDsc.Text);
        sqlcmd2.Parameters.AddWithValue("@JobLocation",txtJobLoc.Text.ToUpper());
        sqlcmd2.Parameters.AddWithValue("@JobOfferNo",txtJobOfferNo.Text);
        //sqlcmd2.Parameters.AddWithValue("@JobOpenFor",);
        sqlcmd2.Parameters.AddWithValue("@JobCTC",txtJobCTC.Text);
        sqlcmd2.Parameters.AddWithValue("@JobBonus",txtJobBonus.Text);
        sqlcmd2.Parameters.AddWithValue("@JobBond",txtJobBond.Text);
        sqlcmd2.Parameters.AddWithValue("@SelectPref",rbSelectionPref.SelectedValue);
        sqlcmd2.Parameters.AddWithValue("@SelectMode",cbSelectionMode.SelectedValue);
        sqlcmd2.Parameters.AddWithValue("@Eligibility", txtEligileMin.Text + " to "+ txtEligibleMax.Text);
        sqlcmd2.Parameters.AddWithValue("@MemberNo",txtMemberNo.Text);
        sqlcmd2.Parameters.AddWithValue("@RoomNo",txtRoomNo.Text);
        sqlcmd2.Parameters.AddWithValue("@OtherReq",txtOtherRequire.Text);
        sqlcmd2.Parameters.AddWithValue("@RoundNo",txtRoundNo.Text);
        sqlcmd2.Parameters.AddWithValue("@VisitPeriod",txtVisitPeriod.Text);
        sqlcmd2.Parameters.AddWithValue("@OtherDetail",txtOtherDetails.Text);
        sqlcmd2.ExecuteNonQuery();

        sqlcon.Close();

        txtCompanyName.Text = null;        txtCompanyWebsite.Text = null;
        txtCompanyAddress.Text = null;        txtCompanySector.Text = null;
        txtHRName.Text = null;        txtHRMobile.Text = null;
        txtHREmail.Text = null;        txtHRLandline.Text = null;
        rbCompanyType.SelectedValue = null;
        txtJobDsg.Text = null;        txtJobDsc.Text = null;
        txtJobLoc.Text = null;        txtJobOfferNo.Text = null;
        txtJobCTC.Text = null;        txtJobCTC.Text = null;
        txtJobBonus.Text = null;        txtJobBond.Text = null;
        rbSelectionPref.ClearSelection();        cbSelectionMode.ClearSelection();
        txtEligileMin.Text = null;        txtEligibleMax.Text = null;
        txtMemberNo.Text = null;        txtRoomNo.Text = null;
        txtOtherRequire.Text = null;        txtRoundNo.Text = null;
        txtVisitPeriod.Text = null;        txtOtherDetails.Text = null;

        Response.Redirect("Success.html");
    }
}