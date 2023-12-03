using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Code2_HF
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-7RAT03K\\SQLEXPRESS;integrated security=true;initial catalog=jobseeker");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlog_Click(object sender, EventArgs e)
        {
            if (txtlogin.SelectedValue == "1")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("jobseekerlog", con);
                cmd.Parameters.AddWithValue("@email", txtemail.Text);
                cmd.Parameters.AddWithValue("@pas", txtpass.Text);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();
                if (dt.Rows.Count == 0)
                {
                    lblmsg.Text = "Login Failed !!";
                }
                else
                {
                    Session["JID"] = dt.Rows[0]["jid"];
                    Response.Redirect("home_jobseeker.aspx");
                }

            }
            else if (txtlogin.SelectedValue == "2")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("jobrecruiterlog", con);
                cmd.Parameters.AddWithValue("@email", txtemail.Text);
                cmd.Parameters.AddWithValue("@pas", txtpass.Text);
                cmd.CommandType = CommandType.StoredProcedure;
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();
                if (dt.Rows.Count == 0)
                {
                    lblmsg.Text = "Login Failed !!";
                }
                else
                {
                    Session["RID"] = dt.Rows[0]["rid"];
                    Response.Redirect("home_jobrecruiter.aspx");
                }
            }
            else if (txtlogin.SelectedValue == "3")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from tbladmin where aemail='"+txtemail.Text+"' and apassword='"+txtpass.Text+"'", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();
                if (dt.Rows.Count == 0)
                {
                    lblmsg.Text = "Login Failed !!";
                }
                else
                {
                    Session["AID"] = dt.Rows[0]["aid"];
                    Response.Redirect("home_Admin.aspx");
                }
            }
        }
    }
}