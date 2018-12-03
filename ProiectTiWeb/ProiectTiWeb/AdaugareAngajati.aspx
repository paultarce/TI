<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AdaugareAngajati.aspx.cs" Inherits="ProiectTiWeb.AdaugareAngajati" UnobtrusiveValidationMode="None"%>
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
            <th style="width: 130px"> <asp:TextBox ID="txtNume" runat="server" ></asp:TextBox> </th>  
            <th> <asp:RequiredFieldValidator ID="rfvNume" runat="server" ControlToValidate="txtNume" EnableClientScript="true" ErrorMessage="Introduceti nume" ForeColor="Green"></asp:RequiredFieldValidator></th>        
            <th> <asp:RegularExpressionValidator ID="revNume" runat="server" ControlToValidate="txtNume" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ErrorMessage="Acest camp trebuie sa contina un nume de persoana" ForeColor="Green"></asp:RegularExpressionValidator></th>
        </tr>
         <tr>
             <th></th>
         </tr>
          <tr>
            <th>Prenume</th>
            <th style="width: 130px"> <asp:TextBox ID="txtPrenume" runat="server" style="margin-bottom: 0px"></asp:TextBox> </th>   
            <th> <asp:RequiredFieldValidator ID="rfvPrenume" runat="server" ControlToValidate="txtPrenume" ErrorMessage="Introduceti prenumele" ForeColor="Green"></asp:RequiredFieldValidator></th>
              <th> <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtPrenume" ValidationExpression="^[a-zA-Z''-'\s]{1,40}$" ErrorMessage="Acest camp trebuie sa contina un prenume de persoana" ForeColor="Green"></asp:RegularExpressionValidator></th>                    
          </tr> 
         <tr>
             <th></th>
         </tr> 
         <tr>
            <th>Functie</th>
            <th style="width: 130px"> <asp:TextBox ID="txtFunctie" runat="server" style="margin-bottom: 0px"></asp:TextBox> </th> 
            <th> <asp:RequiredFieldValidator ID="rfvFunctie" runat="server" ControlToValidate="txtFunctie" ErrorMessage="Introduceti functia" ForeColor="Green"></asp:RequiredFieldValidator></th>                            
          </tr> 
         <tr>
             <th></th>
         </tr>   
          <tr>
            <th style="height: 25px">Salar Baza</th>
            <th style="height: 25px; width: 130px;"> <asp:TextBox ID="txtSalarBaza" runat="server" style="margin-bottom: 0px"></asp:TextBox> </th>          
           <th style="height: 25px"> <asp:RequiredFieldValidator ID="rfvSalar" runat="server" ControlToValidate="txtSalarBaza" ErrorMessage="Introduceti salariul de baza" ForeColor="Green"></asp:RequiredFieldValidator></th>        
            <th> <asp:RegularExpressionValidator ID="revSalarBaza" runat="server" ControlToValidate="txtSalarBaza" ValidationExpression="^\d+$" ErrorMessage="Salariul de baza trebuie sa fie numar" ForeColor="Green"></asp:RegularExpressionValidator>
            </th>
            <th style="width: 198px"> <asp:RangeValidator ID="rvSalarBaza" runat="server"  ControlToValidate="txtSalarBaza" ErrorMessage="Valori salar baza : [1500, 1000000]" ForeColor="Green" Type="Integer" MaximumValue="1000000" MinimumValue="1500"></asp:RangeValidator>
            </th>        
         
            
          </tr>
         <tr>
             <th></th>
         </tr>
          <tr>
            <th>Spor</th>
            <th style="width: 130px"> <asp:TextBox ID="txtSpor" runat="server" style="margin-bottom: 0px">0</asp:TextBox> </th>          
            <th> <asp:RegularExpressionValidator ID="revSpor" runat="server" ControlToValidate="txtSpor" ValidationExpression="^\d+$" ErrorMessage="Sporul trebuie sa fie numar" ForeColor="Green"></asp:RegularExpressionValidator>
            </th>
            <th style="width: 198px"> <asp:RangeValidator ID="rvSpor" runat="server"  ControlToValidate="txtSpor" ErrorMessage="Valori spor : [0, 100]" ForeColor="Green" Type="Integer" MaximumValue="100" MinimumValue="0"></asp:RangeValidator>
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
            <th style="width: 130px"> <asp:TextBox ID="txtPremiiBrute" runat="server" style="margin-bottom: 0px">0</asp:TextBox> </th>          
            <th> <asp:RegularExpressionValidator ID="revPremii" runat="server" ControlToValidate="txtPremiiBrute" ValidationExpression="^\d+$" ForeColor="Green" ErrorMessage="Premiul 
                trebuie sa fie numar"></asp:RegularExpressionValidator>
            </th>
               <th style="width: 198px"> <asp:RequiredFieldValidator ID="rfvPremii" runat="server" ControlToValidate="txtPremiiBrute" ErrorMessage="Introduceti premiile" ForeColor="Green"></asp:RequiredFieldValidator></th>        
         
          </tr>
         <tr>
             <th></th>
         </tr>
          <tr>
            <th>Retineri</th>
            <th style="width: 130px"> <asp:TextBox ID="txtRetineri" runat="server" style="margin-bottom: 0px">0</asp:TextBox> </th>          
            <th> <asp:RegularExpressionValidator ID="revRetineri" runat="server" ControlToValidate="txtRetineri" ValidationExpression="^\d+$" ForeColor="Green" ErrorMessage="Retinerea trebuie sa fie numar"></asp:RegularExpressionValidator>
            </th>
              <th style="width: 198px"  > <asp:RequiredFieldValidator ID="rfvReineri"  runat="server" ControlToValidate="txtRetineri" ErrorMessage="Introduceti retinerile" ForeColor="Green"></asp:RequiredFieldValidator></th>        
         
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
     </Table>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="btnAdaugaAngajat" runat="server" Text="Adauga" 
                     BackColor="Green" Font-Bold="True" ForeColor="Black" Height="36px" Width="140px" OnClick="btnAdaugaAngajat_Click" /> 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    <asp:Button ID="btnAnuleazaAdaugare" runat="server" Text="Anuleaza" 
        BackColor="Green" Font-Bold="True" ForeColor="Black" Height="36px" Width="140px" OnClick="btnAnuleazaAdaugare_Click" /> 



</asp:Content>
