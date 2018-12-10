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

    public partial class ModificareImpozit : System.Web.UI.Page
    {
        OracleConnection conn;
        OracleDataAdapter da;

        DataSet ds, dsPass;
        OracleCommand cmd;
        string str;
        string connString = "DATA SOURCE=localhost:1521/XE;PASSWORD=STUDENT;PERSIST SECURITY INFO=True;USER ID=STUDENT";

        protected void btnModificareProcente_Click(object sender, EventArgs e)
        {
            float cas = 0;
            float cass = 0;
            float impozit = 0;
            string pass = "";
            try
            {
                conn = new OracleConnection(connString);
                conn.Open();
                string strSQL = "SELECT * FROM procente";
                OracleCommand cmd = new OracleCommand(strSQL, conn);
                var dataReader = cmd.ExecuteReader();
                while (dataReader.Read())
                {
                    cas = dataReader.GetFloat(0);
                    cass = dataReader.GetFloat(1);
                    impozit = dataReader.GetFloat(2);
                    pass = dataReader.GetString(3);
                }
                if (txtParola.Text == pass)
                {
                    string strSQL1 = "UPDATE Procente SET CAS =" + Convert.ToDouble(txtCAS.Text) + ", CASS = " + Convert.ToDouble(txtCASS.Text) + ", impozit = " + Convert.ToDouble(txtImpozit.Text);
                    OracleCommand comm = new OracleCommand(strSQL1, conn);
                    comm.ExecuteNonQuery();
                    HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Procente modificate')</SCRIPT>");

                    txtParola.Text = "";
                }
                else
                {
                    HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Parola incorecta!')</SCRIPT>");

                    txtCAS.Text = cas.ToString();
                    txtCASS.Text = cass.ToString();
                    txtImpozit.Text = impozit.ToString();
                    txtParola.Text = "";
                }
                dataReader.Close();
                conn.Close();

            }
            catch (Exception exe)
            {
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                conn = new OracleConnection(connString);
                conn.Open();
                OracleCommand comm = new OracleCommand("SELECT * FROM procente", conn);
                OracleDataReader reader = comm.ExecuteReader();
                if (reader.HasRows)
                {
                    if (reader.Read())
                    {
                        txtCAS.Text = reader["CAS"].ToString();
                        txtCASS.Text = reader["CASS"].ToString();
                        txtImpozit.Text = reader["impozit"].ToString();
                    }
                }

                conn.Close();
            }
            catch
            {
                HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Eroare la modificare impozit')</SCRIPT>");
            }
        }

       
        
    }
}