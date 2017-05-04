using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class test : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
}



public partial class searchstudent : System.Web.UI.Page
{
    SqlConnection con;

    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["un"] == null)
        {
            Response.Redirect("LGN.aspx?rid=3");
        }
        con = new SqlConnection(ConfigurationManager.ConnectionStrings["TNPConnectionString"].ToString());
        con.Open();
        GridView1.Visible = false;
        DataList1.Visible = false;
    }


    protected void Button3_Click(object sender, EventArgs e)
    {
        DataList1.Visible = false;
        txtroll.Text = "";

    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        ddlyear.Text = "[select]";
        txtagg.Text = "";
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        if (ddlyear.Text != "" && txtagg.Text != "")
        {
            GridView1.Visible = true;
        }
        else
        {
            Response.Write("<script>alert('Enter both the fields');</script>");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        DataList1.Visible = true;
    }
    protected void LinkButton1_Click1(object sender, EventArgs e)
    {
        string str = ((LinkButton)sender).Text;
        Response.Redirect("mailto:" + str);
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("adminsearch.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("admindetails.aspx");
    }
}
