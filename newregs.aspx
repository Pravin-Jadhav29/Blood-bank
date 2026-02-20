<%@ Page Language="C#" AutoEventWireup="true" Codefile="newregs.aspx.cs" Inherits="PROJECT.newregs" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .auto-style1 {
            height: 598px;
            width: 1286px;
            background-size:cover;
        }
        .auto-style2 {
            margin-left: 464px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style8 {
            width: 166px;
        }
         .auto-style9 {
             width: 166px;
             height: 9px;
         }
         .auto-style10 {
             height: 9px;
         }
         .auto-style11 {
             width: 100%;
             height: 5px;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <div class="auto-style1" style="background-image: url('PICS/homenew.png'); background-repeat: no-repeat">
            <br />
             <br />
            <br />
            <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/PICS/all page background image.png" CssClass="auto-style2" Height="319px" Width="350px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label6" runat="server" BackColor="#FFFF66" Font-Bold="True" Font-Underline="True" Text="New Registration"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style8">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
                        </td>
                        <td>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*enter full name" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label2" runat="server" Text="Contact"></asp:Label>
                        </td>
                        <td>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
             </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">&nbsp;</td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*enter correct number" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ValidationExpression="(0|01)?[6-9][0-9]{9}"></asp:RegularExpressionValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label4" runat="server" Text="D-O-B"></asp:Label>
                            
                        </td>
                        <td>
            <asp:TextBox ID="TextBox3" runat="server" TextMode="Date"></asp:TextBox>
              </td>
                    </tr>
                    <tr>
                        <td class="auto-style9"></td>
                        <td class="auto-style10">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*enter DOB" Font-Size="Small" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label ID="Label3" runat="server" Text="Password"></asp:Label>
                        </td>
                        <td>
            <asp:TextBox ID="TextBox4" runat="server" TextMode="Password"></asp:TextBox>
             </td>
                    </tr>
                    <tr>
                        <td class="auto-style8">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                        <td>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="*password must have 1upper &amp; lower case letter,1symbol,digits&amp;upto 8 character" Font-Size="6pt" ForeColor="Red" Display="Dynamic" SetFocusOnError="True" ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,15}$"></asp:RegularExpressionValidator>
                        </td>

                    </tr>
                </table>
                <table class="auto-style11">
                    <tr>
                        <td>
                            &nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
            <asp:Label ID="msg" runat="server"></asp:Label>
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" BackColor="#FFFF99" />
        </td>
                    </tr>
                </table>
                <br />
            </asp:Panel>
        </div>
    </form>
</bodystyle>
</html>
