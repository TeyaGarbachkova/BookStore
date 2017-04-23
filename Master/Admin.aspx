<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Master.Admin" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="BookID" DataSourceID="SqlDataSource1" Height="50px" meta:resourcekey="DetailsView1Resource1" Width="125px" CssClass="GrViewNews">
        <Fields>
            <asp:BoundField DataField="BookID" HeaderText="BookID" meta:resourcekey="BoundFieldResource1" ReadOnly="True" SortExpression="BookID" />
            <asp:BoundField DataField="BookType" HeaderText="BookType" meta:resourcekey="BoundFieldResource2" SortExpression="BookType" />
            <asp:BoundField DataField="BookTitle" HeaderText="BookTitle" meta:resourcekey="BoundFieldResource3" SortExpression="BookTitle" />
            <asp:BoundField DataField="BookAuthor" HeaderText="BookAuthor" meta:resourcekey="BoundFieldResource4" SortExpression="BookAuthor" />
            <asp:BoundField DataField="BookDescription" HeaderText="BookDescription" meta:resourcekey="BoundFieldResource5" SortExpression="BookDescription" />
            <asp:BoundField DataField="BookPrice" HeaderText="BookPrice" meta:resourcekey="BoundFieldResource6" SortExpression="BookPrice" />
            <asp:BoundField DataField="BookQty" HeaderText="BookQty" meta:resourcekey="BoundFieldResource7" SortExpression="BookQty" />
            <asp:CheckBoxField DataField="BookSale" HeaderText="BookSale" meta:resourcekey="CheckBoxFieldResource1" SortExpression="BookSale" />
            <asp:CommandField meta:resourcekey="CommandFieldResource1" ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=TEYA-PC;Initial Catalog=BooksDBSQL;Integrated Security=True" DeleteCommand="DELETE FROM [Books] WHERE [BookID] = @BookID" InsertCommand="INSERT INTO [Books] ([BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale]) VALUES (@BookID, @BookType, @BookTitle, @BookAuthor, @BookDescription, @BookPrice, @BookQty, @BookSale)" SelectCommand="SELECT [BookID], [BookType], [BookTitle], [BookAuthor], [BookDescription], [BookPrice], [BookQty], [BookSale] FROM [Books]" UpdateCommand="UPDATE [Books] SET [BookType] = @BookType, [BookTitle] = @BookTitle, [BookAuthor] = @BookAuthor, [BookDescription] = @BookDescription, [BookPrice] = @BookPrice, [BookQty] = @BookQty, [BookSale] = @BookSale WHERE [BookID] = @BookID">
        <DeleteParameters>
            <asp:Parameter Name="BookID" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="BookID" Type="String" />
            <asp:Parameter Name="BookType" Type="String" />
            <asp:Parameter Name="BookTitle" Type="String" />
            <asp:Parameter Name="BookAuthor" Type="String" />
            <asp:Parameter Name="BookDescription" Type="String" />
            <asp:Parameter Name="BookPrice" Type="Decimal" />
            <asp:Parameter Name="BookQty" Type="Int32" />
            <asp:Parameter Name="BookSale" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="BookType" Type="String" />
            <asp:Parameter Name="BookTitle" Type="String" />
            <asp:Parameter Name="BookAuthor" Type="String" />
            <asp:Parameter Name="BookDescription" Type="String" />
            <asp:Parameter Name="BookPrice" Type="Decimal" />
            <asp:Parameter Name="BookQty" Type="Int32" />
            <asp:Parameter Name="BookSale" Type="Boolean" />
            <asp:Parameter Name="BookID" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
    <br />
    <asp:FileUpload ID="FileUpload1" runat="server" meta:resourcekey="FileUpload1Resource1" CssClass="lblmyBascet" />
    <asp:Label ID="lblMessageText" runat="server" meta:resourcekey="Label1Resource1" Text="lbl1"></asp:Label>
    <asp:Button ID="Button2" runat="server" OnClick="Button1_Click" Text="Качване на файл" meta:resourcekey="Button2Resource1" />
</asp:Content>
