using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

namespace Code2_HF
{
    public partial class Admin_jobseeker : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["xyz"].ConnectionString);

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
            SqlCommand cmd = new SqlCommand("gjobseeker", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            gjobseeker.DataSource = dt;
            gjobseeker.DataBind();
        }

        protected void gjobseeker_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "B")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update jobseeker set jstatus=1 where jid='" + e.CommandArgument + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                BindGrid();
            }
            
            else if (e.CommandName == "C")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update jobseeker set jstatus=0 where jid='" + e.CommandArgument + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                BindGrid();
            }
        }
    }
}