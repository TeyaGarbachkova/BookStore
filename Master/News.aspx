<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="News.aspx.cs" Inherits="Master.News" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="Label1" runat="server" meta:resourcekey="Label1Resource1" Text="RSS News:" CssClass="lblmyBascet"></asp:Label>
    <br />
    <asp:Label ID="lblTitle" runat="server" meta:resourcekey="lblTitleResource1" Text="lblTitle" CssClass="lblmyBascet"></asp:Label>
    <br />
    <asp:Label ID="lblLanguage" runat="server" meta:resourcekey="lblLanguageResource1" Text="Label" CssClass="lblmyBascet"></asp:Label>
    <br />
    <asp:Label ID="lblLink" runat="server" meta:resourcekey="lblLinkResource1" Text="Label" CssClass="lblmyBascet"></asp:Label>
    <br />
    <asp:Label ID="lblDescription" runat="server" meta:resourcekey="lblDescriptionResource1" Text="Label" CssClass="contacts"></asp:Label>
    <br />
    <asp:GridView ID="GrViewNews" class="GrViewNews" runat="server" meta:resourcekey="GrViewNewsResource1" OnSelectedIndexChanged="GrViewNews_SelectedIndexChanged" CssClass="GrViewNews">
        <Columns>
            <asp:CommandField HeaderText="Прочети в сайта" SelectText="Прочети в сайта" ShowSelectButton="True" />
        </Columns>
    </asp:GridView>
    <br />
</asp:Content>
