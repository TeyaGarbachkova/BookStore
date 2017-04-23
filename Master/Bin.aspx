<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Bin.aspx.cs" Inherits="Master.Bin" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" class="lblmyBascet" runat="server" Text="Във вашата кошница има" meta:resourcekey="Label1Resource1" Font-Size="15pt"></asp:Label>
    <br />
    <asp:DataList ID="DataList1" class="DataList1" runat="server" DataSourceID="SqlDataSource1" RepeatColumns="3" meta:resourcekey="DataList1Resource1">
        <ItemTemplate>
            BookID:
            <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' meta:resourcekey="BookIDLabelResource1" />
            <asp:Image ID="Image1" runat="server" ImageUrl='<%# "./BookPictures/" + Eval("BookID") + ".jpg" %>' meta:resourcekey="Image1Resource1" />
            <br />
            BookTitle:
            <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Eval("BookTitle") %>' meta:resourcekey="BookTitleLabelResource1" />
            <br />
            Price:
            <asp:Label ID="PriceLabel" runat="server" Text='<%# Eval("Price") %>' meta:resourcekey="PriceLabelResource1" />
            <br />
            Quantity:
            <asp:Label ID="QuantityLabel" runat="server" Text='<%# Eval("Quantity") %>' meta:resourcekey="QuantityLabelResource1" />
            <br />
            Sum:
            <asp:Label ID="SumLabel" runat="server" Text='<%# Eval("Sum") %>' meta:resourcekey="SumLabelResource1" />
            <br />
            <asp:CheckBox ID="CheckBox1" runat="server" meta:resourcekey="CheckBox1Resource1" />
            <asp:Label ID="Label3" runat="server" Text="Отбележете за премахване" meta:resourcekey="Label3Resource1"></asp:Label>
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString2 %>" SelectCommand="SELECT BookID, BookTitle, Price, SUM(Qty) AS Quantity, SUM(Qty * Price) AS Sum FROM ShopCart GROUP BY BookID, BookTitle, Price"></asp:SqlDataSource>
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:BooksDBSQLConnectionString2 %>" SelectCommand="SELECT SUM(Qty * Price) AS Sum FROM ShopCart 
"></asp:SqlDataSource>
    <table style="width:100%;">
        <tr>
            <td style="width: 30px">
    <asp:Label ID="Label2" class="lblTotal" runat="server" Text="Общо:" meta:resourcekey="Label2Resource1" Font-Size="15pt"></asp:Label>
            </td>
            <td>
    <asp:GridView ID="GridView1" class="total" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource2" ShowHeader="False" meta:resourcekey="GridView1Resource1">
        <Columns>
            <asp:BoundField DataField="Sum" HeaderText="Sum" ReadOnly="True" SortExpression="Sum" meta:resourcekey="BoundFieldResource1" >
            <HeaderStyle BackColor="#FFFFB3" />
            </asp:BoundField>
        </Columns>
    </asp:GridView>
            </td>
           
        </tr>
       
    
    </table>
    <asp:Label ID="Label4" runat="server" Text="Label" meta:resourcekey="Label4Resource1"></asp:Label>
    <br />
    <asp:Button ID="Button1" runat="server" Text="Изтриване на маркираните суми" OnClick="Button1_Click" meta:resourcekey="Button1Resource1" CssClass="lblmyBascet" />
    <br />
</asp:Content>
