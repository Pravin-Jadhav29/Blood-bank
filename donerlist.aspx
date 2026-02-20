<%@ Page Language="C#" AutoEventWireup="true" Codefile="donerlist.aspx.cs" Inherits="PROJECT.donerlist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 538px;
            width: 1285px;
        }
        .auto-style2 {
            margin-left: 98px;
        }
        .auto-style3 {
            height: 55px;
            box-shadow:inherit;
        }
        .auto-style4 {
            width: 100%;
            height: 65px;
        }
        .auto-style5 {
            width: 302px;
        }
        .auto-style6 {
            width: 354px;
        }
        .auto-style7 {
            width: 238px;
        }
    </style>
</head>
<body style="height: 594px; width: 1280px">
    <form id="form1" runat="server">
        <div class="auto-style3" style="background-image: url('PICS/counter-bg.png')">
                <table class="auto-style4">
                    <tr>
                        <td class="auto-style7" style="border-style: inset">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <asp:Button ID="Button2" runat="server" Text="BACK" PostBackUrl="~/adminhome.aspx" BackColor="#FFFF99" />
                        </td>
                        <td class="auto-style5" style="border-style: inset">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Donar list" BackColor="#FFFF99" />
                        </td>
                        <td class="auto-style6" style="border-style: inset">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button4" runat="server" BackColor="#FFFF99" OnClick="Button4_Click" Text="Camp request" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                        </td>
                        <td style="border-style: inset">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Blood REQ." BackColor="#FFFF99" />
                        </td>
                    </tr>
                </table>
            </div>
        <div class="auto-style1" style="background-color: #FFFFFF; background-image: url('PICS/all page background image.png');">
                <br />
            <asp:GridView ID="GridView1" runat="server" CssClass="auto-style2" Height="122px" Width="1103px">
                <PagerStyle BackColor="White" />
            </asp:GridView>
            
        </div>
    </form>
</body>
</html>
