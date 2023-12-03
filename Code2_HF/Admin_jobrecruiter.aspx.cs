using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Code2_HF
{
    public partial class Admin_jobrecruiter : System.Web.UI.Page
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
            SqlCommand cmd = new SqlCommand("gjobrecruiter", con);
            cmd.CommandType = CommandType.StoredProcedure;
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            gjobrecruiter.DataSource = dt;
            gjobrecruiter.DataBind();
        }

        protected void gjobrecruiter_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "B")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update jobrecruiter set rstatus=1 where rid='"+e.CommandArgument+"'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                BindGrid();
            }

            else if (e.CommandName == "C")
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("update jobrecruiter set rstatus=0 where rid='" + e.CommandArgument + "'", con);
                cmd.ExecuteNonQuery();
                con.Close();
                BindGrid();
            }
        }
    }
}