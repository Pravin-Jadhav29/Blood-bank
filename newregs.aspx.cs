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
    public partial class newregs : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=pravin\sqlexpress;Initial Catalog=bloodbank;Integrated Security=True");
        SqlCommand cmd;
        string s;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            s = "insert into newr(username,contact,dob,password)values('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+TextBox4.Text+"')";
            cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            if (Page.IsValid)
            {
                Response.Redirect("loginpage.aspx");


            }
            else
            {
                msg.Text = "Record not Save";
            }
            con.Close();
        }
    }
    
}