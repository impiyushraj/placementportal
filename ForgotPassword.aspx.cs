using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using System.Net.Mail;
using System.Net;

public partial class ForgotPassword : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnForgot_Click(object sender, EventArgs e)
    {
        try
        {
            DataSet ds = new DataSet();
            SqlConnection sqlcon = new SqlConnection(ConfigurationManager.ConnectionStrings["SQLConnectionString"].ConnectionString);
            sqlcon.Open();
            SqlCommand sqlcmd = new SqlCommand("SELECT RollNo, Password FROM StudentSignUp Where RollNo= '" + txtRollNo.Text + "'", sqlcon);
            SqlDataAdapter da = new SqlDataAdapter(sqlcmd);
            da.Fill(ds);

            //if (ds.Tables[0].Rows.Count > 0)
            //{

            MailMessage Msg = new MailMessage();
            // Sender e-mail address.
            Msg.From = new MailAddress("prachaarkaro@gmail.com");

            // Recipient e-mail address.
            Msg.To.Add(txtEmail.Text);

            Msg.Subject = "AKGEC T&P Forgot Password";
            Msg.Body = "Hi, <br/>Please check your Login Details<br/><br/>Your RollNo: " + ds.Tables[0].Rows[0]["RollNo"] + "<br/><br/>Your Password: " + ds.Tables[0].Rows[0]["Password"] + "<br/><br/>";
            Msg.IsBodyHtml = true;

            // your remote SMTP server IP.
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.UseDefaultCredentials = true;
            NetworkCredential NetworkCred = new NetworkCredential("prachaarkaro@gmail.com", "Uptu1302710101");
            smtp.Credentials = NetworkCred;
            smtp.EnableSsl = true;
            smtp.Send(Msg);
            Response.Write("<script>alert('Your Password Details Sent to your mail.')</script>");

            // Clear the textbox values
            Msg = null;
            txtEmail.Text = "";
            ds.Clear();
            //}
            //else{}
            sqlcon.Close();
        }
        catch (Exception ex)
        {
            throw ex;
        }
    }
}