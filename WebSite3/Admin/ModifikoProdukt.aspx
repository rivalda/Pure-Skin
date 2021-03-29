<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ModifikoProdukt.aspx.cs" Inherits="ModifikoProdukt" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
       .modifiko {
           font-size: large;
           table-layout:fixed;
       }
       table{
           
           margin-left: 400px;
       }
       table td {
           padding: 7px;
       }

    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <br /> <br /> <br /> <br /> <br />
            <div class="modifiko">
            <table>
                <tr>
                    <td>  Emri: </td> 
                    <td><asp:TextBox ID="Emri" runat="server"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="ValidateEmri" runat="server" ErrorMessage="* Fusha e emrit eshte e detyrueshme!" ForeColor="Red" ControlToValidate="Emri"></asp:RequiredFieldValidator>  
                   </td> 
                </tr> 

                <tr> <td>Pershkrimi: </td>
                    <td><asp:TextBox ID="Pershkrimi" runat="server" TextMode="MultiLine"></asp:TextBox></td>
                    <td class="auto-style1"> <asp:RequiredFieldValidator ID="ValidatePershkrimi" runat="server" ErrorMessage="* Fusha e pershkrimit eshte e detyrueshme!" ForeColor="Red" ControlToValidate="Pershkrimi"></asp:RequiredFieldValidator></td>
                </tr> 

             <tr><td> Imazh:</td>
                 <td><asp:FileUpload ID="FileUpload1" runat="server" /></td>
                 <td> <asp:RequiredFieldValidator ID="ValidateImazh" runat="server"  ErrorMessage="* Fusha e imazhit eshte e detyrueshme!" ForeColor="Red" ControlToValidate="FileUpload1"></asp:RequiredFieldValidator>
                   </td>  
             </tr> 

            <tr>  
                <td>Kategoria:</td> 
                <td><asp:DropDownList ID="Kategori" runat="server" DataSourceID="SqlDataSource2"  DataTextField="EmriKategorise" style="margin-left: 22px" DataValueField="ID">                  
                      </asp:DropDownList></td>
                <td> <asp:RequiredFieldValidator ID="ValidateKategori" runat="server"  ErrorMessage="* Kategoria duhet te zgjidhet!" ForeColor="Red" ControlToValidate="Kategori"></asp:RequiredFieldValidator>
                  </td>
            </tr> 

         <tr>
             <td></td>

          <td> <asp:Button ID="Button1" runat="server" Text="Modifiko" style="margin-left: 8px" OnClick="Button1_Click"/><br />
          </td>
         </tr> 
</table>
              <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ProjektDBConnectionString %>" 
                SelectCommand="SELECT [ID], [EmriKategorise] FROM [Kategori]"></asp:SqlDataSource><br />
            <asp:HiddenField ID="HiddenField1" runat="server" /><br /> <!--Per te trajtuar ne anen e serverit Id-te specifike.
                Ne momentin qe shtypim Modifiko ndodh nje PostBack, dhe ne postimin qe realizohet zhduket pjesa e Id.-->
          
        </div>
</asp:Content>

