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
    public partial class Addadmin : System.Web.UI.Page
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
            s = "insert into addad(aname,password,gender)values('" + TextBox1.Text + "','" +TextBox5.Text + "','"+RadioButtonList1.SelectedValue+"')";
            cmd = new SqlCommand(s, con);
            cmd.ExecuteNonQuery();
            if (Page.IsValid) 
            {
                Response.Redirect("Adminlogin1.aspx");
               

            }
            else
            {
                Label7.Text = "Record not Save";
            }
            con.Close();
        }
    }
}