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
    public partial class reqformad : System.Web.UI.Page
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
            p = "insert into Table_rb(bloodty,fullnm,age,gender,contact,reqfor,before,unit,location)values('" + DropDownList2.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + DropDownList1.SelectedValue + "','" + TextBox3.Text + "','" + DropDownList3.SelectedValue + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "')";
            cmd = new SqlCommand(p, con);
            j = cmd.ExecuteNonQuery();
            if (j > 0)
            {
                massage.Text = " Requested saved";

            }
            else
            {
                massage.Text = "Requested not saved";
            }

            con.Close();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            p = "update Table_rb set bloodty='" + DropDownList2.SelectedValue + "',age='" + TextBox2.Text + "',gender='" + DropDownList1.SelectedValue + "',contact='" + TextBox3.Text + "',reqfor='" +DropDownList3.SelectedValue + "',before='" + TextBox4.Text + "',unit='" + TextBox5.Text + "',location='" + TextBox6.Text + "' where fullnm='" + TextBox1.Text + "'";
            cmd = new SqlCommand(p, con);
            j = cmd.ExecuteNonQuery();
            if (j > 0)
            {
                massage.Text = "Request updated";

            }
            else
            {
                massage.Text = "Request not update";
            }
            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            p = "select * from Table_rb where fullnm='" + TextBox1.Text + "'";
            da = new SqlDataAdapter(p, con);
            dt = new DataTable();
            da.Fill(dt);
            DropDownList2.Text = dt.Rows[0][1].ToString();
            TextBox2.Text = dt.Rows[0][2].ToString();
            DropDownList1.SelectedValue = dt.Rows[0][3].ToString();
            TextBox3.Text = dt.Rows[0][4].ToString();
            DropDownList3.SelectedValue = dt.Rows[0][5].ToString();
            TextBox4.Text = dt.Rows[0][6].ToString();
            TextBox5.Text = dt.Rows[0][7].ToString();
            TextBox6.Text = dt.Rows[0][8].ToString();
           
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            con.Open();
            p = "delete  from Table_rb where fullnm='" + TextBox1.Text + "'";
            cmd = new SqlCommand(p, con);
            j = cmd.ExecuteNonQuery();
            if (j > 0)
            {
                massage.Text = "Record delete";

            }
            else
            {
                massage.Text = "Record not delete";
            }
        }
    }
}