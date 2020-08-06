<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo25.aspx.cs" Inherits="Demos_Demo25" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<head runat="server">
    <title>Demo #25 XML and XSLT</title>
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
        table td {
            border-width: thin;
            padding: 3px;
            border-style: inset;
            border-color: #cccccc;
        }
        table th {
            border-width: 1px;
            border-spacing: 0px;
            padding: 3px;
            border-style: inset;
            border-color: #444444;
            background-color: #e1d5bd;
        }
    </style> 
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <h1>Demo #25 XML and XSLT</h1>
            <br /><br />
            <asp:DropDownList ID="ddlViewSelector" AutoPostBack="true" runat="server" OnSelectedIndexChanged="ddlViewSelector_SelectedIndexChanged">
                <asp:ListItem Selected="True" Value="CD">CD Collection</asp:ListItem>
                <asp:ListItem Value="States">States</asp:ListItem>
            </asp:DropDownList>
            <br /><br />

            <asp:MultiView ID="mvwMain" runat="server" ActiveViewIndex="0">

                <asp:View ID="viwCd" runat="server">

                    Click here to see the source file:<a href="CDCollection.xml">CDCollection.xml</a><br />
                    Click here to see the XSLT file:<a href="Demo25.xslt">Demo25.xslt</a>
                    <br /><br />
                    <asp:Xml ID="xmlCD" runat="server" 
                        DocumentSource="~/Demos/CDCollection.xml" TransformSource="Demo25.xslt"></asp:Xml>
                </asp:View>

                <asp:View ID="viwStates" runat="server">
                    Click here to see the source file:<a href="States.xml">States.xml</a><br />
                    Click here to see the XSLT file:<a href="Demo25b.xslt">Demo25b.xslt</a>
                    <br /><br />
                    <asp:Xml ID="xml1" runat="server" 
                        DocumentSource="~/Demos/States.xml" TransformSource="Demo25b.xslt"></asp:Xml>
                </asp:View>

            </asp:MultiView>



        </div>
    </form>
</body>
</html>
