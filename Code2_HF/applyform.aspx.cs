using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Net;
using System.Net.Mail;
using System.EnterpriseServices.CompensatingResourceManager;


namespace Code2_HF
{
    public partial class applyform : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-7RAT03K\\SQLEXPRESS;integrated security=true;initial catalog=jobseeker");
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["jid"] != null && Session["jid"].ToString() != "")
            {
                if (!IsPostBack)
                {
                    GetCompanyEmailId();
                }
            }
            else
            {
                Response.Redirect("logout.aspx");
            }
        }
        public void GetCompanyEmailId()
        {
            con.Open();
            cmd = new SqlCommand("select remail from jobrecruiter where rname='" + Request.QueryString["companyname"] +"'", con);
            da = new SqlDataAdapter(cmd);
            dt = new DataTable();
            da.Fill(dt);
            con.Close();
            txtoemail.Text = dt.Rows[0]["remail"].ToString();
        }
        protected void btnsentmail_Click(object sender, EventArgs e)
        {
            MailAddress bcc = new MailAddress("kushsharawat1@gmail.com");
            using (MailMessage mm = new MailMessage(txtfromemail.Text, txtoemail.Text))
            {
                mm.Subject = txtsubject.Text;
                mm.Body = txtbody.Text;
                mm.CC.Add(bcc);
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host=ddlhost.SelectedItem.Text;
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("kushsharawat1@gmail.com","");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 25;
                smtp.Send(mm);
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Email sent.');", true);
            }
        }
    }
}