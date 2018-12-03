using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Data;

namespace ProiectTiWeb
{
    public partial class UpdateSalarii : System.Web.UI.Page
    {

        OracleConnection conn;
        OracleDataAdapter da;
        DataSet ds;
        string str;
        string connString = "DATA SOURCE=localhost:1521/XE;PASSWORD=STUDENT;PERSIST SECURITY INFO=True;USER ID=STUDENT";


        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                try
                {
                    conn = new OracleConnection(connString);
                    conn.Open();
                    string str = "SELECT * FROM salarii";

                    da = new OracleDataAdapter(str, conn);
                    ds = new DataSet();
                    da.Fill(ds, "salarii");
                    // ** Afişează datele                  
                    GridView1.DataSource = ds.Tables["salarii"].DefaultView;
                    GridView1.DataBind();
                    conn.Close();
                }
                catch
                {
                }
            }
    }

        protected void txtNumeCautat_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnCautare_Click(object sender, EventArgs e)
        {

        }
    }