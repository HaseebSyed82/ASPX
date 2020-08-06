<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lab02.aspx.cs" Inherits="hex50_Lab02" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>Haseeb S. #50 - Lab #2 </title>
        <link href="cis2350.css" type="text/css" rel="stylesheet" media="all" />
    </head>

    <body>
        <form id="form1" runat="server">
            <div>
                <h1>Haseeb S. #50 - Lab #2 </h1>
                <br /> <br />

                <asp:Label ID="lblDisplatText" runat="server" Text=""></asp:Label>
                <br /><br /><br />

                Enter text:
                <asp:TextBox ID="txtUserEntry" runat="server"></asp:TextBox>
                <asp:Button ID="btnUpdate" runat="server" Text="Update Text" OnClick="btnUpdate_Click" />
                <br /> <br />

                Foreground Color:
                <asp:DropDownList ID="ddlForeColor" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlForeColor_SelectedIndexChanged">
                    <asp:ListItem Value="Black" Selected="True">Black</asp:ListItem>
                    <asp:ListItem Value="White">White</asp:ListItem>
                    <asp:ListItem Value="Red">Red</asp:ListItem>
                    <asp:ListItem Value="Yellow">Yellow</asp:ListItem>
                    <asp:ListItem Value="Green">Green</asp:ListItem>
                    <asp:ListItem Value="Blue">Blue</asp:ListItem>
                    <asp:ListItem Value="Purple">Purple</asp:ListItem>
                </asp:DropDownList>
                <br /><br />

                Background Color:
                <asp:DropDownList ID="ddlBackColor" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlBackColor_SelectedIndexChanged">
                    <asp:ListItem Value="Black">Black</asp:ListItem>
                    <asp:ListItem Value="White" Selected="True">White</asp:ListItem>
                    <asp:ListItem Value="Red">Red</asp:ListItem>
                    <asp:ListItem Value="Yellow">Yellow</asp:ListItem>
                    <asp:ListItem Value="Green">Green</asp:ListItem>
                    <asp:ListItem Value="Blue">Blue</asp:ListItem>
                    <asp:ListItem Value="Purple">Purple</asp:ListItem>
                </asp:DropDownList>
                <br /><br />   

                Font Size:
                <asp:DropDownList ID="ddlFontSize" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlFontSize_SelectedIndexChanged">
                <asp:ListItem>X-Small</asp:ListItem>
                <asp:ListItem>Small</asp:ListItem>
                <asp:ListItem selected="True">Medium</asp:ListItem>
                <asp:ListItem>Large</asp:ListItem>
                <asp:ListItem>X-Large</asp:ListItem>
                </asp:DropDownList>
                <br /><br />

                <asp:CheckBox ID="chkBold" runat="server" Text="Bold" AutoPostBack="true" OnCheckedChanged="chkBold_CheckedChanged" />
                <br />
                <asp:CheckBox ID="chkItalics" runat="server" text="Italics" AutoPostBack="true" OnCheckedChanged="chkItalics_CheckedChanged" />
                <br />
                <asp:CheckBox ID="chkVisisble" runat="server" Text="Visible" AutoPostBack="true" OnCheckedChanged="chkVisisble_CheckedChanged" Checked="true" />
                <br /> <br  />

                <img src="http://www.thatlink.com/classes/images/html5-css3.jpg" alt="Validate" usemap="#ValidationMap" />
                <map name="ValidationMap">
	                <area shape="rect" coords="0,0,90,79" alt="XHTML5 Validation"
	                	href="http://www.thatlink.com/Classes/Public/Validate.aspx?type=xhtml5&amp;url=referrer" />
	                <area shape="rect" coords="91,0,180,79" alt="CSS3 Validation"
	                	href="http://www.thatlink.com/Classes/Public/Validate.aspx?type=css3&amp;url=referrer" />
                </map>  

            </div>
        </form>
    </body>
</html>
