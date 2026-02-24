using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.UI.WebControls;


namespace NEWCRM
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection sqcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                sqcon.Open();
                //string query = "Select Count(*) from user_detail where u_name='" + u_name.Text + "' and passwd='" + u_passwd.Text + "'";
                SqlCommand cmd = new SqlCommand("Select Count(*) from user_detail where u_name='" + u_name.Text + "' and password='" + u_passwd.Text + "'", sqcon);
                int i = Convert.ToInt32(cmd.ExecuteScalar());
                if (i > 0) {
                   
                    Response.Redirect("index.aspx");
                }
                else {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid Crediential');</script>");
                }

            }
            catch (Exception ex) { }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("signup.aspx");
            
        }
    }
}