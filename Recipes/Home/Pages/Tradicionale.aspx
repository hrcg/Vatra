<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Tradicionale.aspx.cs" Inherits="Recipes.Home.Pages.Tradicionale" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <p>
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="ID_T" DataSourceID="sdsTradicionale" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" Width="100%">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="ID_T" HeaderText="ID_T" InsertVisible="False" ReadOnly="True" SortExpression="ID_T" />
                <asp:BoundField DataField="Emri" HeaderText="Emri" SortExpression="Emri" />
                <asp:BoundField DataField="Perberesit" HeaderText="Perberesit" SortExpression="Perberesit" />
                <asp:BoundField DataField="Pershkrimi" HeaderText="Pershkrimi" SortExpression="Pershkrimi" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sdsTradicionale" runat="server" ConnectionString="<%$ ConnectionStrings:RecetaConnectionString %>" DeleteCommand="DELETE FROM [Tradicionale] WHERE [ID_T] = @ID_T" InsertCommand="INSERT INTO [Tradicionale] ([Emri], [Perberesit], [Pershkrimi]) VALUES (@Emri, @Perberesit, @Pershkrimi)" SelectCommand="SELECT * FROM [Tradicionale]" UpdateCommand="UPDATE [Tradicionale] SET [Emri] = @Emri, [Perberesit] = @Perberesit, [Pershkrimi] = @Pershkrimi WHERE [ID_T] = @ID_T">
            <DeleteParameters>
                <asp:Parameter Name="ID_T" Type="Int32" />
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
                <asp:Parameter Name="ID_T" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
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
