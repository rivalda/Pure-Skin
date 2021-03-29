<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DetajeProdukt.aspx.cs" Inherits="DetajeProdukt" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Detaje Produkti</title>

    <style type="text/css">

* {
    margin: 0;
    padding: 0;
    font-family: Garamond;

}

.logo img{
    float: left;
    width: 100px;
    height: auto;
    margin-top: 3px;
}

.menu{
    max-width: 1350px;
    margin: auto;
}

header {
    margin-top: 2px;
    background-repeat: repeat-y;
    background-size: cover;
    background-position: center;
}

ul{
    float: right;
    list-style-type: none;
    margin-top: 25px;
}

ul li{
    display: inline-block;
}

ul li a{
    font-size: 20px;
    text-decoration: none;
    color: #000000;
    padding: 5px 20px;
    border: 7px solid transparent;
    transition: 0.07s ease;
}

ul li a:hover{
    background-color: antiquewhite;
    color: #000000;
    text-decoration: none;
}

ul li a.active{
    background-color: antiquewhite;
    color: #000000;
}

#Button1 {
    border: 3px solid #bf7c62 ;
    outline: none;
    height: 50px;
    background: #fff;
    color: #bf7c62 ;
    font-size: 30px;
    border-radius: 20px;
    width: 150px;
    text-align: center;
}
#Button1:hover{
     cursor: pointer;
        background: white;
        color: #000;
}

    </style>

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

        <br /><br /><br /><br /><br /><br />

    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            <asp:Image ID="Image1" runat="server" />

            <asp:Button ID="Button1" runat="server" Text="Porosit" OnClick="Button1_Click" />
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
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
