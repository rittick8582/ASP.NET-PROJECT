<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm5.aspx.cs" Inherits="WebApplication1.WebForm5" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            background-image:url("Brown-Wallpaper-HD-Background-Texture.jpg");
        }

        #form1 {
            background-color: white;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            max-width: 400px;
            margin: auto;
            background-image:url("images (2).jpeg")
        }

        label {
            display: block;
            margin: 10px 0 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box;
        }

        input[type="button"],
        input[type="submit"] {
            background-color: #28a745;
            color: white;
            border: none;
            padding: 10px 15px;
            border-radius: 4px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        input[type="button"]:hover,
        input[type="submit"]:hover {
            background-color: #218838;
        }

        p {
            margin: 0;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" 
                BorderColor="Maroon" BorderStyle="Dotted" Font-Bold="True"></asp:TextBox>
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" MaxLength="8" BackColor="Transparent" 
                BorderColor="Maroon" BorderStyle="Dotted" Font-Bold="True"></asp:TextBox>
            <asp:Button ID="Button1" runat="server" Text="Search" CssClass="submit-button" 
                onclick="Button1_Click" /><br /><br />
            <asp:Button ID="Button2" runat="server" Text="Update" CssClass="submit-button" 
                onclick="Button2_Click" />
        </div>
    </form>
</body>

</html>