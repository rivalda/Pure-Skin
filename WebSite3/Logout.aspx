<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Logout.aspx.cs" Inherits="Users" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/Logout.css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">
        <div class="logout">
        <br />
<asp:Label ID="Label1" runat="server" Text="Pershendetje "></asp:Label>
            <br />
            <br />
      
        <asp:Button ID="B_Logout" runat="server" Text="Logout" OnClick="B_Logout_Click" />
          
        </div>
    </form>
</body>
</html>
