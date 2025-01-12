<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm7.aspx.cs" Inherits="WebApplication1.WebForm7" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Student Update Form</title>
  <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 20px;
            background-image:url("Brown-Wallpaper-HD-Background-Texture.jpg");
        }

        div {
            max-width: 650px;
            margin: auto;
            background: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            background-image:url("images (2).jpeg");
        }

        h2 {
            text-align: center;
            color: #333;
            font-weight: bold;
            font-size:30px;
            text-decoration:underline;
        }

        p {
            margin: 15px 0;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            font-size:40px;
        }

        input[type="text"], input[type="password"] {
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
            box-sizing: border-box; /* Ensures padding is included in the total width */
            }

        input[type="text"]:focus, input[type="password"]:focus {
            border-color: #66afe9;
            outline: none;
            /*box-shadow: 0 0 5px rgba(102, 175, 233, .5);*/
            width: 70%;
        }

        input[type="button"], input[type="submit"], button {
            border-style: none;
            border-color: inherit;
            border-width: medium;
            background-color: #28a745;
            color: white;
            padding: 10px 15px;
            /*border-radius: 4px;*/
            cursor: pointer;
            font-size: 16px;
        }

        input[type="button"]:hover, input[type="submit"]:hover, button:hover {
            background-color: #218838;
        }
        h2:hover
        {
            color:Red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Student Update</h2>
            <asp:Label ID="Label1" runat="server" Text="Student Id" Font-Bold="True" 
                ForeColor="#990000"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" BackColor="Transparent" 
                BorderColor="#990000" Font-Size="Medium" Width="504px" Font-Bold="True" 
                Font-Italic="True"></asp:TextBox>
            <p>
                <asp:Label ID="Label2" runat="server" Text="Full Name" Font-Bold="True" 
                    ForeColor="#990000"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" BackColor="Transparent" 
                    BorderColor="#990000" Font-Size="Medium" Width="504px" Font-Bold="True" 
                    Font-Italic="True"></asp:TextBox>
            </p>
            <p>
                <asp:Label ID="Label3" runat="server" Text="Email" Font-Bold="True" 
                    ForeColor="#990000"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" BackColor="Transparent" 
                    BorderColor="#990000" Font-Size="Medium" Width="531px" Font-Bold="True" 
                    Font-Italic="True"></asp:TextBox>
              <%--      
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox3" Display="Dynamic" 
                    ErrorMessage="Invalid Email Address" ForeColor="Red" 
                   ValidationExpression="^[\w\.-]+@[\w\.-]+\.\w{2,}$"></asp:RegularExpressionValidator>--%>
                    
            </p>
            <p>
                <asp:Label ID="Label4" runat="server" Text="Mobile No" Font-Bold="True" 
                    ForeColor="#990000"></asp:Label>
                <asp:TextBox ID="TextBox4" runat="server" BackColor="Transparent" 
                    BorderColor="#990000" Font-Size="Medium"  Width="504px" MaxLength="10" 
                    Font-Bold="True" Font-Italic="True"></asp:TextBox>
                    
               <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="Must Be 10 Digit" 
                    ForeColor="Red"></asp:RequiredFieldValidator>--%>
            </p>
            <p>
                <asp:Label ID="Label5" runat="server" Text="Username" Font-Bold="True" 
                    ForeColor="#990000"></asp:Label>
                <asp:TextBox ID="TextBox5" runat="server" BackColor="Transparent" 
                    BorderColor="#990000" Font-Size="Medium" Width="504px" Font-Bold="True" 
                    Font-Italic="True"></asp:TextBox>
               <%-- <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>--%>
            </p>
            <p>
                
<asp:Label ID="Label6" runat="server" Text="Password" Font-Bold="True"  
    ForeColor="#990000"></asp:Label>
<asp:TextBox ID="TextBox6" runat="server"  
    BackColor="Transparent" BorderColor="#990000" Font-Size="Medium" 
    Width="505px" MaxLength="8" Font-Bold="True" Font-Italic="True" ></asp:TextBox>
                <%--<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="Required" 
                    ForeColor="Red"></asp:RequiredFieldValidator>--%>
                <br />
            </p>
            <asp:Button ID="Button1" runat="server" Text="Search" 
                 Width="194px" onclick="Button1_Click" />
            <asp:Button ID="Button2" runat="server" Text="Update" 
                 Width="209px" onclick="Button2_Click" />
               <asp:Button ID="btnclose" runat="server" Text="Close" 
                 Width="209px" onclick="Button3_Click" BackColor="Red"  />
            <br/>
        </div>
    </form>
</body>
</html>
