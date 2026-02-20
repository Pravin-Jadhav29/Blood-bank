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
    public partial class Addcamp2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=pravin\sqlexpress;Initial Catalog=bloodbank;Integrated Security=True");
        SqlCommand cmd;
        string s;
        int i;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            s = "insert into addcamp(campdate,organizer,addr,contact,requnit)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "')";
            cmd = new SqlCommand(s, con);
            i = cmd.ExecuteNonQuery();
            if (i > 0)
            {
                msgl.Text = "Camp Added";

            }
            else
            {
                msgl.Text = "Camp not Added";
            }
            con.Close();
        }
    }
}