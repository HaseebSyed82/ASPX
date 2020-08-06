<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo62.aspx.cs" Inherits="CODLAB_Demos_Demo62" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>Demo #62 - Viewstate</title>
    </head>

    <body>
        <form id="form1" runat="server">
            <div>
                <h1>Demo #62 - Viewstate</h1>
                <br /><br />

                Enter some text :<br />
                <asp:TextBox ID="txtText" runat="server" 
                    Rows="8" Columns="60" TextMode="MultiLine" EnableViewState="false"></asp:TextBox>
                <br /><br />

                How many times would you like to see that text?<br />
                <asp:TextBox ID="txtTimes" runat="server" TextMode="Number" EnableViewState="false"></asp:TextBox>
                <br /><br />

                <asp:Button ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click" EnableViewState="false"/>
                <br /><br />

                <hr />
                <pre><asp:Literal ID="litResults" runat="server" EnableViewState="false"></asp:Literal></pre>
                <hr />

            </div>
        </form>
    </body>
</html>
