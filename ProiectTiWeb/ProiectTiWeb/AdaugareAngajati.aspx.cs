﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Oracle.ManagedDataAccess.Client;
using System.Data;


namespace ProiectTiWeb
{
    public partial class AdaugareAngajati : System.Web.UI.Page
    {
        OracleConnection conn;
        OracleDataAdapter da;
        
        DataSet ds, dsPass;
        OracleCommand cmd;
        string str;
        string connString = "DATA SOURCE=localhost:1521/XE;PASSWORD=STUDENT;PERSIST SECURITY INFO=True;USER ID=STUDENT";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "alert('your message');");
            }
        }

        protected void btnAdaugaAngajat_Click(object sender, EventArgs e)
        {
            int k = 0;
            if (txtNume.Text.Length < 2 || txtPrenume.Text.Length < 2 || txtFunctie.Text.Length < 2)
            {

                Label2.Text = "Câmpurile 'Nume','Prenume','Funcție' trebuie să conțină minim 2 caractere!";
                k = 1;
            }
            if (txtSalarBaza.Text.Length < 4 || Convert.ToInt32(txtSalarBaza.Text) < 900)
            {
                Label2.Text = "Salariul de baza trebuie sa conțină minim 4 cifre si sa fie mai mare decat 1900 lei";
                k = 1;
            }
            if (txtPremiiBrute.Text.Length < 1 || txtSpor.Text.Length < 1 || txtRetineri.Text.Length < 1)
            {
                Label2.Text = "Câmpurile 'PremiiBrute','Spor','Retineri' trebuie să conțină minim 1 caracter!";
                k = 1;
            }

            try
            {
                int salar_baza, spor, premii, retineri;
                salar_baza = Convert.ToInt32(txtSalarBaza.Text);
                spor = Convert.ToInt32(txtSpor.Text);
                premii = Convert.ToInt32(txtPremiiBrute.Text);
                retineri = Convert.ToInt32(txtRetineri.Text);


                if (salar_baza > 100000)
                {
                    Label2.Text += "Salar Baza < 100000";
                    k = 1;
                }
                if (spor > 100)
                {
                    Label2.Text += "Spor < 100";
                    k = 1;
                }
                if (premii > salar_baza / 2)
                {
                    Label2.Text += "Premii < Salar_Baza/2";
                    k = 1;
                }
                if (retineri > salar_baza / 2)
                {
                    Label2.Text += "Retineri < Salar_Bza/2";
                    k = 1;
                }
            }
            catch (Exception ex)
            {

            }

            if (k == 0)
            {
                try
                {
                    conn = new OracleConnection("DATA SOURCE=localhost:1521/XE;PASSWORD=STUDENT;PERSIST SECURITY INFO=True;USER ID=STUDENT");
                    conn.Open();

                    string sqlString = "INSERT INTO salarii (nume,prenume,functie,salar_baza,spor,premii_brute,retineri) values ('"
                        + txtNume.Text + "','" + txtPrenume.Text + "','" + txtFunctie.Text + "'," + txtSalarBaza.Text + "," + txtSpor.Text + ","
                        + txtPremiiBrute.Text + "," + txtRetineri.Text + ")";
                    cmd = new OracleCommand(sqlString, conn);
                    int i = cmd.ExecuteNonQuery();
                    //Form1_Load(sender, e);
                    //MessageBox.Show("Succes Adaugare", "Succes", MessageBoxButtons.OK, MessageBoxIcon.Information);

                    //adaugareAngajatiToolStripMenuItem_Click(sender, e);
                    Page.ClientScript.RegisterStartupScript(this.GetType(), "scriptkey", "alert('Adaugare cu succes');");
                }
                catch (OracleException ex)
                {
                    //MessageBox.Show("Eroare Adaugare:" + ex.Message, "Eroare", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
                finally
                {
                    if (cn.State == ConnectionState.Open)
                        cn.Close();
                }
            }
        }
    }
}

