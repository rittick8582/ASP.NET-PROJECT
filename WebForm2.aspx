<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication1.WebForm2" %>

<!DOCTYPE html>
<html lang="en">
<head id="Head1" runat="server">
    <meta charset="utf-8" />
    <title>Login Page</title>
    <link rel="stylesheet" type="text/css" href="Styles/Login.css" />
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            background-image:url("Brown-Wallpaper-HD-Background-Texture.jpg");
        }

        .container {
            background-color: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            background-image:url("images (2).jpeg")
        }

        h2 {
            text-align: center;
        }

        .input-field{
            width: 94%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
          .dropdown-field {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .btn {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }

        .btn:hover {
            background-color: #45a049;
        }

        .message {
            text-align: center;
            color: red;
            margin-top: 10px;
        }

        label {
            font-weight: bold;
            margin-top: 10px;
        }
        input::-webkit-input-placeholder
        {
            color:Black;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h2>Login</h2>
            <label for="Dropdownlist1"></label><br />
            <asp:DropDownList ID="Dropdownlist1" runat="server" CssClass="dropdown-field" 
                BackColor="Transparent">
                  <asp:ListItem>Please Choose user type </asp:ListItem>
                <asp:ListItem>Student</asp:ListItem>
                <asp:ListItem>Admin</asp:ListItem>
            </asp:DropDownList>
            <label for="txtPassword"></label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="input-field" 
                BackColor="Transparent" BorderColor="Maroon" BorderStyle="Double" 
                Font-Bold="True" placeholder=" Enter UserID"></asp:TextBox><br />
            <label for="txtPassword"></label>
            <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" 
                CssClass="input-field" BackColor="Transparent" BorderColor="Maroon" 
                BorderStyle="Double" Font-Bold="True" MaxLength="8" placeholder=" Enter Password"></asp:TextBox><br />

            <asp:Button ID="btnLogin" runat="server" Text="Student Login" CssClass="btn" 
                onclick="btnLogin_Click" /><br /><br />
           <asp:Button ID="Button1" runat="server" Text="Admin Login" CssClass="btn" 
                onclick="Button1_Click" />
            <a href="WebForm3.aspx">Sign Up(New User)</a><br />
            <a href="WebForm5.aspx">Forget Password</a><br />
        </div>
    </form>
</body>
</html>