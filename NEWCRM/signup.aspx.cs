using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace NEWCRM
{
    public partial class signup : System.Web.UI.Page
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
                if (adminkey.Text == "hritik")
                {
                    if (passwd.Text == passwd2.Text)
                    {
                        string insert = "insert into user_detail (u_name,password,name,phone,email) "
                            + "values (@uname,@passwd,@name,@phone,@email)";
                        SqlCommand cmd = new SqlCommand(insert, sqcon);
                        cmd.Parameters.AddWithValue("@uname", u_name.Text);
                        cmd.Parameters.AddWithValue("@passwd", passwd.Text);
                        cmd.Parameters.AddWithValue("@name", name.Text);
                        cmd.Parameters.AddWithValue("@phone", mob.Text);
                        cmd.Parameters.AddWithValue("@email", email.Text);
                        cmd.ExecuteNonQuery();
                    }
                    else {

                    }
                }
                else {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "Scripts", "<script>alert('Invalid Key');</script>");
                }
            }
            catch (Exception ex) {
                Response.Write(ex);
            }

        }
    }
}