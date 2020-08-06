<%@ Page Title="Haseeb S. #50 -  Lab#6b - Wikipedia Selection" Language="C#" MasterPageFile="~/hex50/hex50_HaseebS.master" AutoEventWireup="true" CodeFile="Lab06b.aspx.cs" Inherits="hex50_Lab06b" %>

<asp:Content ID="cntHeader" ContentPlaceHolderID="cphHeader" Runat="Server">
</asp:Content>
<asp:Content ID="cntBody" ContentPlaceHolderID="cphBody" Runat="Server">
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
        </div>7
</asp:Content>

