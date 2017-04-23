<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserControlDetails.ascx.cs" Inherits="Master.WebUserControlDetails" %>
<br />
<p>
    BookID:
    <asp:Label ID="BookIDLabel" runat="server" Text='<%# Eval("BookID") %>' />
    <asp:Image ID="Image1" runat="server" ImageUrl='<%# "./BookPictures/" + Eval("BookID") + ".jpg" %>' />
    <br />BookTitle:
    <asp:Label ID="BookTitleLabel" runat="server" Text='<%# Bind("BookTitle") %>' />
    <br />BookPrice:
    <asp:Label ID="BookPriceLabel" runat="server" Text='<%# Bind("BookPrice") %>' />
    <br />BookQty:
    <asp:Label ID="BookQtyLabel" runat="server" Text='<%# Bind("BookQty") %>' />
    <br />BookSale:
    <asp:CheckBox ID="BookSaleCheckBox" runat="server" Checked='<%# Bind("BookSale") %>' Enabled="false" OnCheckedChanged="BookSaleCheckBox_CheckedChanged" />
<asp:CheckBox ID="CheckBox1" runat="server" Text="Отбележи за купуване" OnCheckedChanged="CheckBox1_CheckedChanged" />
</p>

<p>
    &nbsp;</p>
<p>
    &nbsp;</p>


