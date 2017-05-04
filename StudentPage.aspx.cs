using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    //    if(Session["RollNo"]==null) { Response.Redirect("Login.aspx"); }
    //    else { lblWelcome.Text = Session["RollNo"].ToString(); }

        if (Request.Cookies["RollNo"] == null) { Response.Redirect("Login.aspx"); }
        else { lblWelcome.Text = Server.HtmlEncode(Request.Cookies["RollNo"].Value); }
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        //Session["RollNo"] = null;
        //Response.Redirect("Default.aspx");

        if (Request.Cookies["RollNo"] != null)
        {
            Response.Cookies["RollNo"].Expires = DateTime.Now.AddDays(-1);
            Response.Redirect("Default.aspx");
        }
    }
}