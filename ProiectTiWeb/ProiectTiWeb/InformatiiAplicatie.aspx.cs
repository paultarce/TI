using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using Oracle.Web;
using System.Data;

namespace ProiectTiWeb
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        OracleConnection conn;
        OracleCommand cmd;
        OracleDataAdapter da;
        DataSet ds;
        string str;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                conn = new OracleConnection("DATA SOURCE=localhost:1521/XE;PASSWORD=STUDENT;PERSIST SECURITY INFO=True;USER ID=STUDENT");
                conn.Open();
                str = "SELECT * FROM salarii";
                da = new OracleDataAdapter(str, conn);
                ds = new DataSet();
                ds.Tables.Add("salarii");
                da.Fill(ds, "salarii");
                // ** Afişează datele
                GridView1.DataSource = ds.Tables["salarii"].DefaultView;
                GridView1.DataBind();
                conn.Close();
            }
            catch (Exception ex)
            {
               // Label1.Text = "error";
            }
        }
    }
}