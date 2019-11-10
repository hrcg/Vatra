<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="zgjidh.aspx.cs" Inherits="sisteme_interneti_project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script type="text/javascript" src="btnafisho.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="ddldega" AutoPostBack="true" runat="server" OnSelectedIndexChanged="degandryshim"></asp:DropDownList>
            <asp:DropDownList ID="ddlviti" AutoPostBack="true" runat="server" OnSelectedIndexChanged="vitindryshim"></asp:DropDownList>
            <asp:DropDownList ID="ddlparaleli" runat="server"></asp:DropDownList>
            <button type="button" onclick="displayResult()">Afisho</button>
            <br />
            <div id="demo"></div>
        </div>
    </form>
</body>
</html>
