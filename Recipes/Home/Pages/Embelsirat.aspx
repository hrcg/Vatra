<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Embelsirat.aspx.cs" Inherits="Recipes.Home.Pages.Embelsirat" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <p>
    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_E" DataSourceID="sqlEmblesirat" Width="100%">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="ID_E" HeaderText="ID_E" InsertVisible="False" ReadOnly="True" SortExpression="ID_E" />
            <asp:BoundField DataField="Emri" HeaderText="Emri" SortExpression="Emri" />
            <asp:BoundField DataField="Perberesit" HeaderText="Perberesit" SortExpression="Perberesit" />
            <asp:BoundField DataField="Pershkrimi" HeaderText="Pershkrimi" SortExpression="Pershkrimi" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="sqlEmblesirat" runat="server" ConnectionString="<%$ ConnectionStrings:RecetaConnectionString %>" DeleteCommand="DELETE FROM [Embelsirat] WHERE [ID_E] = @ID_E" InsertCommand="INSERT INTO [Embelsirat] ([Emri], [Perberesit], [Pershkrimi]) VALUES (@Emri, @Perberesit, @Pershkrimi)" SelectCommand="SELECT * FROM [Embelsirat]" UpdateCommand="UPDATE [Embelsirat] SET [Emri] = @Emri, [Perberesit] = @Perberesit, [Pershkrimi] = @Pershkrimi WHERE [ID_E] = @ID_E">
        <DeleteParameters>
            <asp:Parameter Name="ID_E" Type="Int32" />
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
            <asp:Parameter Name="ID_E" Type="Int32" />
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
<p>
</p>
</asp:Content>
