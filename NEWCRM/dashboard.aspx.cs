using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace NEWCRM.css
{
    public partial class dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            for (int i = 0; i < 9; i++)
            {
                dashboard12.Columns[i].ItemStyle.HorizontalAlign = HorizontalAlign.Center;
            }
            SqlConnection sqcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            sqcon.Open();
            SqlDataAdapter sqlda = new SqlDataAdapter("SELECT First_Name,Middle_Name,Last_Name,File_no, Location,Gender,District,Mobile,Date_of_Birth FROM CRM_Details", sqcon);
            DataTable dtbl = new DataTable();
            sqlda.Fill(dtbl);
            dashboard12.DataSource = dtbl;
            dashboard12.DataBind();
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            SqlConnection sqcon = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            sqcon.Open();
            SqlDataAdapter sqlda = new SqlDataAdapter("SELECT * FROM CRM_Details where First_Name ='" + search_text.Text.ToString() + "'", sqcon);
            DataTable dtbl = new DataTable();
            sqlda.Fill(dtbl);
            dashboard12.DataSource = dtbl;
            dashboard12.DataBind();

        }

        protected void dashboard12_SelectedIndexChanged(object sender, EventArgs e)
        {
            string fname = dashboard12.SelectedRow.Cells[0].Text;
           // Label1.Text = fname;
            Response.Redirect("details.aspx?FirstName=" + fname);
            //Response.Redirect("details.aspx");
        }

        
    }
}