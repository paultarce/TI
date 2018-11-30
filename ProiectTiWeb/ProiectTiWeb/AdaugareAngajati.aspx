<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdaugareAngajati.aspx.cs" Inherits="ProiectTiWeb.AdaugareAngajati" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <asp:Panel ID="Panel1" runat="server" Height="150px">
    </asp:Panel>

    <p>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               DESCRIERE APLICATIE
            
        </p>

     <Table ID="Table1" runat="server">
        <tr>
            <th>Nume</th>
            <th> <asp:TextBox ID="txtNume" runat="server" style="margin-bottom: 0px"></asp:TextBox> </th>  
            <th> <asp:RequiredFieldValidator ID="rfv_nume" runat="server" ControlToValidate="txtNume" ErrorMessage="Nu ati introdus numele" ForeColor="Red"></asp:RequiredFieldValidator></th>        
          </tr>
          <tr>
            <th>Prenume</th>
            <th> <asp:TextBox ID="txtPrenume" runat="server" style="margin-bottom: 0px"></asp:TextBox> </th>   
            <th> <asp:RequiredFieldValidator ID="rfv_Prenume" runat="server" ControlToValidate="txtPrenume" ErrorMessage="Nu ati introdus prenumele" ForeColor="Red"></asp:RequiredFieldValidator></th>                    
          </tr>  
         <tr>
            <th>Functie</th>
            <th> <asp:TextBox ID="txtFunctie" runat="server" style="margin-bottom: 0px"></asp:TextBox> </th> 
            <th> <asp:RequiredFieldValidator ID="rfv_functie" runat="server" ControlToValidate="txtFunctie" ErrorMessage="Nu ati introdus functia" ForeColor="Red"></asp:RequiredFieldValidator></th>                            
          </tr>    
          <tr>
            <th>Salar Baza</th>
            <th> <asp:TextBox ID="txtSalarBaza" runat="server" style="margin-bottom: 0px"></asp:TextBox> </th>          
           <th> <asp:RequiredFieldValidator ID="rfv_salar" runat="server" ControlToValidate="txtSalarBaza" ErrorMessage="Nu ati introdus salariul" ForeColor="Red"></asp:RequiredFieldValidator></th>        
            
          </tr>
          <tr>
            <th>Spor ( in % )</th>
            <th> <asp:TextBox ID="txtSpor" runat="server" style="margin-bottom: 0px">0</asp:TextBox> </th>          
            <th> <asp:RegularExpressionValidator ID="rev_spor" runat="server" ControlToValidate="txtSpor" ValidationExpression="^\d+$" ErrorMessage="Sporul nu este un numar" ForeColor="Red"></asp:RegularExpressionValidator>
            </th>
            <th> <asp:RangeValidator ID="rv_spor" runat="server" ControlToValidate="txtSpor" ErrorMessage="Sporul nu este intre 0 si 100" ForeColor="Red" Type="Integer" MaximumValue="100" MinimumValue="0"></asp:RangeValidator>
            </th>        
            <th> 
            <asp:RequiredFieldValidator ID="rfv_spor" runat="server" ControlToValidate="txtSpor" ErrorMessage="Nu ati introdus sporul" ForeColor="Red"></asp:RequiredFieldValidator>
            </th>                      
          </tr>
          <tr>
            <th>Premii</th>
            <th> <asp:TextBox ID="txtPremii" runat="server" style="margin-bottom: 0px">0</asp:TextBox> </th>          
            <th> <asp:RegularExpressionValidator ID="rev_premii" runat="server" ControlToValidate="txtPremii" ValidationExpression="^\d+$" ForeColor="Red" ErrorMessage="Premiul nu este un numar"></asp:RegularExpressionValidator>
            </th>
               <th> <asp:RequiredFieldValidator ID="rfv_premii" runat="server" ControlToValidate="txtPremii" ErrorMessage="Nu ati introdus premiile" ForeColor="Red"></asp:RequiredFieldValidator></th>        
         
          </tr>
          <tr>
            <th>Retineri</th>
            <th> <asp:TextBox ID="txtRetineri" runat="server" style="margin-bottom: 0px">0</asp:TextBox> </th>          
            <th> <asp:RegularExpressionValidator ID="rev_retineri" runat="server" ControlToValidate="txtRetineri" ValidationExpression="^\d+$" ForeColor="Red" ErrorMessage="Retinerea nu este un numar"></asp:RegularExpressionValidator>
            </th>
              <th> <asp:RequiredFieldValidator ID="rfv_reineri" runat="server" ControlToValidate="txtRetineri" ErrorMessage="Nu ati introdus retinerile" ForeColor="Red"></asp:RequiredFieldValidator></th>        
         
          </tr>
          <tr>
            <th>Poza Angajat</th>
            <th> <asp:Image ID="imgAngajat" runat="server" /> </th>          
            <th> 
                <asp:FileUpload id="FileUploadControl" runat="server" />
                <br/>
                <asp:Button runat="server" id="IncarcaPoza" text="Incarca poza" OnClick="IncarcaPoza_Click" />
                <br /><br/>
                <asp:Label runat="server" id="lblImagine"/>
            </th>
          </tr>
             <tr>
            <th></th>   
                 <th></th>   
            <th>
                <asp:Button ID="AdaugaAngajat" runat="server" Text="Adauga" 
                    OnClick="AdaugaAngajat_Click" BackColor="#CC0000" BorderColor="#CC0000" Font-Bold="True" ForeColor="White" /> 
                <asp:Button ID="AnuleazaAdaugare" runat="server" Text="Anuleaza" 
                    OnClick="AnuleazaAdaugare_Click" BackColor="#CC0000" BorderColor="#CC0000" Font-Bold="True" ForeColor="White" /> </th>
          </tr>
     </Table>



</asp:Content>
