<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UpdateSalarii.aspx.cs" Inherits="ProiectTiWeb.UpdateSalarii" UnobtrusiveValidationMode="None" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Panel ID="Panel1" runat="server" Height="150px"></asp:Panel>
    <h2><%: Title %>Actuualizare salariati</h2>

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
            <table id="Table1" runat="server">
                <tr>
                    <th style="height: 62px">Nume</th>
                    <th style="width: 130px; height: 62px;">
                        <asp:TextBox ID="txtNume" runat="server"></asp:TextBox>
                    </th>
                    <th style="height: 62px">
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtNume" ErrorMessage="Introduceti nume" ForeColor="Green"></asp:RequiredFieldValidator></th>
                    <th style="height: 62px">
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtNume" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ErrorMessage="Acest camp trebuie sa contina un nume de persoana" ForeColor="Green"></asp:RegularExpressionValidator></th>
                </tr>
                <tr>
                    <th></th>
                </tr>
                <tr>
                    <th>Prenume</th>
                    <th style="width: 130px">
                        <asp:TextBox ID="txtPrenume" runat="server" Style="margin-bottom: 0px"></asp:TextBox>
                    </th>
                    <th>
                        <asp:RequiredFieldValidator ID="rfvPrenume" runat="server" ControlToValidate="txtPrenume" ErrorMessage="Introduceti prenumele" ForeColor="Green"></asp:RequiredFieldValidator></th>
                    <th>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtPrenume" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ErrorMessage="Acest camp trebuie sa contina un prenume de persoana" ForeColor="Green"></asp:RegularExpressionValidator></th>
                </tr>
                <tr>
                    <th></th>
                </tr>
                <tr>
                    <th>Functie</th>
                    <th style="width: 130px">
                        <asp:TextBox ID="txtFunctie" runat="server" Style="margin-bottom: 0px"></asp:TextBox>
                    </th>
                    <th>
                        <asp:RequiredFieldValidator ID="rfvFunctie" runat="server" ControlToValidate="txtFunctie" ErrorMessage="Introduceti functia" ForeColor="Green"></asp:RequiredFieldValidator></th>
                </tr>
                <tr>
                    <th></th>
                </tr>
                <tr>
                    <th style="height: 25px">Salar Baza</th>
                    <th style="height: 25px; width: 130px;">
                        <asp:TextBox ID="txtSalarBaza" runat="server" Style="margin-bottom: 0px"></asp:TextBox>
                    </th>
                    <th style="height: 25px">
                        <asp:RequiredFieldValidator ID="rfvSalar" runat="server" ControlToValidate="txtSalarBaza" ErrorMessage="Introduceti salariul de baza" ForeColor="Green"></asp:RequiredFieldValidator></th>
                    <th>
                        <asp:RegularExpressionValidator ID="revSalarBaza" runat="server" ControlToValidate="txtSalarBaza" ValidationExpression="^\d+$" ErrorMessage="Salariul de baza trebuie sa fie numar" ForeColor="Green"></asp:RegularExpressionValidator>
                    </th>
                    <th style="width: 198px">
                        <asp:RangeValidator ID="rvSalarBaza" runat="server" ControlToValidate="txtSalarBaza" ErrorMessage="Valori salar baza : [1500, 1000000]" ForeColor="Green" Type="Integer" MaximumValue="1000000" MinimumValue="1500"></asp:RangeValidator>
                    </th>


                </tr>
                <tr>
                    <th></th>
                </tr>
                <tr>
                    <th>Spor</th>
                    <th style="width: 130px">
                        <asp:TextBox ID="txtSpor" runat="server" Style="margin-bottom: 0px">0</asp:TextBox>
                    </th>
                    <th>
                        <asp:RegularExpressionValidator ID="revSpor" runat="server" ControlToValidate="txtSpor" ValidationExpression="^\d+$" ErrorMessage="Sporul trebuie sa fie numar" ForeColor="Green"></asp:RegularExpressionValidator>
                    </th>
                    <th style="width: 198px">
                        <asp:RangeValidator ID="rvSpor" runat="server" ControlToValidate="txtSpor" ErrorMessage="Valori spor : [0, 100]" ForeColor="Green" Type="Integer" MaximumValue="100" MinimumValue="0"></asp:RangeValidator>
                    </th>
                    <th>
                        <asp:RequiredFieldValidator ID="rfvSpor" runat="server" ControlToValidate="txtSpor" ErrorMessage="Introduceti sporul" ForeColor="Green"></asp:RequiredFieldValidator>
                    </th>
                </tr>
                <tr>
                    <th></th>
                </tr>
                <tr>
                    <th>Premii</th>
                    <th style="width: 130px">
                        <asp:TextBox ID="txtPremiiBrute" runat="server" Style="margin-bottom: 0px">0</asp:TextBox>
                    </th>
                    <th>
                        <asp:RegularExpressionValidator ID="revPremii" runat="server" ControlToValidate="txtPremiiBrute" ValidationExpression="^\d+$" ForeColor="Green" ErrorMessage="Premiul 
                trebuie sa fie numar"></asp:RegularExpressionValidator>
                    </th>
                    <th style="width: 198px">
                        <asp:RequiredFieldValidator ID="rfvPremii" runat="server" ControlToValidate="txtPremiiBrute" ErrorMessage="Introduceti premiile" ForeColor="Green"></asp:RequiredFieldValidator></th>

                </tr>
                <tr>
                    <th></th>
                </tr>
                <tr>
                    <th>Retineri</th>
                    <th style="width: 130px">
                        <asp:TextBox ID="txtRetineri" runat="server" Style="margin-bottom: 0px">0</asp:TextBox>
                    </th>
                    <th>
                        <asp:RegularExpressionValidator ID="revRetineri" runat="server" ControlToValidate="txtRetineri" ValidationExpression="^\d+$" ForeColor="Green" ErrorMessage="Retinerea trebuie sa fie numar"></asp:RegularExpressionValidator>
                    </th>
                    <th style="width: 198px">
                        <asp:RequiredFieldValidator ID="rfvReineri" runat="server" ControlToValidate="txtRetineri" ErrorMessage="Introduceti retinerile" ForeColor="Green"></asp:RequiredFieldValidator></th>

                </tr>
                <tr>
                    <th></th>
                </tr>
                <%--  <tr>
            <th>Poza Angajat</th>
            <th> <asp:Image ID="imgAngajat" runat="server" /> </th>          
            <th> 
                <asp:FileUpload id="FileUploadControl" runat="server" />
                <br/>
                <asp:Button runat="server" id="IncarcaPoza" text="Incarca poza" OnClick="IncarcaPoza_Click" />
                <br /><br/>
                <asp:Label runat="server" id="lblImagine"/>
            </th>
          </tr>--%>
                <tr>
                    <th></th>
                    <th style="width: 130px">
                        <br />
                        <br />
                    </th>
                    <th>
                        <asp:Label ID="Label2" runat="server" Text="Label" ForeColor="Red"></asp:Label>
                    </th>

                </tr>
            </table>

            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnUpdateSalarii" runat="server" Text="Update salarii"
        BackColor="Green" Font-Bold="True" ForeColor="Black" Height="36px" Width="140px" OnClick="btnUpdateSalarii_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Button ID="btnStergereAngajat" runat="server" Text="Stergere angajat"
        BackColor="Green" Font-Bold="True" ForeColor="Black" Height="36px" Width="140px" />
        </div>
    </div>
    </div>
</asp:Content>
