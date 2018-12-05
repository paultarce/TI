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
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "Actualizare salariati");
                }
                catch
                {
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "Eroare Actualizare salariati");
                }
            }
        }


        protected void txtNumeCautat_TextChanged(object sender, EventArgs e)
        {
           /* char[] sep = { ' ', ',' };
            string[] split = txtNumeCautat.Text.Split(sep);
            if (split.Length > 1)
            {
                conn = new OracleConnection(connString);
                conn.Open();
                string str = "SELECT * FROM salarii";

                da = new OracleDataAdapter(str, conn);
                ds = new DataSet();
                da.Fill(ds, "salarii");

                ds.Tables["salarii"].DefaultView.RowFilter = "Nume LIKE '*" + split[0] + "*' OR Prenume LIKE '*" + split[1] + "*'";

                // ** Afişează datele                  
                GridView1.DataSource = ds.Tables["salarii"].DefaultView;
                GridView1.DataBind();
                conn.Close();
            }*/
        }

        protected void btnCautare_Click(object sender, EventArgs e)
        {
           
        }
        protected void btnUpdateSalarii_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            var a = 2;
        }

        protected void btnCautare_Click1(object sender, EventArgs e)
        {
            char[] sep = { ' ', ',' };
            string[] split = txtNumeCautat.Text.Split(sep);
            if (split.Length >= 1)
            {
                conn = new OracleConnection(connString);
                conn.Open();
                string str = "SELECT * FROM salarii";

                da = new OracleDataAdapter(str, conn);
                ds = new DataSet();
                da.Fill(ds, "salarii");

                ds.Tables["salarii"].DefaultView.RowFilter = "nume LIKE '*" + split[0] + "*' OR prenume LIKE '*" + split[1] + "*'";

                // ** Afişează datele                  
                GridView1.DataSource = ds.Tables["salarii"].DefaultView;
                GridView1.DataBind();
                conn.Close();
            }
        }
    }
}