using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

public partial class AdminViewRegisteredStudent : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void GridViewRegisteredSt_RowCommand(object sender, GridViewCommandEventArgs e)
    {

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
                string query = "DELETE FROM StudentSignUp WHERE Id=@Id";
                SqlCommand sqlcmd = new SqlCommand(query, sqlcon);
                sqlcmd.Parameters.AddWithValue("@Id", id);
                int result = sqlcmd.ExecuteNonQuery();
                sqlcon.Close();

                if (result > 0)
                    Response.Write("<script>alert('Data deleted')</script>");
                else
                    Response.Write("<script>alert('No Data Deleted')</script>");
                GridViewRegisteredSt.EditIndex = -1;
                GridViewRegisteredSt.DataBind();
            }
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}