<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Sallatat.aspx.cs" Inherits="Recipes.Home.Pages.Sallatat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_S" DataSourceID="sqlSallatat" Width="100%">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID_S" HeaderText="ID_S" InsertVisible="False" ReadOnly="True" SortExpression="ID_S" />
            <asp:BoundField DataField="Emri" HeaderText="Emri" SortExpression="Emri" />
            <asp:BoundField DataField="Perberesit" HeaderText="Perberesit" SortExpression="Perberesit" />
            <asp:BoundField DataField="Pershkrimi" HeaderText="Pershkrimi" SortExpression="Pershkrimi" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="sqlSallatat" runat="server" ConnectionString="<%$ ConnectionStrings:RecetaConnectionString %>" DeleteCommand="DELETE FROM [Sallatat] WHERE [ID_S] = @ID_S" InsertCommand="INSERT INTO [Sallatat] ([Emri], [Perberesit], [Pershkrimi]) VALUES (@Emri, @Perberesit, @Pershkrimi)" SelectCommand="SELECT * FROM [Sallatat]" UpdateCommand="UPDATE [Sallatat] SET [Emri] = @Emri, [Perberesit] = @Perberesit, [Pershkrimi] = @Pershkrimi WHERE [ID_S] = @ID_S">
        <DeleteParameters>
            <asp:Parameter Name="ID_S" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Emri" Type="String" />
            <asp:Parameter Name="Perberesit" Type="String" />
            <asp:Parameter Name="Pershkrimi" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Emri" Type="String" />
            <asp:Parameter Name="Perberesit" Type="String" />
            <asp:Parameter Name="Pershkrimi" Type="String" />
            <asp:Parameter Name="ID_S" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
</p>
<p>
</p>
<p>
</p>
<p>
</p>
</asp:Content>
