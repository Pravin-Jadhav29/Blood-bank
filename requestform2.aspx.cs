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
    public partial class requestform2 : System.Web.UI.Page
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
            p = "insert into Table_rb(bloodty,fullnm,age,gender,contact,reqfor,before,unit,location)values('" + DropDownList1.Text+ "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + RadioButtonList2.SelectedValue + "','" + TextBox3.Text + "','" + RadioButtonList1.SelectedValue + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
            cmd = new SqlCommand(p, con);
            j = cmd.ExecuteNonQuery();
            if (Page.IsValid) 
            {
                lblmsg.Text = "Blood Requested";

            }
            else
            {
                lblmsg.Text = "Blood Not Requested";
            }

            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
          
        }
    }
}