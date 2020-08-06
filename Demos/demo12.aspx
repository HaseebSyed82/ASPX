<%@ Page Language="C#" AutoEventWireup="true" CodeFile="demo12.aspx.cs" Inherits="Demos_demo12" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Demo - 12 Arrays</title>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo - 12 Arrays</h1>
            <br />

            <asp:DropDownList ID="ddlIndex" runat="server">
                <asp:ListItem Selected="True">0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
            </asp:DropDownList>
            <asp:Button ID="btnRetrive" runat="server" Text="Retrive" OnClick="btnRetrive_Click" />
            <br /><br />

            <asp:Literal ID="LitResults" runat="server"></asp:Literal>

        </div>
    </form>
</body>
</html>
