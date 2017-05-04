using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class StudentAcademicEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["RollNo"] == null) { Response.Redirect("Login.aspx"); }
        else { lblWelcome.Text = Session["RollNo"].ToString(); }
    }

    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session["RollNo"] = null;
        Response.Redirect("Default.aspx");
    }
}