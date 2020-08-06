<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo05.aspx.cs" Inherits="Demos_Demo5" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Demo #5 - Debugger</title>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #5 - Debugger</h1>
            <br />

            <asp:TextBox ID="txtNumber1" runat="server"></asp:TextBox>
            <asp:Button ID="btnChkPrime1" runat="server" Text="Button" OnClick="btnChkPrime1_Click" />
            <br />

            <asp:TextBox ID="txtNumber2" runat="server"></asp:TextBox>
            <asp:Button ID="btnChkPrime2" runat="server" Text="Button" OnClick="btnChkPrime2_Click" />
            <br /><br />
            <asp:Literal ID="litResults" runat="server"></asp:Literal>
        </div>
    </form>
</body>
</html>
