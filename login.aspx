<%@ Page Language="C#" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <title>Document</title>
    <link rel="stylesheet" href="css/style_login.css" />
    <link rel="stylesheet" href="css/utils.css" />
    <link rel='stylesheet' href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'/>
    <style>
        body {
            background: url(images/image.jpg);
            background-position: center;
            background-size: cover;
        }
    </style>

    <script>
        var state = false;  
        function toggle() {
            if (state) {
                document.getElementById("Password").setAttribute("type", "Password");
                state = false;
                documnet.getElementById("eye").style.color = 'white';
            }

            else {
                document.getElementById("Password").setAttribute("type", "text");
                state = true;
                documnet.getElementById("eye").style.color = 'wheat';
            }
        }
    </script>
</head>
<body>

    <div class="container">
        <div class="h">
            <h2 class="title">Login Here</h2>
        </div>
        <form runat="server" class="f1">
            <div class="d1">
                Username
                <%--<asp:Label ID="Label1" CssClass="label" runat="server">Username</asp:Label>--%>
                <asp:TextBox ID="User" CssClass="input-h" runat="server"></asp:TextBox>
            </div>
            <div class="d1">
                Password
                <%--<asp:Label ID="Label2" CssClass="label" runat="server" Text="Password"></asp:Label>--%>
                <asp:TextBox ID="Password" CssClass="input-h" runat="server"></asp:TextBox>
            </div>
            <span class="show">
                <i class='fa fa-eye' style='color: #7e22ce' aria-hidden="true" id="eye" onclick="toggle()"></i>
                </span>
            <asp:Button ID="Login_page" OnClick="Login_Page_Click" runat="server" Text="Login" />
        </form><br/>
        <i class="lab la-accessible-icon"></i>
        <h4><a href="#">Forget Username?</a></h4><br/>
        <h4><a href="#">Forget Password?</a></h4>
    </div>
</body>
</html>
