<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Menu.aspx.cs" Inherits="Master.Menu" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label class="Category" runat="server" Text="Меню и категории" Font-Bold="True" Font-Size="120%"  meta:resourcekey="CategoryResource1"></asp:Label>
    <span class="search">
    <asp:Label ID="Label3" runat="server" Text="Търсене:"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server" meta:resourcekey="TextBox1Resource1"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" OnLoad="Button1_Load" Text="Търси" meta:resourcekey="Button1Resource1" />
    <asp:Label ID="Label1" runat="server" Text="Кошница" meta:resourcekey="Label1Resource1"></asp:Label>
    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/BookPictures/kosh.jpg" PostBackUrl="~/Bin.aspx" meta:resourcekey="ImageButton1Resource1" />
    </span>
    <asp:GridView ID="GridView4" CssClass="GridView4" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" ShowHeader="False" OnSelectedIndexChanged="GridView4_SelectedIndexChanged" meta:resourcekey="GridView4Resource1">
        <Columns>
            <asp:TemplateField meta:resourcekey="TemplateFieldResource1">
                <ItemTemplate>
                    <asp:LinkButton ID="LinkButton7" runat="server" OnClick="LinkButton7_Click" Text='<%# Eval("BookType") %>' meta:resourcekey="LinkButton7Resource1"></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
    </asp:GridView>
 
        <asp:GridView ID="GridView5" CssClass="GridView5" runat="server" AutoGenerateColumns="False" DataKeyNames="BookID" DataSourceID="SqlDataSource2" OnSelectedIndexChanged="GridView5_SelectedIndexChanged" meta:resourcekey="GridView5Resource1">
            <Columns>
                <asp:BoundField DataField="BookID" HeaderText="Номер" ReadOnly="True" SortExpression="BookID" meta:resourcekey="BoundFieldResource1" >
                </asp:BoundField>
                <asp:BoundField DataField="BookType" HeaderText="Категория" SortExpression="BookType" meta:resourcekey="BoundFieldResource2" >
                </asp:BoundField>
                <asp:BoundField DataField="BookTitle" HeaderText="Заглавие" SortExpression="BookTitle" meta:resourcekey="BoundFieldResource3" >
                </asp:BoundField>
                <asp:BoundField DataField="BookAuthor" HeaderText="Автор" SortExpression="BookAuthor" meta:resourcekey="BoundFieldResource4" >
                </asp:BoundField>
                <asp:BoundField DataField="BookPrice" HeaderText="Цена" SortExpression="BookPrice" meta:resourcekey="BoundFieldResource5" >
                </asp:BoundField>
                <asp:CommandField ShowSelectButton="True" meta:resourcekey="CommandFieldResource1" SelectText="Виж детайли за книгата" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString2 %>" SelectCommand="SELECT [BookID], [BookType], [BookTitle], [BookAuthor], [BookPrice] FROM [Books] WHERE ([BookType] = @BookType)">
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="web" Name="BookType" QueryStringField="Category" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>
 
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString2 %>" SelectCommand="SELECT DISTINCT BookType FROM Books"></asp:SqlDataSource>


    <asp:Label ID="Label4" runat="server" CssClass="lblmyBascet" Text="Label"></asp:Label>


</asp:Content>
