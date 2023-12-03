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
    public partial class jobopenings_jobseeker : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-7RAT03K\\SQLEXPRESS;integrated security=true;initial catalog=jobseeker");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["jid"] != null && Session["jid"].ToString() != "")
            {
                if (!IsPostBack)
                {
                    //Bindjobprofile();
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
            if(e.CommandName =="APP")
            {
                Response.Redirect("applyform.aspx?companyname="+e.CommandArgument);
            }
        }
        //public void Bindjobprofile()
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("pjobprofile", con);
        //    cmd.CommandType = CommandType.StoredProcedure;
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    con.Close();
        //    ddljobprofile.DataValueField = "jpid";
        //    ddljobprofile.DataTextField = "jpname";
        //    ddljobprofile.DataSource = dt;
        //    ddljobprofile.DataBind();
        //    ddljobprofile.Items.Insert(0, new ListItem("--Select Language--", "0"));
        //}

        //protected void btnsearch_Click(object sender, EventArgs e)
        //{
        //    con.Open();
        //    SqlCommand cmd = new SqlCommand("select * from tbljobpost join jobrecruiter on tbljobpost.jobrecruiter=jobrecruiter.rid join tbljobprofiles on tbljobpost.jobprofile=tbljobprofiles.jpid where jobprofile='" + ddljobprofile + "'", con);
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataTable dt = new DataTable();
        //    da.Fill(dt);
        //    con.Close();
        //    gvjobopenings.DataSource = dt;
        //    gvjobopenings.DataBind();
        //}
    }
}