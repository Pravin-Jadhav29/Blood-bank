using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;
using System.Data.SqlClient;
using System.Data;


namespace PROJECT
{
    public partial class WebForm4 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=pravin\sqlexpress;Initial Catalog=bloodbank;Integrated Security=True");
        SqlCommand cmd;
        SqlDataAdapter da;
        DataTable dt;
        ReportDocument cr;
        string s;
        int i;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            s = "select * from adoner";
            da = new SqlDataAdapter(s, con);
            dt = new DataTable();
            da.Fill(dt);
            cr = new ReportDocument();
            cr.Load(Server.MapPath("CrystalReport2.rpt"));
            cr.SetDataSource(dt);
            cr.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, true, "donerreport");
            cr.Close();
            cr.Dispose();
            Response.End();
            CrystalReportViewer1.ReportSource = cr;
            CrystalReportViewer1.RefreshReport();

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            s = "select * from  Table_rb ";
            da = new SqlDataAdapter(s, con);
            dt = new DataTable();
            da.Fill(dt);
            cr = new ReportDocument();
            cr.Load(Server.MapPath("CrystalReport3.rpt"));
            cr.SetDataSource(dt);
            cr.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, true, "Blood Request Report");
            cr.Close();
            cr.Dispose();
            Response.End();
            CrystalReportViewer1.ReportSource = cr;
            CrystalReportViewer1.RefreshReport();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            s = "select * from addcamp  ";
            da = new SqlDataAdapter(s, con);
            dt = new DataTable();
            da.Fill(dt);
            cr = new ReportDocument();
            cr.Load(Server.MapPath("CrystalReport4.rpt"));
            cr.SetDataSource(dt);
            cr.ExportToHttpResponse(ExportFormatType.PortableDocFormat, Response, true, "Blood Camp Report");
            cr.Close();
            cr.Dispose();
            Response.End();
            CrystalReportViewer1.ReportSource = cr;
            CrystalReportViewer1.RefreshReport();
        }
    }
}