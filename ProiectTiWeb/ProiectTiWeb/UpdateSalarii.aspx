<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateSalarii.aspx.cs" Inherits="ProiectTiWeb.UpdateSalarii" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
 <asp:Panel ID="Panel1" runat="server" Height="150px"></asp:Panel>    
    <h2><%: Title %>.</h2>
    <div class="container">
       
        <asp:TextBox ID="txtNumeCautat" runat="server" Width="200" OnTextChanged="txtNumeCautat_TextChanged" 
            ></asp:TextBox>
        &nbsp;
        <asp:Button ID="btnCautare" runat="server" Font-Bold="true"  Text="Cautare angajat" 
             BackColor="Tan" OnClick="btnCautare_Click"/>
        <input id="hiddenControl" type="hidden" runat="server" />
    </div>
</asp:Content>
