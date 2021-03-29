<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Produktet.aspx.cs" Inherits="AfishoListView" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Produktet</title>

    <link href="css/produkte.css" rel="stylesheet" />
   

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
crossorigin="anonymous"/>

</head>
<body>
         <header> 
         <div class="logo">
             <img src="img/Logo.png" />
        </div>

        <div class="menu">
           <nav>
            <ul>
                <li><a href="Kryefaqja.aspx">Kryefaqja</a></li>
                <li><a href="RrethNesh.aspx">Rreth Nesh</a></li>
                <li><a href="Produktet.aspx">Produktet</a></li>
                <li><a href="Blog.aspx">Blog</a></li>
                
                   <%if (Session["New"] != null)
                    {
                        %>
                <li><a href="Logout.aspx">Log Out</a></li>
                <%} %>
               <%  else
                   {%>
                     <li><a href="Login.aspx">Log In</a></li>
                <% } %>  
                
            </ul>
          </nav> 
            <script type="text/javascript">

                const currentLocation = location.href;
                const menuItem = document.querySelectorAll('a');
                const menuLength = menuItem.length;
                for (let i = 0; i < menuLength; i++) {
                    if (menuItem[i].href === currentLocation) {
                        menuItem[i].className = "active"
                    }
                }

             </script>
        </div>
    </header>

        <div class="coverprodutcs">
<img src="img/produtcs.gif" width="100%" />
</div>
    <br /> <br />

    <form id="form1" runat="server">

       Zgjidhni kategorine qe deshironi: <asp:DropDownList ID="DropDownList1" runat="server"  AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" >
            
        </asp:DropDownList>

        <div class="grida"><div class='row'>

            <asp:ListView ID="ListView1" runat="server" DataKeyNames="ID" >

                 <ItemTemplate> 
                    <div class='col-md-4'>     
                        <b><%#Eval("Emri") %></b><br />
                        <img width="250" height="250" src="img/<%#Eval("Imazh") %>" /><br />
                        <a href="DetajeProdukt.aspx?id=<%#Eval("ID") %>">Shiko me shume...</a><br />
                       
                    </div>
                </ItemTemplate>

            </asp:ListView>

           </div>

        </div>


    </form>
           <br /> <br />
    <footer style="text-align:center">
        <br />
         &copy; 2021
   <a href="#"> <p>Terms of Service </p> </a>
        <br /> <br />
    </footer>
</body>
</html>
