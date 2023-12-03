using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Code2_HF
{
    public partial class registration_jobseeker : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-7RAT03K\\SQLEXPRESS;integrated security=true;initial catalog=jobseeker");
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
                BindGender();
                BindQualification();
            }
        }

        public void BindGrid()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("gjobseeker", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            gjobseeker.DataSource = dt;
            gjobseeker.DataBind();
        }

        public void BindGender()
        { 
           con.Open();
            SqlCommand cmd = new SqlCommand("pgender", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            txtgender.DataValueField = "gid";
            txtgender.DataTextField = "gname";
            txtgender.DataSource = dt;
            txtgender.DataBind();
        }

        public void BindQualification()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("pqualification", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            txtquali.DataValueField = "qid";
            txtquali.DataTextField = "qname";
            txtquali.DataSource = dt;
            txtquali.DataBind();
            txtquali.Items.Insert(0, new ListItem("--Select qualification--", "0"));
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("pjobseeker", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@jname",txtname.Text);
            cmd.Parameters.AddWithValue("@jgender", txtgender.SelectedValue);
            cmd.Parameters.AddWithValue("@jcontact", txtcont.Text);
            cmd.Parameters.AddWithValue("@jemail", txtemail.Text);
            cmd.Parameters.AddWithValue("@jpassword", txtpass.Text);
            cmd.Parameters.AddWithValue("@jqualification", txtquali.SelectedValue);
            cmd.ExecuteNonQuery();
            con.Close() ;
            BindGrid();

        }
    }
}