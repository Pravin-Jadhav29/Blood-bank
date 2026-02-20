<%@ Page Language="C#" AutoEventWireup="true" Codefile="loginpage.aspx.cs" Inherits="PROJECT.loginpage" %>

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
        .auto-style3 {
            width: 300px;
            height: 99px;
        }
        .auto-style4 {
            width: 25px;
            height: 25px;
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
            <asp:Panel ID="Panel1" runat="server" BackColor="#99FFCC" CssClass="auto-style2" Height="409px" Width="341px" HorizontalAlign="Center">
                &nbsp;<img alt="" class="auto-style3" src="PICS/login-btn.gif" />&nbsp;<br /><br />&nbsp;&nbsp;&nbsp;<img alt="" class="auto-style4" src="PICS/icons8-name-25.png" /><asp:Label ID="Label1" runat="server" Text="User Name"></asp:Label>
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
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Label ID="msg" runat="server"></asp:Label>
                &nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button1" runat="server" BackColor="#FFFF99" OnClick="Button1_Click" Text="LOGIN" />
                &nbsp;&nbsp;<br />
                <br />
                &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp; New Registration?
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/newregs.aspx">ClickHere</asp:HyperLink>
                <br />
            </asp:Panel>
        </div>
    </form>
</body>
</html>