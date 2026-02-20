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
    public partial class searchdoner2 : System.Web.UI.Page
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
            p = "insert into adoner(donerid,name,mobile,fathernm,city,dob,gender,bloodgroup)values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + DropDownList1.SelectedValue + "','" + DropDownList2.SelectedValue + "')";
            cmd = new SqlCommand(p, con);
            j = cmd.ExecuteNonQuery();
            if (j > 0)
            {
                Lblmsg.Text = "Record Save";

            }
            else
            {
                Lblmsg.Text = "Record not Save";
            }
            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            p = "update  adoner set name='" + TextBox2.Text + "',mobile='" + TextBox3.Text + "',fathernm='" + TextBox4.Text + "',city='" + TextBox5.Text + "',dob='" + TextBox6.Text + "',gender='" + DropDownList1.SelectedValue + "',bloodgroup='" + DropDownList2.SelectedValue + "' where donerid='" + TextBox1.Text + "'";
            cmd = new SqlCommand(p, con);
            j = cmd.ExecuteNonQuery();
            if (j > 0)
            {
                Lblmsg.Text = "Record update";

            }
            else
            {
                Lblmsg.Text = "Record not update";
            }
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            p = "select * from adoner where donerid='" + TextBox1.Text + "'";
            da = new SqlDataAdapter(p, con);
            dt = new DataTable();
            da.Fill(dt);
            TextBox2.Text = dt.Rows[0][1].ToString();
            TextBox3.Text = dt.Rows[0][2].ToString();
            TextBox4.Text = dt.Rows[0][3].ToString();
            TextBox5.Text = dt.Rows[0][4].ToString();
            TextBox6.Text = dt.Rows[0][5].ToString();
            DropDownList1.SelectedValue = dt.Rows[0][6].ToString();
            DropDownList2.SelectedValue = dt.Rows[0][7].ToString();
            
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Open();
            p = "delete  from adoner where donerid='" + TextBox1.Text + "'";
            cmd = new SqlCommand(p, con);
            j = cmd.ExecuteNonQuery();
            if (j > 0)
            {
                Lblmsg.Text = "Record delete";
               
            }
            else
            {
                Lblmsg.Text = "Record not delete";
            }
            con.Close();

        }
       
    }
}