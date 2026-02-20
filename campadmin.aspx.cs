using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace PROJECT
{
    public partial class campadmin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=pravin\sqlexpress;Initial Catalog=bloodbank;Integrated Security=True");
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;
        string p;
        int j;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

      

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            p = "update  addcamp set organizer='"+TextBox2.Text+ "',addr='" + TextBox3.Text + "',contact='" + TextBox4.Text + "',requnit='" + TextBox5.Text + "' where campdate='" + TextBox1.Text + "'";
            cmd = new SqlCommand(p, con);
            j = cmd.ExecuteNonQuery();
            if (j > 0)
            {
                Labelm.Text = "camp updated";

            }
            else
            {
                Labelm.Text = "camp not updated";
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            p = "select * from addcamp where campdate='" + TextBox1.Text + "'";
            da = new SqlDataAdapter(p, con);
            dt = new DataTable();
            da.Fill(dt);
            TextBox2.Text = dt.Rows[0][1].ToString();
            TextBox3.Text = dt.Rows[0][2].ToString();
            TextBox4.Text = dt.Rows[0][3].ToString();
            TextBox5.Text = dt.Rows[0][4].ToString();
           
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            con.Open();
            p = "delete  from addcamp where campdate='" + TextBox1.Text + "'";
            cmd = new SqlCommand(p, con);
            j = cmd.ExecuteNonQuery();
            if (j > 0)
            {
                Labelm.Text = " camp request deleted";

            }
            else
            {
                Labelm.Text = " not deleted";
            }
            con.Close();
        }
    }
}