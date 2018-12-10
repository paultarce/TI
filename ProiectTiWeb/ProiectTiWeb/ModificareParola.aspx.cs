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
    public partial class ModificareParola : System.Web.UI.Page
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

        protected void btnModifica_Click(object sender, EventArgs e)
        {
            string password = "";
            try
            {

                conn = new OracleConnection(connString);
                conn.Open();
                string strQuerry = "SELECT * FROM procente";
                var cmd = new OracleCommand(strQuerry, conn);
                var dataReader = cmd.ExecuteReader();
                while (dataReader.Read())
                {
                    password = dataReader.GetString(3);
                }
                if (txtParolaVeche.Text == password)
                {
                    string strQuerry2 = "UPDATE procente SET parola = '" + txtParolaNoua.Text + "'";
                    cmd = new OracleCommand(strQuerry2, conn);
                    cmd.ExecuteNonQuery();
                    HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Parola modificata cu SUCCES!')</SCRIPT>");
                    txtParolaNoua.Text = "";
                }
                else
                {
                    HttpContext.Current.Response.Write("<SCRIPT LANGUAGE='JavaScript'>alert('Parola introdusa este incorecta!')</SCRIPT>");
                    //MessageBox.Show("Parola incorecta");
                    txtParolaNoua.Text = "";
                }
                dataReader.Close();
                conn.Close();

            }
            catch (Exception exe)
            {
            }
        }
    }
}