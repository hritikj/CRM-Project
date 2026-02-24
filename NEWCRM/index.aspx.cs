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
    public partial class index : System.Web.UI.Page
    {
        String gender, documents,appdate;
        SqlCommand cmd = new SqlCommand();
        //SqlConnection con = new SqlConnection();
        SqlConnection sqcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string file_num;
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void female_CheckedChanged(object sender, EventArgs e)
        {
            sqcon.Open();
            SqlCommand cmd = new SqlCommand("Select count(*) from CRM_Details where First_Name='" + f_name.Text + "'", sqcon);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            sqcon.Close();
            string str1 = f_name.Text.ToString();
            string str2 = location.Text.ToString();
            file_num = str1.Substring(0, 3) + ":" + str2.Substring(0, 3);
            file_no.Text = file_num+":"+i.ToString();
        }

        protected void male_CheckedChanged(object sender, EventArgs e)
        {
            sqcon.Open();
            SqlCommand cmd = new SqlCommand("Select count(*) from CRM_Details where First_Name='" + f_name.Text + "'", sqcon);
            int i = Convert.ToInt32(cmd.ExecuteScalar());
            sqcon.Close();
            string str1 = f_name.Text.ToString();
            string str2 = location.Text.ToString();
            file_num = str1.Substring(0, 3) + ":" + str2.Substring(0, 3);
            file_no.Text = file_num+":" + i.ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            c_name.Text = "";
            location.Text = "";
            f_name.Text = "";
            m_name.Text = "";
            file_no.Text = "";
            l_name.Text = "";
            district.Text = "";
            mob_no.Text = "";
            dob.Text = "";
            c_address.Text = "";
            w_name_1.Text = "";
            w_name_2.Text = "";
            w_cont_1.Text = "";
            w_cont_2.Text = "";
            female.Checked = false;
            male.Checked = false;
            grp1.Text = "";
            grp2.Text = "";
            grp3.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
           
            try
            {
                if (female.Checked == true)
                {
                    gender = "Female";
                }
                if (male.Checked == true)
                {
                    gender = "Male";
                }

                documents = string.Join(" ", grp1.Text, grp2.Text, grp3.Text);
                //String name_details = string.Join(" ", l_name.Text, f_name.Text,m_name.Text);
                // Label1.Text = documents;
                appdate = Calendar1.TodaysDate.ToShortDateString();
                sqcon.Open();
                string insert = "insert into CRM_Details (First_Name,Middle_Name,Last_Name,File_No,Location,Gender,District,Mobile,Date_of_Birth,Address,Witness1_Name,Witness2_Name,Witness1_Number,Witness2_Number,Documents) " +
                                 "values (@first_name,@middle_name,@last_name,@file_no,@location,@gender,@district,@mobile,@DOB,@address,@witness1_name,@witness2_name,@witness1_no,@witness2_no,@doc)";
                SqlCommand cmd = new SqlCommand(insert, sqcon);

                cmd.Parameters.AddWithValue("@first_name", f_name.Text);
                cmd.Parameters.AddWithValue("@middle_name", m_name.Text);
                cmd.Parameters.AddWithValue("@last_name", l_name.Text);
                cmd.Parameters.AddWithValue("@file_no", file_no.Text);
                cmd.Parameters.AddWithValue("@location", location.Text);
                cmd.Parameters.AddWithValue("@gender", gender);
                cmd.Parameters.AddWithValue("@district", district.Text);
                cmd.Parameters.AddWithValue("@mobile", mob_no.Text);
                cmd.Parameters.AddWithValue("@DOB", dob.Text);
                cmd.Parameters.AddWithValue("@address", c_address.Text);
                cmd.Parameters.AddWithValue("@witness1_name", w_name_1.Text);
                cmd.Parameters.AddWithValue("@witness2_name", w_name_2.Text);
                cmd.Parameters.AddWithValue("@witness1_no", w_cont_1.Text);
                cmd.Parameters.AddWithValue("@witness2_no", w_cont_2.Text);
                cmd.Parameters.AddWithValue("@doc", documents);
               // cmd.Parameters.AddWithValue("@data", Calendar1.TodaysDate.ToShortDateString());
                cmd.ExecuteNonQuery();

                


                c_name.Text = "";
                location.Text = "";
                f_name.Text = "";
                m_name.Text = "";
                file_no.Text = "";
                l_name.Text = "";
                district.Text = "";
                mob_no.Text = "";
                dob.Text = "";
                c_address.Text = "";
                w_name_1.Text = "";
                w_name_2.Text = "";
                w_cont_1.Text = "";
                w_cont_2.Text = "";
                female.Checked = false;
                male.Checked = false;
                grp1.Text = "";
                grp2.Text = "";
                grp3.Text = "";

               // Label1.Text = name_details;
                // Label2.Text = f_name.Text + '=' + m_name.Text + '=' + l_name.Text;


            }
            catch (Exception ex)
            {

            }

        }
    }
}