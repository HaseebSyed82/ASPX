<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Lab04.aspx.cs" Inherits="hex50_Lab04" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>Haseeb Syed(#50) - Lab #4 </title>
        <link href="cis2350.css" type="text/css" rel="stylesheet" media="all" />
    </head>

    <body>
        <form id="form1" runat="server">
            <div>
                <h1>Haseeb Syed(#50) - Lab #4 </h1>
                
                <asp:RadioButton ID="radAdRotator" runat="server" Text="Ad Rotator" 
                    AutoPostBack="True" GroupName="Feature" checked="true" 
                    OnCheckedChanged="radAdRotator_CheckedChanged"/>

                <asp:RadioButton ID="radQuickLinks" runat="server" Text="Quick Links"
                     GroupName="Feature" OnCheckedChanged="radQuickLinks_CheckedChanged"
                    AutoPostBack="True"/>

                <asp:RadioButton ID="radMadLibs" runat="server" Text="Mad Libs"
                    AutoPostBack="True"
                     GroupName="Feature" OnCheckedChanged="radMadLibs_CheckedChanged"/>
                <br /><br />

                <asp:MultiView ID="mvwMain" runat="server" ActiveViewIndex="0"> 
                    
                <asp:View ID="viwAdRotator" runat="server">
                    <asp:Button ID="btnRefresh" runat="server" Text="Refresh" />
                    <br /><br />
                    <asp:AdRotator ID="adrAdRotator" runat="server" Width="500"
                        AdvertisementFile="Lab04Adverts_hex50.xml"/>
                </asp:View>

                <asp:View ID="viwQuickLinks" runat="server">
                    <asp:XmlDataSource ID="xmlQuickLinks" runat="server"
                        DataFile="Lab04QuickLinks_hex50.xml"></asp:XmlDataSource>
                    <asp:DropDownList ID="ddlQuickLinks" runat="server"
                        DataSourceID="xmlQuickLinks" DataTextField="Text"
                        DataValueField="Value">                        
                    </asp:DropDownList>
                    <asp:Button ID="btnGo" runat="server" Text="Go" OnClick="btnGo_Click" />
                </asp:View>

                <asp:View ID="viwMadLibs" runat="server">
                    <strong>Exclamation</strong><br />
                    <asp:DropDownList ID="ddlExclamation" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlExclamation_SelectedIndexChanged">
                        <asp:ListItem Selected="True">---</asp:ListItem>
                        <asp:ListItem >Ohh</asp:ListItem>
                        <asp:ListItem>Yes</asp:ListItem>
                        <asp:ListItem>wow</asp:ListItem>
                        <asp:ListItem>No</asp:ListItem>
                        <asp:ListItem>Help</asp:ListItem>
                        <asp:ListItem>Oww</asp:ListItem>
                    </asp:DropDownList>
                    <br /><br />

                    <strong>Adverb:</strong><br />
                    <asp:RadioButtonList ID="radAdverbs" runat="server" AutoPostBack="True" OnSelectedIndexChanged="radAdverbs_SelectedIndexChanged">
                        <asp:ListItem>Happily</asp:ListItem>
                        <asp:ListItem>Loudly</asp:ListItem>
                        <asp:ListItem>Easily</asp:ListItem>
                        <asp:ListItem>Sadly</asp:ListItem>
                        <asp:ListItem>Slowly</asp:ListItem>
                    </asp:RadioButtonList>
                    <br /><br />

                    <strong>Noun:</strong><br />
                    <asp:ListBox ID="lstNouns" runat="server" AutoPostBack="True" OnSelectedIndexChanged="lstNouns_SelectedIndexChanged">
                        <asp:ListItem>Lettuce</asp:ListItem>
                        <asp:ListItem>Goat</asp:ListItem>
                        <asp:ListItem>Shoes</asp:ListItem>
                        <asp:ListItem>Kidney</asp:ListItem>
                        <asp:ListItem>Book</asp:ListItem>
                    </asp:ListBox>
                    <br /><br />

                    <a href="Lab04b.aspx">See the Mad Lib</a>
                </asp:View>
                </asp:MultiView>

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
