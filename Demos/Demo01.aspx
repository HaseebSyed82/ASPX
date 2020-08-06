<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo01.aspx.cs" Inherits="Demos_Demo01" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>Haseeb S. - Demo #1 - Calender Page</title>
    </head>

    <body>
        <form id="form1" runat="server">
            <div>
                <h1>Haseeb S. - Demo #1 - Calender Page</h1>

                <asp:DropDownList ID="ddlMonth" runat="server">
                    <asp:ListItem Value="1">January</asp:ListItem>
                    <asp:ListItem Value="2">Febuary</asp:ListItem>
                    <asp:ListItem Value="3">March</asp:ListItem>
                    <asp:ListItem Value="4">April</asp:ListItem>
                    <asp:ListItem Value="5">May</asp:ListItem>
                    <asp:ListItem Value="6">June</asp:ListItem>
                    <asp:ListItem Value="7">July</asp:ListItem>
                    <asp:ListItem Value="8">August</asp:ListItem>
                    <asp:ListItem Value="9">September</asp:ListItem>
                    <asp:ListItem Value="10">October</asp:ListItem>
                    <asp:ListItem Value="11">November</asp:ListItem>
                    <asp:ListItem Value="12">December</asp:ListItem>
                </asp:DropDownList>

                <asp:DropDownList ID="ddlYear" runat="server">
                    <asp:ListItem Selected="True">2019</asp:ListItem>
                    <asp:ListItem>2020</asp:ListItem>
                    <asp:ListItem>2021</asp:ListItem>
                    <asp:ListItem>2022</asp:ListItem>
                    <asp:ListItem>2023</asp:ListItem>
                    <asp:ListItem>2024</asp:ListItem>
                </asp:DropDownList>

                <asp:Button ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click" />

                <br /> <br />

                <asp:Calendar ID="calMain" runat="server" FirstDayOfWeek="Monday"></asp:Calendar>

                <br /> <br />
                <asp:CheckBox ID="chkMonday" runat="server" Text="Start on Monday" AutoPostBack="true" OnCheckedChanged="chkMonday_CheckedChanged" />

            </div>
        </form>
    </body>

</html>
