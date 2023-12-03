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
    public partial class Admin_jobpost : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-7RAT03K\\SQLEXPRESS;integrated security=true;initial catalog=jobseeker");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["aid"] != null && Session["aid"].ToString() != "")
            {
                if (!IsPostBack)
                {
                    BindGrid();
                }
            }
            else
            {
                Response.Redirect("logout.aspx");
            }
        }
        public void BindGrid()
        {
            con.Open();
            SqlCommand cmd = new SqlCommand("pjobprofile", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            gvjobopenings.DataSource = dt;
            gvjobopenings.DataBind();
        }

        protected void gvjobopenings_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if(e.CommandName=="B")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("delt", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@del", e.CommandArgument);
                cmd.ExecuteNonQuery();
                con.Close();
                BindGrid();
            }
        }
    }
}