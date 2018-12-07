<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="StergereAngajat.aspx.cs" Inherits="ProiectTiWeb.StergereAngajat" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <asp:Panel ID="Panel1" runat="server" Height="150px"></asp:Panel>
    <h2><%: Title %>Stergere salariati</h2>

    <div class="container">
        <asp:TextBox ID="txtNumeCautat" runat="server" Width="200" OnTextChanged="txtNumeCautat_TextChanged"></asp:TextBox>
        &nbsp;
        <asp:Button ID="btnCautare" runat="server" Font-Bold="true" Text="Cautare angajat"
            BackColor="Tan" OnClick="btnCautare_Click1" />
        &nbsp;
        <asp:RegularExpressionValidator ID="revNume" runat="server" ControlToValidate="txtNumeCautat" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ErrorMessage="Acest camp trebuie sa contina un nume de persoana" ForeColor="Green" Font-Bold="true"></asp:RegularExpressionValidator>
        <input id="hiddenControl" type="hidden" runat="server" />
        &nbsp;
        <asp:RequiredFieldValidator ID="rfvNume" runat="server" ControlToValidate="txtNumeCautat" ErrorMessage="Introduceti nume" ForeColor="Green" Font-Bold="true"></asp:RequiredFieldValidator><br />
        &nbsp;&nbsp;&nbsp;

        <div>
            <br />
            <asp:GridView ID="GridView1" runat="server"
                OnSelectedIndexChanged="GridView1_SelectedIndexChanged1">
                <Columns>
                    <asp:CommandField ButtonType="Button" HeaderText="Selectare" ShowHeader="True" ShowSelectButton="True" />
                </Columns>
            </asp:GridView>
            <div class="container">
              
            </div>

             &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    
    <asp:Button ID="btnStergereAngajat" runat="server" Text="Stergere angajat"
        BackColor="Green" Font-Bold="True" ForeColor="Black" Height="36px" Width="140px" OnClick="btnStergereAngajat_Click1" />

        </div>
    </div>
</asp:Content>
