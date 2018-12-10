<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModificareParola.aspx.cs" Inherits="ProiectTiWeb.ModificareParola" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

     <asp:Panel ID="Panel1" runat="server" Height="170px"></asp:Panel>
    <h2><%: Title %>MODIFICARE PAROLA</h2>

    <div>
    <Table ID="Table1" runat="server">
          <tr>
            <th>Parola veche</th>
            <th> <asp:TextBox ID="txtParolaVeche" runat="server"  TextMode="Password"></asp:TextBox> </th>  
              </tr>
          <tr>
            <th>Parola noua</th>
            <th> <asp:TextBox ID="txtParolaNoua" runat="server"  TextMode="Password"></asp:TextBox> </th>   
          </tr>  
          <tr>
            <th></th>   
          </tr>      
          <tr>
            <th> <asp:Button ID="btnModifica" runat="server" Text="Schimbare Parola" OnClick="btnModifica_Click" /></th> 
          </tr> 
      </Table>
    </div>
</asp:Content>
