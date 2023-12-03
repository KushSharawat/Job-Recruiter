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
    public partial class jobrecruiter : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-7RAT03K\\SQLEXPRESS;integrated security=true;initial catalog=jobseeker");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGrid();
                BindType();
            }
        }

        public void BindGrid()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("gjobrecruiter", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            gjobrecruiter.DataSource = dt;
            gjobrecruiter.DataBind();
        }

        public void BindType()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("ptype", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            txttype.DataValueField = "tid";
            txttype.DataTextField = "tname";
            txttype.DataSource = dt;
            txttype.DataBind();
            txttype.Items.Insert(0, new ListItem("--Select qualification--", "0"));
        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("pjobrecruiter", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@rtype", txttype.SelectedValue);
            cmd.Parameters.AddWithValue("@rname", txtname.Text);
            cmd.Parameters.AddWithValue("@rurl", txturl.Text);
            cmd.Parameters.AddWithValue("@rcontact", txtcont.Text);
            cmd.Parameters.AddWithValue("@remail", txtemail.Text);
            cmd.Parameters.AddWithValue("@rpassword", txtpass.Text);
            cmd.Parameters.AddWithValue("@raddress", txtadd.Text);
            cmd.ExecuteNonQuery();
            con.Close();
            BindGrid();
        }
    }
}