<%@ Page Language="C#" AutoEventWireup="true" Codefile="WebForm4.aspx.cs" Inherits="PROJECT.WebForm4" %>

<%@ Register assembly="CrystalDecisions.Web, Version=13.0.4000.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" namespace="CrystalDecisions.Web" tagprefix="CR" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            REPORT<br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Doner " />
            &nbsp;
            <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="request" />
&nbsp;
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Camp" />
            <br />
            <br />
            <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />
        </div>
    </form>
</body>
</html>
