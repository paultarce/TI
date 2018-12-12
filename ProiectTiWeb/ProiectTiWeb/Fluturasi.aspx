<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Fluturasi.aspx.cs" Inherits="ProiectTiWeb.Fluturasi" %>
<%@ Register assembly="CrystalDecisions.Web, Version=13.0.2000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Panel ID="Panel1" runat="server" Height="150px">
    </asp:Panel>

    <h2><%: Title %>Fluturasi</h2>
<p>
    <asp:Button ID="btnAfisare" runat="server" Text="Afisare Fluturasi" OnClick="btnAfisare_Click" />
    &nbsp;&nbsp;
    <asp:Button ID="btnSalvare" runat="server" Text="Salvare in PDF" />
    </p>
    <p>
    </p>
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" EnableDatabaseLogonPrompt="False" EnableParameterPrompt="False" ToolPanelView="None" />
</asp:Content>
