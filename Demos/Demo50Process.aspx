<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo50Process.aspx.cs" Inherits="Demos_Demo50Process" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>Demo 50 - Old School Web Form</title>
    </head>

    <body>
        <form id="form1" runat="server">
            <div>
                <h1>Demo 50 - Old School Web Form</h1>
                <br /><br />

                <table>
                    <tr>
                        <td>Name:</td>
                        <td><asp:Literal ID="LitName" runat="server"></asp:Literal></td>
                    </tr>
                    <tr>
                        <td>Email:</td>
                        <td><asp:Literal ID="LitEmail" runat="server"></asp:Literal></td>
                    </tr>
                    <tr>
                        <td>Phone:</td>
                        <td><asp:Literal ID="LitPhone" runat="server"></asp:Literal></td>
                    </tr>
                    <tr>
                        <td>Comments:</td>
                        <td><asp:Literal ID="LitComments" runat="server"></asp:Literal></td>
                    </tr>
                </table>

            </div>
        </form>
    </body>
</html>
