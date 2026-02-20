<%@ Page Language="C#" AutoEventWireup="true" Codefile="requestform2.aspx.cs" Inherits="PROJECT.requestform2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style type="text/css">
        .auto-style1 {
            height: 598px;
            width: 1287px;
            background-size:cover;
            
            
        }
        .auto-style2 {
            margin-left: 288px;
        }
        .auto-style3 {
            width: 100%;
        }
        .auto-style5 {
            width: 2557px;
            height: 31px;
        }
        .auto-style8 {
            height: 31px;
            width: 279px;
        }
        .auto-style9 {
            width: 2557px;
            height: 33px;
        }
        .auto-style10 {
            width: 279px;
            height: 33px;
        }
        .auto-style12 {
            height: 33px;
            width: 2305px;
        }
        .auto-style14 {
            height: 31px;
            width: 2305px;
        }
         .auto-style37 {
             width: 2557px;
         }
         .auto-style38 {
             width: 279px;
         }
         .auto-style39 {
             width: 2305px;
         }
    </style>
</head>
<body>
    <form id="form1" runat="server">
          <div class="auto-style1" style="background-image: url('PICS/homenew.png'); background-repeat: no-repeat;">
            <br />
            <asp:Panel ID="Panel1" runat="server" BackImageUrl="~/PICS/all page background image.png" CssClass="auto-style2" Height="437px" Width="687px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
                <asp:Label ID="Label11" runat="server" BackColor="#FFFF66" Text="REQUEST BLOOD" Font-Bold="True" Font-Size="Large" Font-Underline="True"></asp:Label>
                <br />
                <br />
                <table class="auto-style3">
                    <tr>
                        <td class="auto-style9">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="DropDownList1" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:Label ID="Label1" runat="server" Text="Blood Type-"></asp:Label>
                        </td>
                        <td class="auto-style10">
                            &nbsp;<asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem>A+</asp:ListItem>
                <asp:ListItem>B+</asp:ListItem>
                <asp:ListItem>AB+</asp:ListItem>
                <asp:ListItem>A-</asp:ListItem>
                <asp:ListItem>B-</asp:ListItem>
                <asp:ListItem>AB-</asp:ListItem>
                <asp:ListItem>O+</asp:ListItem>
                <asp:ListItem>O-</asp:ListItem>
            </asp:DropDownList>
                             </td>
                        <td class="auto-style12">
                            &nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList2" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="Label6" runat="server" Text="Required for-"></asp:Label>
                        </td>
                        <td rowspan="4">
                             &nbsp;
                             <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                <asp:ListItem>Surgery</asp:ListItem>
                <asp:ListItem>Medical Procedure</asp:ListItem>
                <asp:ListItem>Accident</asp:ListItem>
                <asp:ListItem>other</asp:ListItem>
            </asp:RadioButtonList>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style37">&nbsp;</td>
                        <td class="auto-style38">&nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style5">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                            <asp:Label ID="Label2" runat="server" Text="Full Name-"></asp:Label>
                        </td>
                        <td class="auto-style8">
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
             </td>
                        <td class="auto-style14"></td>
                    </tr>
                    <tr>
                        <td class="auto-style37">&nbsp;</td>
                        <td class="auto-style38">&nbsp;</td>
                        <td class="auto-style39">&nbsp;</td>
                    </tr>
                    <tr>
                        <td class="auto-style37">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label3" runat="server" Text="Age-"></asp:Label>
                        </td>
                        <td class="auto-style38">            
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
             </td>
                        <td class="auto-style39" rowspan="2">
                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox4" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="Label7" runat="server" Text="Before Date-"></asp:Label>
                        </td>
                        <td rowspan="2">
                             <asp:TextBox ID="TextBox4" runat="server" TextMode="Date"></asp:TextBox>
             </tr>
                    <tr>
                        <td class="auto-style37"></td>
                        <td class="auto-style38">
                            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox2" Display="Dynamic" ErrorMessage="*age&gt;18" Font-Size="Small" ForeColor="Red" MaximumValue="65" MinimumValue="18" SetFocusOnError="True"></asp:RangeValidator>
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style37">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="RadioButtonList1" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="Label4" runat="server" Text="Gender-"></asp:Label>
                        </td>
                        <td class="auto-style38">
                             &nbsp;<asp:RadioButtonList ID="RadioButtonList2" runat="server">
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Female</asp:ListItem>
            </asp:RadioButtonList>
                            </td>
                        <td class="auto-style39">
                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="TextBox5" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="Label8" runat="server" Text="Req.Unit-"></asp:Label>
                            
                        </td>
                        
                        <td>
            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                           </td>
                    </tr>
                    <tr>
                        <td class="auto-style37">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="Label10" runat="server" Text="Contact-"></asp:Label>
                        </td>
                        
                        <td class="auto-style38">
                            &nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            </td>
                        <td class="auto-style39">
                            &nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" Display="Dynamic" ErrorMessage="*" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="Label9" runat="server" Text="Location-"></asp:Label>
                        </td>
                        <td>
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                      </td>
                    </tr>
                    <tr>
                        <td class="auto-style37">
                            <br />
                        </td>
                        <td class="auto-style38">
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="*enter correct number" Font-Size="Small" ForeColor="Red" SetFocusOnError="True" ValidationExpression="(0|01)?[6-9][0-9]{9}"></asp:RegularExpressionValidator>
                        </td>
                        <td class="auto-style39">&nbsp;</td>
                        <td>&nbsp;</td>
                    </tr>
                </table>
                <table class="auto-style3">
                    <tr>
                        <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Label ID="lblmsg" runat="server"></asp:Label>
                            <br />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <asp:Button ID="Button1" runat="server" BackColor="#FFFF66" OnClick="Button1_Click" Text="Request" />
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </td>
                    </tr>
                </table>
                <br />
            </asp:Panel>
        </div>
        
    </form>
</body>
</html>
