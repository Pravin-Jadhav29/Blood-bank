<%@ Page Title="" Language="C#" MasterPageFile="~/masterpage.Master" AutoEventWireup="true" Codefile="masterform.aspx.cs" Inherits="PROJECT.masterform" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style28 {
        width: 100%;
        height: 535px;
    }
    .auto-style29 {
        width: 355px;
        height: 529px;
            margin-left: 0px;
        margin-top: 0px;
    }
    .auto-style30 {
        width: 46px;
        margin-top:0px;
    }
        .auto-style31 {
            height: 535px;
            width: 1251px;
        }
        .auto-style32 {
            margin-left: 146px;
            margin-top: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="auto-style31" style="background-image: url('PICS/counter-bg.png')">
    <table class="auto-style28">
        <tr>
            <td class="auto-style30">
                <img alt="" class="auto-style29" src="icons/msi2.png" /></td>
            <td style="background-image: url('PICS/campaign1.jpeg')">
                &nbsp;<asp:Panel ID="Panel1" runat="server" BackImageUrl="~/PICS/counter-bg.png" CssClass="auto-style32" Height="243px" Width="599px">
                    <asp:Image ID="Image5" runat="server" Height="244px" ImageUrl="~/icons/Screenshot 2024-02-24 221454.png" Width="601px" />
                </asp:Panel>
            </td>
        </tr>
        </table>
    </div>
</asp:Content>
