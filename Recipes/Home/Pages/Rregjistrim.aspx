<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Rregjistrim.aspx.cs" Inherits="Recipes.Home.Pages.Rregjistrim" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
                <p>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
        <br />
        <br />
        Username:<br />
&nbsp;<br />

        <asp:TextBox ID="txtUN" runat="server" CssClass="inputs" ></asp:TextBox>

        <asp:RequiredFieldValidator ID = "Req1" runat ="server" ControlToValidate ="txtUN" ErrorMessage="Username duhet te plotesohet" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Email:<br />
        <br />
                    <asp:TextBox ID="txtEM" runat="server" CssClass="inputs" OnTextChanged="txtEM_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="vlEM" runat="server" ControlToValidate="txtEM"  ErrorMessage="Emali duhet te plotesohet" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="vlEM2" runat="server" ControlToValidate ="txtEM"  ErrorMessage="Format jo i sakte i Email" 
            ForeColor="Blue" 
            ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <br />
        <br />
        Password:<br />
        <br />
        <br />
                    <asp:TextBox ID="txtPW" runat="server" CssClass="inputs" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="vlPW" runat="server" ControlToValidate ="txtPW"   ErrorMessage="Password duhet te plotesohet" ForeColor="Red"></asp:RequiredFieldValidator>
        <br />
        <br />
        Konfirmo Password:<br />
        <br />
         <asp:TextBox ID="txtKPW" runat="server" CssClass="inputs" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="vlKPW" runat="server" ControlToValidate ="txtKPW"  ErrorMessage="Konfirmo password duhet te plotesohet" ForeColor="Red"></asp:RequiredFieldValidator>
        <asp:CompareValidator ID="vlKPW2" runat="server" ControlToCompare="txtPW" 
            ControlToValidate="txtKPW" ErrorMessage="Password duhet te perputhen" 
            ForeColor="Blue"></asp:CompareValidator>
        <br />
        <br />
        Datelindja:<br />
        <br />
                    <asp:TextBox ID="txtDL" runat="server" TextMode="Date" CssClass="inputs"></asp:TextBox>
            <asp:CompareValidator ID="CMP2" runat="server" ControlToValidate="txtDL" ValueToCompare="2005/01/01" Operator="LessThan" 
            ErrorMessage="Jeni shume te rinj per t'u rregjistruar">
            </asp:CompareValidator> 
                    
        <br />
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Rregjistrohu" />
        <br />
                    <asp:Label ID="gabim" runat="server" />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    </p>
  

</asp:Content>
