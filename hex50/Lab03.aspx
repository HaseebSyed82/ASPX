<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lab03.aspx.cs" Inherits="hex50_Lab03" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>Haseeb S. (#50) - Cities of the world</title>
        <link href="cis2350.css" type="text/css" rel="stylesheet" media="all" />
    </head>

    <body>
        <form id="form1" runat="server">
            <div>
                <h1>Haseeb S. (#50) - Cities of the world</h1>
                <br /><br />

                <table>
                    <tr>
                        <td>Select a city:
                            <br />
                            <asp:ListBox ID="lstTopicSelection" runat="server" AutoPostBack="true"
                                OnSelectedIndexChanged="lstTopicSelection_SelectedIndexChanged">
                                <asp:ListItem>Corvette</asp:ListItem>
                                <asp:ListItem>Bugatti</asp:ListItem>
                                <asp:ListItem Selected="True">Volkswagen</asp:ListItem>
                                <asp:ListItem>RollsRoyce</asp:ListItem>
                                <asp:ListItem>RangeRover</asp:ListItem>
                                <asp:ListItem>Mustang</asp:ListItem>
                                <asp:ListItem>Lamborghini</asp:ListItem>
                                <asp:ListItem>Ferrari</asp:ListItem>
                            </asp:ListBox>
                        </td>
                        <td>
                            <h2> <asp:Literal ID="litTitle" runat="server" >Volkswagen</asp:Literal></h2>
                            <br /><br />
                            <asp:Image ID="imgMain" runat="server" ImageUrl="images/CarsVolkswagen.jpg"
                                AlternateText="Picture of the Car" />
                            <br /><br />
                            <asp:HyperLink ID="hypWikipedia" runat="server" NavigateUrl="https://en.wikipedia.org/wiki/Volkswagen">
                                Click here to see Volkswagen on Wikipedia</asp:HyperLink>
                            <br /><br />
                            <asp:ImageButton ID="ibnWiki" runat="server" ImageUrl="images/WikipediaLogo.jpg"
                                OnClick="ibnWiki_Click" AlternateText="Logo of Wikipedia"/>
                        </td>
                    </tr>
                </table>

                <br /><br />

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
