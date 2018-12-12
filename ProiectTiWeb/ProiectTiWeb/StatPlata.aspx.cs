using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Data;
using CrystalDecisions.CrystalReports.Engine;
using CrystalDecisions.Shared;

namespace ProiectTiWeb
{
    public partial class StatPlata : System.Web.UI.Page
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

        protected void btnSalvarePdf_Click(object sender, EventArgs e)
        {
            try
            {
                ReportDocument raport = new ReportDocument();
                string cale = Server.MapPath(@"StatDePlata.rpt");
                raport.Load(cale);

                conn = new OracleConnection(connString);
                conn.Open();
                string str = "SELECT * FROM salarii";
                da = new OracleDataAdapter(str, conn);
                ds = new DataSet();
                da.Fill(ds, "salarii");

                raport.SetDataSource(ds.Tables["salarii"]);
                CrystalReportViewer1.ReportSource = raport;

                DiskFileDestinationOptions fisier = new DiskFileDestinationOptions();
                raport.ExportOptions.ExportDestinationType = ExportDestinationType.DiskFile;
                raport.ExportOptions.ExportFormatType = ExportFormatType.PortableDocFormat;
                //string fileName = @"C:\Users\" + Environment.UserName + @"\StatDePlata\" + "StatDePlataAngajati_" + DateTime.Now.ToString("yyyyMMddTHHmmss") + ".pdf";
                string fileName = @"C:\Users\Gabi\Oracle\" + "StatPlata_" + DateTime.Now.ToString("yyyyMMddTHHmmss") + ".pdf";
                fisier.DiskFileName = fileName;
                raport.ExportOptions.ExportDestinationOptions = fisier;
                raport.Export();
                HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Salvare cu succes!')</SCRIPT>");

            }
            catch (Exception exp)
            {
                HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Eroare salvare!')</SCRIPT>");
            }



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
                string cale = Server.MapPath("StatDePlata.rpt");
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