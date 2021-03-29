<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/Admin.master" AutoEventWireup="true" CodeFile="ProduktetAdmin.aspx.cs" Inherits="Admin_Produktet" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<br /><br /><br />

<style>
   .col-md-4{
              padding-bottom:20px;
            }

   .grida{
          margin-left: 140px;
          margin-top:50px;
         }
</style>
    


    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
crossorigin="anonymous"/>        <!--Ne menyre qe te perdoren disa klasa-->

    
    <br /> <br />

    

        <div class="grida"><div class='row'>

            <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" DeleteMethod="FshiProdukt" SelectMethod="AfishoProdukte"  >

                 <ItemTemplate> 
                    <div class='col-md-4'>        
                        <b><%#Eval("Emri") %></b><br />
                        <img width="250" height="250" src="img/<%#Eval("Imazh") %>" /><br />
                        <a href="DetajeProdukt.aspx?id=<%#Eval("ID") %>">Shiko me shume...</a><br />
                        <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Fshi" CausesValidation="false"/>
                        <a class="btn" href="ModifikoProdukt.aspx?id=<%#Eval("ID") %>" >Modifiko</a>
                      
                    </div>
                </ItemTemplate>

            </asp:ListView>

           </div>

        </div>

           <br /> <br />
 
</asp:Content>

