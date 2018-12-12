<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StatPlata.aspx.cs" Inherits="ProiectTiWeb.StatPlata" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Panel ID="Panel1" runat="server" Height="150px">
    </asp:Panel>

    <h2><%: Title %>Stat de plata</h2>
<p></p>


    <asp:Button ID="btnAfisare" runat="server" Text="Afisare Stat Plata" OnClick="btnAfisare_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnSalvarePdf" runat="server" Text="Salvare in PDF" OnClick="btnSalvarePdf_Click" />


    <br />


<CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" EnableDatabaseLogonPrompt="False" EnableParameterPrompt="False" ReuseParameterValuesOnRefresh="True" ToolPanelView="None" />


    <br />
    

</asp:Content>
