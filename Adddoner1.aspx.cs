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
    public partial class Adddoner1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=pravin\sqlexpress;Initial Catalog=bloodbank;Integrated Security=True");
        SqlCommand cmd;
        string p;
        int j;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            p = "insert into adoner(donerid,name,mobile,fathernm,city,dob,gender,bloodgroup)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "')";
            cmd = new SqlCommand(p, con);
            j = cmd.ExecuteNonQuery();
            if (Page.IsValid) 
            {
                lblmsg.Text = "Record Save";

            }
            else
            {
                lblmsg.Text = "Record not Save";
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("masterform.aspx");
        }
    }
}