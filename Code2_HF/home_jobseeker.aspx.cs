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
    public partial class home_jobseeker : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-7RAT03K\\SQLEXPRESS;integrated security=true;initial catalog=jobseeker");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["jid"] != null && Session["jid"].ToString() != "")
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
            SqlCommand cmd = new SqlCommand("gjobseekerone", con);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.Parameters.AddWithValue("@id", Session["jid"]);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataTable dt = new DataTable();
            da.Fill(dt);
            con.Close();
            gjobseeker.DataSource = dt;
            gjobseeker.DataBind();
        }
    }
}