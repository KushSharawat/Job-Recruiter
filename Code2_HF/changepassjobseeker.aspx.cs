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
    public partial class changepassjobseeker : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-7RAT03K\\SQLEXPRESS;integrated security=true;initial catalog=jobseeker");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["jid"] != null && Session["jid"].ToString() != "")
            {
                if (!IsPostBack)
                {
                    //BindGrid();
                }
            }
            else
            {
                Response.Redirect("logout.aspx");
            }
        }

        protected void btncp_Click(object sender, EventArgs e)
        {
            if(txtnewpass.Text == txtconfirmpass.Text)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("cpjobseeker", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@pass", txtnewpass.Text);
                cmd.Parameters.AddWithValue("@cpass", txtcurrentpass.Text);
                cmd.Parameters.AddWithValue("@id", Session["jid"]);
                cmd.ExecuteNonQuery();
                con.Close();
                lblmsg.Text = "Password has been changed !!";
            }
            else
            {
                lblmsg.Text = "Password do not match !!";
            }
        }
    }
}