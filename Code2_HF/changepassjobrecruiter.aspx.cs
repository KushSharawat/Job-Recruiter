using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Code2_HF
{
    public partial class changepassjobrecruiter : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("server=DESKTOP-7RAT03K\\SQLEXPRESS;integrated security=true;initial catalog=jobseeker");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["rid"] != null && Session["rid"].ToString() != "")
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
            if (txtnewpass.Text == txtconfirmpass.Text)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("cpjobrecruiter", con);
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Parameters.AddWithValue("@pass", txtnewpass.Text);
                cmd.Parameters.AddWithValue("@cpass", txtcurrentpass.Text);
                cmd.Parameters.AddWithValue("@id", Session["rid"]);
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