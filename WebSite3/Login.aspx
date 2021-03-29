<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
        <style>
            body {
                margin: 0px;
                padding: 0px;
                background-image: url('img/bcg.jpg ');
                background-size: cover;
                background-position: center;
                font-family: sans-serif;
            }

.Loginbox {
    width: 320px;
    height: 450px;
    background-color: #dcac9b;
    color: #fff;
    top: 50%;
    left: 46%;
    position: absolute;
    transform: translate(-50%, -50%);
    box-sizing: border-box;
    padding: 70px 30px;
    margin: 50px;
    border-radius: 20px;
}
.log {
    width: 100px;
    height:100px;
    border-radius: 50%;
    position:absolute;
    top:-50px;
    left: calc(50% - 50px);
}
h1 {
    margin: 0px;
    padding: 0px;
    text-align: center ;
    font-size: 22px;
}
 .Loginbox p {
     margin: 0px;
     padding: 0px;
     font-weight: bold;
 }
#Username , #Password {
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
#Button1 {
    border: none;
    outline: none;
    height: 40px;
    background: #fff;
    color: #bf7c62;
    font-size: 18px;
    border-radius: 20px;
    width: 250px;
    text-align: center;
    margin-top: 10px;
}
#Button1:hover{
    cursor: pointer;
    background: white;
    color: #000;

}
.Loginbox a {
    text-decoration: none;
    font-size: 15px;
    line-height: 20px;
    color: white;
}
.Loginbox a:hover{
    color: #808080;
}

#Label1 {
    padding:10px;
}

    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="Loginbox">
       
            <img src="img/log.jpg" class="log" />
       
        <h1>Login </h1> 
        <p>Username</p>
    <asp:TextBox ID="Username" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="*Username i kerkuar" ControlToValidate="Username" ForeColor="#96030B"></asp:RequiredFieldValidator> <br />
  <p> Password</p>
    <asp:TextBox ID="Password" runat="server" TextMode="Password" ></asp:TextBox> <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="*Password i kerkuar" ControlToValidate="Password" ForeColor="#96030B"></asp:RequiredFieldValidator> <br />
        <a href="Regjistrohu.aspx">Krijoni nje llogari te re </a>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" /> 
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="#96030B"></asp:Label>
</div>
    </form>
</body>
</html>
