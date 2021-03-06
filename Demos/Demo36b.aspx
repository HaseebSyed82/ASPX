﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo36b.aspx.cs" Inherits="Demos_Demo36b" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Demo #36 - Setup Cookies</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #36 - Setup Cookies</h1>
            <br /><br />
            Your Zip Code:
            <asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox>
            <br /><br />

            Your Favorite Color:
            <asp:DropDownList ID="ddlColor" runat="server">
                <asp:ListItem Selected="True">Blue</asp:ListItem>
                <asp:ListItem>Black</asp:ListItem>
                <asp:ListItem>Green</asp:ListItem>
                <asp:ListItem>Red</asp:ListItem>
                <asp:ListItem>Yellow</asp:ListItem>
            </asp:DropDownList>
            <br /><br />

            <asp:Button ID="btnSaveCookies" runat="server" Text="Save Cookies" OnClick="btnSaveCookies_Click" />
            <br /><br />

            <a href="Demo36.aspx">Cookie Menu</a>

        </div>
    </form>
</body>
</html>
