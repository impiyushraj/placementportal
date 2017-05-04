using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class AdminStudentSearch : System.Web.UI.Page
{
    string query;
    protected void Page_Load(object sender, EventArgs e)
    {
        //if(Session["Admin"] == null)
        //{
        //    Response.Redirect("AdminLogin.aspx");
        //}
        //else
        //{
        //    if(!(Page.IsPostBack))
        //    {
                
        //    }
        //}
    }

    protected void btnSearch_Click(object sender, EventArgs e)
    {
        //generatequery();
        //search();
        //display();

        //string course = "B.Tech";
        //if (cblCourse.Items[0].Selected)
        //query = "SELECT RollNo FROM StudentDetailsAcademic WHERE Course='" + course + "'";
        {
            //query = "SELECT [RollNo], [Course], [Branch], [Year], [Aggregate], [BackTotal], [BackLive] FROM [StudentDetailsAcademic] WHERE ([AddYear] = @AddYear)";
        }
        //SqlDataSourceSearch.SelectParameters.Insert();
        //query = "SELECT RollNo, Course, Branch, Year FROM StudentDetailsAcademic WHERE RollNo=1302710101";
        SqlDataSourceSearch.SelectCommand = query;
        GridView1.DataBind();
    }
    //public void generatequery()
    //{
    //    if(cblBranch.Items[0].Selected)
    //        query= "SELECT RollNo FROM StudentDetailsAcademic WHERE Branch=B.Tech";
    //    search(query);

    //}
    //public void search(string que)
    //{
    //    //SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
    //    //sqlcon.Open();
    //    //SqlCommand sqlcmd = new SqlCommand(que, sqlcon);
    //    //SqlDataReader dr = sqlcmd.ExecuteReader();
    //    SqlDataSourceSearch.SelectCommand = que;
    //    //dr.Close();
    //    //sqlcon.Close();
    //}

    //public void display()
    //{

    //}
}