<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo35c.aspx.cs" Inherits="Demos_Demo11" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">


    <head runat="server">
        <title>Demo #35 - Customers w/Query String</title>
        <style type="text/css">
            #grdCustomers tr:nth-child(even){background-color: lime}

        </style>
    </head>

<body>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="scmScriptManager" runat="server">
        </asp:ScriptManager>
 
        <h1>Demo #35c - Database Connection no Ajax, Bookmarks Work</h1>
        <br />
 
        <p>
            View customers by state:
        </p>
        <ul>
            <li><a href="Demo35c.aspx?State=IL">Illinois</a></li>
            <li><a href="Demo35c.aspx?State=IN">Indiana</a></li>
            <li><a href="Demo35c.aspx?State=IA">Iowa</a></li>
            <li><a href="Demo35c.aspx?State=MI">Michigan</a></li>
            <li><a href="Demo35c.aspx?State=WI">Wisconsin</a></li>
        </ul>
 
                
        <br /><br />
        <asp:SqlDataSource ID="sqlCustomers" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionDB01 %>"            
            SelectCommand="SELECT [CustomerID], [FirstName], [LastName], [City], [State], [ZipCode] FROM [Customers] WHERE ([State] = @State)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="IL" QueryStringField="State"
                    Name="State" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:GridView ID="grdCustomers" runat="server" 
            DataSourceID="sqlCustomers" 
            DataKeyNames="CustomerID" 
            AllowPaging="True" 
            AllowSorting="True"  
            CellSpacing="-1" 
            GridLines="None"
            PageSize="8" AutoGenerateColumns="False">
            <PagerSettings Mode="NumericFirstLast" />
            <RowStyle BackColor="#66FFFF" />
            <Columns>
                <asp:BoundField DataField="CustomerID" HeaderText="CustomerID" ReadOnly="True" 
                    SortExpression="CustomerID" />
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" 
                    SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" 
                    SortExpression="LastName" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:BoundField DataField="ZipCode" HeaderText="ZipCode" 
                    SortExpression="ZipCode" />
            </Columns>
            <PagerStyle BackColor="#66FF66" />
            <HeaderStyle BackColor="Lime" />
            <AlternatingRowStyle BackColor="#FFFF99" />
        </asp:GridView>         
 
    </div>
    </form>
    <br /><br /><br />
    <img src="http://www.thatlink.com/classes/images/html5-css3.jpg" alt="Validate" usemap="#ValidationMap" /> 
</body>
</html>
