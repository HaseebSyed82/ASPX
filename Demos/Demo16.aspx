<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo16.aspx.cs" Inherits="Demos_Demo16" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Demo #16 - Use a Stored Procedure</title>
    <link href="cis2350.css" rel="stylesheet" type="text/css" media="all" />
    <style type="text/css">
        table {
            border-width: 1px;
            border-spacing: 0px;
            border-style: outset;
            border-color: #cccccc;
            border-collapse: separate;
            background-color: #ffffff;
        }
        table th {
            border-width: 1px;
            border-spacing: 0px;
            padding: 3px;
            border-style: inset;
            border-color: #444444;
            background-color: #e1d5bd;
        }
        table td {
            border-width: thin;
            padding: 3px;
            border-style: inset;
            border-color: #cccccc;
        }
        table tr.alt {
            background-color: #e1d5db;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #16 - Use a Stored Procedure</h1>
            <br /><br />
            Emplyee ID:
            <asp:TextBox ID="txtEmpID" runat="server"></asp:TextBox>
            <br />
            Last Name:
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
            <br />
            <asp:Button ID="btnUpadate" runat="server" Text="Update" OnClick="btnUpadate_Click" />
            <br /><br /><br />

            <asp:SqlDataSource ID="sqlEmployees" runat="server" 
                ConnectionString='<%$ ConnectionStrings:ConnectionDB01 %>' 
                SelectCommand="SELECT [EmpID], [LastName], [FirstName], [BirthDate], [SSN], [EmployeeNbr], [FullName] 
                FROM [hex50Employees] ORDER BY [LastName], [FirstName]"></asp:SqlDataSource>

            <asp:GridView ID="grdEmployees" runat="server" DataSourceID="sqlEmployees" AutoGenerateColumns="False" DataKeyNames="EmpID">
                <Columns>
                    <asp:BoundField DataField="EmpID" HeaderText="EmpID" ReadOnly="True" InsertVisible="False" SortExpression="EmpID"></asp:BoundField>
                    <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName"></asp:BoundField>
                    <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName"></asp:BoundField>
                    <asp:BoundField DataField="BirthDate" HeaderText="BirthDate" SortExpression="BirthDate"></asp:BoundField>
                    <asp:BoundField DataField="SSN" HeaderText="SSN" SortExpression="SSN"></asp:BoundField>
                    <asp:BoundField DataField="EmployeeNbr" HeaderText="EmployeeNbr" SortExpression="EmployeeNbr"></asp:BoundField>
                </Columns>
            </asp:GridView>

        </div>
    </form>
</body>
</html>
