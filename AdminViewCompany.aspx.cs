using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class AdminViewCompany : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void GridViewCompany_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        if (e.CommandName == "Vw")
        {
            String id = e.CommandArgument.ToString();
            Response.Redirect("~/StudentView_Details.aspx?UserId=" + id);
        }
        if (e.CommandName == "Ed")
        {
            String id = e.CommandArgument.ToString();
            Response.Redirect("~/StudentEdit_Details.aspx?UserId=" + id);
        }

        if (e.CommandName == "Dl")
        {
            String id = e.CommandArgument.ToString();
            DeleteDetails(id);
        }
    }
    public void DeleteDetails(string id)
    {
        try
        {
            if (!String.IsNullOrEmpty(id))
            {
                SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
                sqlcon.Open();
                string query1 = "DELETE FROM Company WHERE Id=@Id";
                SqlCommand sqlcmd1 = new SqlCommand(query1, sqlcon);
                sqlcmd1.Parameters.AddWithValue("@Id", id);
                int result = sqlcmd1.ExecuteNonQuery();
                sqlcon.Close();

                if (result > 0)
                    Response.Write("<script>alert('Data deleted')</script>");
                else
                    Response.Write("<script>alert('No Data Deleted')</script>");
                GridViewCompany.EditIndex = -1;
                GridViewCompany.DataBind();
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}