<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Regjistrohu.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
 <style>
   body {
            margin: 0px;
            padding: 0px;
            background-image: url('img/bcg.jpg ');
            background-size: cover;
            background-position: center;
            font-family: sans-serif;
           
        }

  .Regjistrohu {

    width: 470px;
    height: 750px;
    background-color: #dcac9b;
    color: #fff;
    top: 50%;
    left: 46%;
    position: absolute;
    transform: translate(-50%, -50%);
    box-sizing: border-box;
    padding: 70px 30px;
    margin: 100px;
    border-radius: 20px;
     }

  .icon {
    width: 100px;
    height:100px;
    border-radius: 50%;
    position:absolute;
    top:-50px;
    left: calc(50% - 50px);
    margin-top: 50px;
  }

  h1 {
    margin-top: 50px;
    padding: 0px;
    text-align: center ;
    font-size: 22px;
}

   .Regjistrohu p {
     margin: 0px;
     padding: 0px;
     font-weight: bold;
 }

   #TextBoxName , #TextBoxEmail, #TextBoxPsw, #TextBoxKpsw {
     width: 100%;
     margin-bottom: 20px;
     border:none;
     border-bottom: 1px solid #fff;
     background: transparent;
     outline: none;
     height: 40px;
     color: #fff;
     font-size: 20px;
   }

   #Regjistrohu {
    border: none;
    outline: none;
    height: 40px;
    background: #fff;
    color: #bf7c62;
    font-size: 18px;
    border-radius: 20px;
    width: 400px;
    text-align: center;
    margin-top: 10px;
}
#Regjistrohu:hover{
    cursor: pointer;
    background: white;
    color: #000;

}
   </style>
</head>
<body>
    <form id="form1" runat="server">
       <div class="Regjistrohu">
            <img src="img/register.png" class="icon"/>
            <h1>Regjistrohu Ketu</h1> 
            <p>Username</p>
            <asp:TextBox ID="TextBoxName" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Username eshte i kerkuar!" ControlToValidate="TextBoxName" ForeColor="#96030B"></asp:RequiredFieldValidator>
            <p>E-mail</p>
            <asp:TextBox ID="TextBoxEmail" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Email-i eshte i kerkuar!" ControlToValidate="TextBoxEmail" ForeColor="#96030B"></asp:RequiredFieldValidator><br />
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="*Vendosni nje email te vlefshem!" ControlToValidate="TextBoxEmail" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ForeColor="#96030B"></asp:RegularExpressionValidator>
            <p>Password</p>
            <asp:TextBox ID="TextBoxPsw" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="*Password-i eshte i kerkuar!" ControlToValidate="TextBoxPsw" ForeColor="#96030B"></asp:RequiredFieldValidator>
            <p>Konfirmo Password-in</p>
            <asp:TextBox ID="TextBoxKpsw" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="*Konfirmoni Password-in!" ControlToValidate="TextBoxKpsw" ForeColor="#96030B"></asp:RequiredFieldValidator><br />
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="*Password-et duhet te jene te njejte!" ControlToValidate="TextBoxKpsw" ControlToCompare="TextBoxPsw" ForeColor="#96030B"></asp:CompareValidator>
            <p>Qyteti </p>
                <asp:DropDownList ID="DropDownListQyteti" runat="server">
                <asp:ListItem>Zgjidhni nje qytet</asp:ListItem>
                <asp:ListItem>Tirane</asp:ListItem>
                <asp:ListItem>Berat</asp:ListItem>
                <asp:ListItem>Fier</asp:ListItem>
                <asp:ListItem>Durres</asp:ListItem>
                <asp:ListItem>Tepelene</asp:ListItem>
                <asp:ListItem>Elbasan</asp:ListItem>
                <asp:ListItem>Shkoder</asp:ListItem>
            </asp:DropDownList>  <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="*Zgjidhni nje qytet" ControlToValidate="DropDownListQyteti" ForeColor="#96030B" InitialValue="Zgjidhni nje qytet"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Button ID="Regjistrohu" runat="server" OnClick="Regjistrohu_Click" Text="Regjistrohu" />
            <br />
        </div>
    </form>
</body>
</html>
