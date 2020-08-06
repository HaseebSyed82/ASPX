<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo36c.aspx.cs" Inherits="Demos_Demo36c" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Demo #36 - View Cookies</title>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #36 - View Cookies</h1>
            <br /><br />

            Your Zip code is:<strong>
            <asp:Literal ID="litZipCode" runat="server"></asp:Literal></strong>
            <br /><br />

            <asp:HyperLink ID="hypWeather" runat="server">Click here to see weather in your area.</asp:HyperLink>
            <br /><br />

        <asp:SqlDataSource ID="sqlZipCode" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionDB01 %>" 
            SelectCommand="SELECT [ZipCode], [Latitude], [Longitude], [City], [StateCode], [County], [ZipType] FROM [ZipCodes] WHERE ([ZipCode] = @ZipCode)">
            <SelectParameters>
                <asp:CookieParameter Name="ZipCode" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="grdZipCode" runat="server" AutoGenerateColumns="False" DataSourceID="sqlZipCode">
            <Columns>
                <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" 
                    SortExpression="ZipCode" />
                <asp:BoundField DataField="Latitude" HeaderText="Latitude" 
                    SortExpression="Latitude" />
                <asp:BoundField DataField="Longitude" HeaderText="Longitude" 
                    SortExpression="Longitude" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="County" HeaderText="County" 
                    SortExpression="County" />
                <asp:BoundField DataField="Type" HeaderText="Type" SortExpression="Type" />
            </Columns>
        </asp:GridView>
        <br /><br />
        

        
        Your favorite color is: <br />
        <div style="padding: 0px 50px;">
            <asp:Table ID="tabFavColor" runat="server" Height="100px" Width="100px">
                <asp:TableRow>
                    <asp:TableCell>
                        &#xa0;
                    </asp:TableCell>
                </asp:TableRow>
            </asp:Table>
        </div>
        <br /><br />
          
        <a href="Demo36.aspx">Go back to Demo #36 menu.</a>
        </div>
    </form>
</body>
</html>
