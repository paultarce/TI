<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="InformatiiAplicatie.aspx.cs" Inherits="ProiectTiWeb.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
   
    <asp:Panel ID="Panel1" runat="server" Height="150px">.
        <h2><%: Title %>.</h2>
    </asp:Panel>
     <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Pentru adăugarea unuia sau mai multor angajati, se va naviga către meniul &nbsp; INTRODUCERE DATE, apoi se va selecta Adaugare Angajati. În fereastra de adaugare angajati, se vor putea adăuga unul sau mai mulți anjagati
Pentru modificarea datelor angajatilor sau stergerea unuia sau mai multor angajati din baza de date se va proceda la fel ca pasul precent cu deosebirea că se va selecta Actualizare Date.
        </p>

</asp:Content>
