using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace Code2_HF
{
    public partial class jobpost_jobrecruiter : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-7RAT03K\\SQLEXPRESS;integrated security=true;initial catalog=jobseeker");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["pp"] != null && Request.QueryString["pp"].ToString() != "")
            {
                if (!IsPostBack)
                {
                    Edit();
                }
            }

            if (Session["rid"] != null && Session["rid"].ToString() != "")
            {
                if (!IsPostBack)
                {
                    Bindjobprofile();
                }
            }
            else
            {
                Response.Redirect("logout.aspx");
            }
        }
        public void Edit()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("select * from tbljobpost where jid='" + Request.QueryString["pp"] + "'", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            ddljobprofile.SelectedValue = dt.Rows[0]["jobprofile"].ToString();
            txtminexp.Text = dt.Rows[0]["minexp"].ToString();
            txtmaxexp.Text = dt.Rows[0]["maxexp"].ToString();
            txtminsalary.Text = dt.Rows[0]["minsalary"].ToString();
            txtmaxsalary.Text = dt.Rows[0]["maxsalary"].ToString();
            txtnoofvacancy.Text = dt.Rows[0]["noofvacancy"].ToString();
            btnsubmit.Text = "Update";
        }
        public void Bindjobprofile()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("pjobprofile", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            ddljobprofile.DataValueField = "jpid";
            ddljobprofile.DataTextField = "jpname";
            ddljobprofile.DataSource = dt;
            ddljobprofile.DataBind();
            ddljobprofile.Items.Insert(0, new ListItem("--Select Language--", "0"));
        }
        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (Convert.ToInt32( txtmaxexp.Text) > Convert.ToInt32(txtminexp.Text))
            {
                if(Convert.ToInt32(txtmaxsalary.Text) > Convert.ToInt32(txtminsalary.Text))
                {
                    if (btnsubmit.Text == "Submit")
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("JobPost_Insert", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@jobrecruiter", Session["rid"]);
                        cmd.Parameters.AddWithValue("@jobprofile", ddljobprofile.SelectedValue);
                        cmd.Parameters.AddWithValue("@minexp", txtminexp.Text);
                        cmd.Parameters.AddWithValue("@maxexp", txtmaxexp.Text);
                        cmd.Parameters.AddWithValue("@minsalary", txtminsalary.Text);
                        cmd.Parameters.AddWithValue("@maxsalary", txtmaxsalary.Text);
                        cmd.Parameters.AddWithValue("@noofvacancy", txtnoofvacancy.Text);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        lblmsg.Text = "Your Job Posted Succesfully !!";
                    }
                    else if (btnsubmit.Text=="Update")
                    {
                        con.Open();
                        SqlCommand cmd = new SqlCommand("JobPost_update", con);
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@jid", Request.QueryString["pp"]);
                        cmd.Parameters.AddWithValue("@jobrecruiter", Session["rid"]);
                        cmd.Parameters.AddWithValue("@jobprofile", ddljobprofile.SelectedValue);
                        cmd.Parameters.AddWithValue("@minexp", txtminexp.Text);
                        cmd.Parameters.AddWithValue("@maxexp", txtmaxexp.Text);
                        cmd.Parameters.AddWithValue("@minsalary", txtminsalary.Text);
                        cmd.Parameters.AddWithValue("@maxsalary", txtmaxsalary.Text);
                        cmd.Parameters.AddWithValue("@noofvacancy", txtnoofvacancy.Text);
                        cmd.ExecuteNonQuery();
                        con.Close();
                        lblmsg.Text = "Your Job Updated Succesfully !!";
                    }
                }
                else
                {
                    lblmsg.Text = "Maximum Salary should be greater than Minimum Salary";
                }

            }
            else
            {
                lblmsg.Text = "Maximum Experince should be greater than Minimum Experince";
            }
        }
    }
}