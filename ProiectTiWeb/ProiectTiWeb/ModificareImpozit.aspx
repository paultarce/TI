<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ModificareImpozit.aspx.cs" Inherits="ProiectTiWeb.ModificareImpozit" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="170px"></asp:Panel>
    <h2><%: Title %>MODIFICARE IMPOZIT</h2>

    <br />
    <br />
    <div>
        <table id="Table2" runat="server">

            <tr>
                <th>CAS</th>
                <th>
                    <asp:TextBox ID="txtCAS" runat="server" Style="margin-bottom: 0px"></asp:TextBox>
                </th>
                <th>
                    <asp:RequiredFieldValidator ID="rfv_CAS" runat="server" ControlToValidate="txtCAS" ErrorMessage="CAS Lipsa" ForeColor="green"></asp:RequiredFieldValidator></th>
            </tr>
            <tr><th></th></tr>
            <tr>
                <th>CASS</th>
                <th>
                    <asp:TextBox ID="txtCASS" runat="server" Style="margin-bottom: 0px"></asp:TextBox>
                </th>
                <th>
                    <asp:RequiredFieldValidator ID="rfv_CASS" runat="server" ControlToValidate="txtCASS" ErrorMessage="CASS Lipsa" ForeColor="Green"></asp:RequiredFieldValidator></th>

            </tr>
             <tr><th></th></tr>
            <tr>
                <th>Impozit</th>
                <th>
                    <asp:TextBox ID="txtImpozit" runat="server" Style="margin-bottom: 0px"></asp:TextBox>
                </th>
                <th>
                    <asp:RequiredFieldValidator ID="rfv_Impozit" runat="server" ControlToValidate="txtImpozit" ErrorMessage="Impozit Lipsa" ForeColor="green"></asp:RequiredFieldValidator></th>

            </tr>
             <tr><th></th></tr>
            <tr>
                <th>Parola</th>
                <th>
                    <asp:TextBox ID="txtParola" runat="server" Style="margin-bottom: 0px"
                        TextMode="Password"></asp:TextBox>
                </th>
            </tr>
            </table>
        <br />

        <asp:Button ID="btnModificareProcente" runat="server" Text="Modificare Procente" BackColor="Green" Font-Bold="True" ForeColor="Black" Height="36px" Width="150px" OnClick="btnModificareProcente_Click"  />

        &nbsp;&nbsp;&nbsp;

        <asp:Button ID="btnAnulareEditare" runat="server" Text="Anulare Editare" BackColor="Green" Font-Bold="True" ForeColor="Black" Height="36px" Width="140px" />
    </div>
</asp:Content>
