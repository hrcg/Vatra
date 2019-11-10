<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Logim.aspx.cs" Inherits="Recipes.Home.Pages.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
          <div>
            Username:<br />
            <br />
            <asp:TextBox ID="txtUN" runat="server" CssClass="inputs"></asp:TextBox>
            <br />
            <br />
            Password:<br />
            <br />
            <asp:TextBox ID="txtPW" runat="server" TextMode="Password" CssClass="inputs" Height="16px"></asp:TextBox>
            <br />
            <br />
            <asp:CheckBox ID="remember" Text="Remember me" runat="server" />
            <br />
            <br />
            <asp:Button ID="txtLG" runat="server" Onclick="login_Click" Text="Logim"/>
          
            <asp:Button ID="Button1" runat="server" Text="Rregjistrim" OnClick="register_Click" />
          
            <br />
            <asp:Label ID="lbl" runat="server"  Text="" ForeColor="Red"></asp:Label>
            <br />
        </div>
</asp:Content>
