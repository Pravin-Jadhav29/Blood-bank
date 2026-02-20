<%@ Page Language="C#" AutoEventWireup="true" Codefile="Adminlogin1.aspx.cs" Inherits="PROJECT.Adminlogin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 879px;
            width: 1247px;
            
        }
        .auto-style2 {
            margin-left: 441px;
            margin-top: 0px;
        }
        .auto-style4 {
            width: 25px;
            height: 25px;
        }
        .auto-style5 {
            width: 136px;
            height: 112px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="auto-style1" style="background-image: url('PICS/login.jpj.jpg'); background-repeat: no-repeat;">
            <br />
            <br />
            <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" BackColor="#99FFCC" CssClass="auto-style2" Height="399px" Width="341px" HorizontalAlign="Center">
                &nbsp;<img alt="" class="auto-style5" src="PICS/admin-login-icon-15.jpg" />&nbsp;<br /><br />&nbsp;&nbsp;&nbsp;<img alt="" class="auto-style4" src="PICS/icons8-name-25.png" /><asp:Label ID="Label1" runat="server" Text="Admin Name"></asp:Label>
                <br />
                &nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
                <br />
                <img alt="" class="auto-style4" src="PICS/passwrod1.png" />
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <br />
                &nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
                <br />
                <asp:Label ID="msg" runat="server"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="#FFFF99" OnClick="Button1_Click" Text="LOGIN" />
                <br />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
