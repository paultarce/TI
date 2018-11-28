<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InformatiiAplicatie.aspx.cs" Inherits="ProiectTiWeb.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   <br />
    <asp:Panel ID="Panel1" runat="server" Height="150px">
    </asp:Panel>
        <h2><%: Title %>.</h2>
    
     <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               DESCRIERE APLICATIE
            <asp:GridView ID="GridView1" runat="server">
            </asp:GridView>
        </p>

    <div class="dropdown">
                                <button class="dropbtn">Intorducere Date</button>
                                <div class="dropdown-content">
                                    <a href="/UpdateSalarii">Actualizare salarii</a>
                                    <a href="/AdaugareAngajati">Adaugare Angajati</a>
                                </div>
                            </div>

</asp:Content>
