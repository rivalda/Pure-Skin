<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ShtoKategori.aspx.cs" Inherits="Admin_ShtoKategori" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style2 {
            margin-left: 0;
        }
        .auto-style3 {
            width: 177px;
            text-align: left;
        }
        .auto-style4 {
            width: 177px;
        }
        .auto-style5 {
            font-size: large;
            width: 850px;
            height: 216px;
            margin-left: 480px;
           
        }
        .auto-style6 {
            width: 177px;
            text-align: left;
            height: 79px;
        }
        .auto-style7 {
            height: 79px;
        }
        .auto-style8 {
            height: 79px;
            width: 178px;
        }
        .auto-style9 {
          width: 178px;
      
        }


        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
         <br /><br /><br /><br /><br /><br />

<table class="auto-style5" >
           <tr><td class="auto-style6">Emri i Kategorise:</td> <td class="auto-style8"> <asp:TextBox ID="Emri" runat="server" CssClass="auto-style2" Width="155px"></asp:TextBox></td>
        <td class="auto-style7"> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="* Fusha e emrit eshte e detyrueshme!" ForeColor="Red" ControlToValidate="Emri"></asp:RequiredFieldValidator></td> 
      </tr> 

           <tr>
               <td class="auto-style3" colspan="1">Pershkrimi: </td><td class="auto-style9"><asp:TextBox ID="Pershkrimi" runat="server" TextMode="MultiLine" Height="30px" Width="155px"></asp:TextBox></td>
           <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="* Fusha e pershkrimit eshte e detyrueshme!" ForeColor="Red" ControlToValidate="Pershkrimi"></asp:RequiredFieldValidator></td> 
            </tr> 
           <tr>
               <td class="auto-style4"> </td>

               <td class="auto-style9">
               <asp:Button ID="Button1" runat="server" Text="Shto Kategori" OnClick="Button1_Click"/></td>
               <td>    <asp:Label ID="Label2" runat="server" Text=""></asp:Label></td>
           </tr> 
 
</table>
  
    <br /> <br /> <br />
</asp:Content>

