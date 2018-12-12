using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;

namespace ProiectTiWeb
{
    public partial class Fluturasi : System.Web.UI.Page
    {
        OracleConnection conn;
        OracleDataAdapter da;

        DataSet ds, dsPass;
        OracleCommand cmd;
        string str;
        string connString = "DATA SOURCE=localhost:1521/XE;PASSWORD=STUDENT;PERSIST SECURITY INFO=True;USER ID=STUDENT";

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnAfisare_Click(object sender, EventArgs e)
        {
            try
            {
                conn = new OracleConnection(connString);
                conn.Open();
                string str = "SELECT * FROM salarii";
                da = new OracleDataAdapter(str, conn);
                ds = new DataSet();
                da.Fill(ds, "salarii");

                ReportDocument raport = new ReportDocument();
                string cale = Server.MapPath("Fluturasi2.rpt");
                raport.Load(cale);
                raport.SetDataSource(ds.Tables["salarii"]);
                CrystalReportViewer1.ReportSource = raport;

                //.Enabled = true;
            }
            catch (Exception)
            {

            }
        }
    }
}