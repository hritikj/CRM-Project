using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace NEWCRM
{
    public partial class details : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            SqlConnection sqcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            sqcon.Open();
            String myquery = "Select * from CRM_Details where First_Name='" + Request.QueryString["FirstName"]+"'";
            
            SqlCommand cmd = new SqlCommand(myquery,sqcon);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read()) {
                f_name.Text = (dr["First_Name"].ToString());
                m_name.Text = (dr["Middle_Name"].ToString());
                l_name.Text = (dr["Last_Name"].ToString());
                file_no.Text = (dr["File_No"].ToString());
                loc.Text = (dr["Location"].ToString());
                gender.Text = (dr["Gender"].ToString());
                district.Text = (dr["District"].ToString());
                mob.Text = (dr["Mobile"].ToString());
                dob.Text = (dr["Date_of_Birth"].ToString());
                addr.Text = (dr["Address"].ToString());
                w1_name.Text = (dr["Witness1_Name"].ToString());
                w1_no.Text = (dr["Witness1_Number"].ToString());
                w2_name.Text = (dr["Witness2_Name"].ToString());
                w2_no.Text = (dr["Witness2_Number"].ToString());
                doc.Text = (dr["Documents"].ToString());
                appdate.Text = (dr["App_Date"].ToString());
            }
            
           
            
        }

       
    }
}