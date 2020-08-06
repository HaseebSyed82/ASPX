<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Demo04.aspx.cs" Inherits="Demos_Demo02" %>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <title>Haseeb S. (#50) - Mortgage Calculator with Validation</title>
        <style>
            span.error {color: red; font-weight: bold}
        </style>
    </head>

    <body>
        <form id="form1" runat="server">
            <div>
                <h1>Haseeb S. (#50) - Mortgage Calculator w/Validation</h1>
                <br /><br />

                Principal  Amount:
                <asp:TextBox ID="txtPrincipal" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="rqvtxtPrincipal" runat="server"
                    ControlToValidate="txtPrincipal" 
                    Display="Dynamic"
                    cssClass="error"
                    SetFocusOnError="true"
                    ErrorMessage="You must enter a principal amount">
                </asp:RequiredFieldValidator>

                <asp:RangeValidator ID="rgvtxtPrincipal" runat="server" 
                    ControlToValidate="txtPrincipal"
                    MinimumValue="50000"
                    MaximumValue="10000000"
                    type="double"
                    Display="Dynamic"
                    cssClass="error"
                    SetFocusOnError="true"
                    ErrorMessage="Principal must be $50,000 - $10,000,000.">
                </asp:RangeValidator>
                <br />

                Annual Interest Rate:
                <asp:TextBox ID="txtIntRate" runat="server"></asp:TextBox>

                <asp:RequiredFieldValidator ID="rqvtxtIntRate" runat="server" 
                    ControlToValidate="txtIntRate"
                    Display="Dynamic"
                    cssClass="error"
                    SetFocusOnError="true"
                    ErrorMessage="You must enter an Interest Rate.">
                </asp:RequiredFieldValidator>

                <asp:RangeValidator ID="rgvtxtIntRate" runat="server" 
                    ControlToValidate="txtIntRate"
                    Display="Dynamic"
                    cssClass="error"
                    SetFocusOnError="true"
                    MinimumValue="0.5"
                    MaximumValue="25.0"
                    type="double"
                    ErrorMessage="Interest rate must be between 0.5% - 25.0%"></asp:RangeValidator>

                <br />

                Mortgage Length:
                <asp:TextBox ID="txtYearsOrMonth" runat="server"></asp:TextBox>
                <asp:Literal ID="litYearsOrMonth" runat="server" Text="years"></asp:Literal>

                <asp:RequiredFieldValidator ID="rqvtxtYearsOrMonth" runat="server" 
                    ControlToValidate="txtYearsOrMonth"
                    Display="Dynamic"
                    cssClass="error"
                    SetFocusOnError="true"
                    ErrorMessage="You must enter the number of years.">
                </asp:RequiredFieldValidator>

                <asp:RangeValidator ID="rgvtxtYearsOrMonth" runat="server" 
                    ControlToValidate="txtYearsOrMonth"
                    Display="Dynamic"
                    cssClass="error"
                    SetFocusOnError="true"
                    MinimumValue="1"
                    MaximumValue="99"
                    Type="integer"
                    ErrorMessage="Number of years must be between 1 and 99">
                </asp:RangeValidator>
                <br /><br />

                <asp:RadioButtonList ID="rblPeriod" runat="server" AutoPostBack="true" 
                    OnSelectedIndexChanged="rblPeriod_SelectedIndexChanged">
                    <asp:ListItem Selected="True" Value="years">Years</asp:ListItem>
                    <asp:ListItem Value ="months">Months</asp:ListItem>
                </asp:RadioButtonList>
                <br /><br />

                Zip Code:
                <asp:TextBox ID="txtZipCode" runat="server"></asp:TextBox>

                <asp:RegularExpressionValidator ID="revtxtZipCode" runat="server" 
                    ControlToValidate="txtZipCode"
                    Display="Dynamic"
                    cssClass="error"
                    SetFocusOnError="true"
                    ValidationExpression="\d{5}(-\d{4})?"
                    ErrorMessage="ZipCode must be in the form 99999 or 99999-9999">
                </asp:RegularExpressionValidator>

                <br /><br />

                Property Value:
                <asp:TextBox ID="txtPropertyValue" runat="server"></asp:TextBox>

                <asp:CompareValidator ID="cmvPropertyValue" runat="server"
                    ControlToValidate="txtPropertyValue"
                    Display="Dynamic"
                    cssClass="error"
                    SetFocusOnError="true"
                    Type="Double"
                    Operator="GreaterThanEqual"
                    ControlToCompare="txtPrincipal"
                    ErrorMessage="Property value must be more than principal amount.">
                </asp:CompareValidator>


                <br /><br />
                <asp:Button ID="btnCompute" runat="server" Text="Compute Monthly Payment" OnClick="btnCompute_Click" />
                <br /> <br /><br />

                <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>

            </div>
        </form>
    </body>
</html>
