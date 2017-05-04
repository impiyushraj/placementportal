using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class UpdateTest : System.Web.UI.Page
{
    ConfigurationFile cf = new ConfigurationFile();
    string id = "101";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
            //Session["UserID"] = "101";
            BindDetails();
    }
    public void BindDetails()
    {
        try
        {
            if (cf.con.State == ConnectionState.Closed)
                cf.con.Open();

            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "SELECT * FROM Profile where UserID= @userid";
            cmd.Connection = cf.con;
            //cmd.Parameters.AddWithValue("@userid", Session["UserID"]);
            cmd.Parameters.AddWithValue("@userid", id);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            SqlDataReader dr = cmd.ExecuteReader();

            if (ds.Tables[0].Rows.Count > 0)
            {
                ddltitle.SelectedValue = ds.Tables[0].Rows[0]["Title"].ToString();
                lblUserName.Text = ds.Tables[0].Rows[0]["UserName"].ToString();
                lblEmail.Text = ds.Tables[0].Rows[0]["Email"].ToString();
                txtFather.Text = ds.Tables[0].Rows[0]["FatherName"].ToString();
                txtAddress.Text = ds.Tables[0].Rows[0]["Address"].ToString();
            }
            else
                Response.Write("Go Back");
            dr.Close();

        }
        catch (Exception ex)
        {
            throw ex;
        }
    }

    public int UpdateDetails()
    {
        int result = 0;
        try
        {
            if (cf.con.State == ConnectionState.Closed)
                cf.con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "UPDATE Profile SET Title=@Title, FatherName=@FatherName,Address=@Address WHERE UserID=@UserID";
            cmd.Connection = cf.con;
            //cmd.Parameters.AddWithValue("@UserID", Session["UserID"]);
            cmd.Parameters.AddWithValue("@userid", id);
            cmd.Parameters.AddWithValue("@Title", ddltitle.SelectedValue);
            cmd.Parameters.AddWithValue("@FatherName", txtFather.Text);
            cmd.Parameters.AddWithValue("@Address", txtAddress.Text);
            result = cmd.ExecuteNonQuery();

            return result;
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            cf.con.Close();
            cf.con.Dispose();
        }
    }

    protected void btnUpdate_Click(object sender, EventArgs e)
    {

        int result = UpdateDetails();
        if (result > 0)
            Response.Write("<script>alert('Data Updated')</script>");
        else
            Response.Write("<script>alert('No Data Updated')</script>");

    }
}