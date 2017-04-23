<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="About us.aspx.cs" Inherits="Master.About_us" culture="auto" meta:resourcekey="PageResource1" uiculture="auto" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="contacts">
    <asp:Label ID="Label1" runat="server" Text="До:" meta:resourcekey="Label1Resource1"></asp:Label>
    <asp:TextBox ID="MailFrom" runat="server" meta:resourcekey="MailFromResource1"></asp:TextBox>
    <br />
    <asp:Label ID="Label2" runat="server" Text="От:" meta:resourcekey="Label2Resource1"></asp:Label>
    <asp:TextBox ID="MailTo" runat="server" meta:resourcekey="MailToResource1"></asp:TextBox>
    <br />
    <asp:Label ID="Label3" runat="server" Text="Относно:" meta:resourcekey="Label3Resource1"></asp:Label>
    <asp:TextBox ID="Subject" runat="server" meta:resourcekey="SubjectResource1"></asp:TextBox>
    <br />
    <asp:Label ID="Label4" runat="server" Text="Запитване:" meta:resourcekey="Label4Resource1"></asp:Label>
    <asp:TextBox ID="Body" runat="server" TextMode="MultiLine" meta:resourcekey="BodyResource1"></asp:TextBox>
    <br />
    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Изпрати" meta:resourcekey="Button1Resource1" />
    <br />
    <asp:Label ID="MailMsg" runat="server" Text="[MailMsg]" meta:resourcekey="MailMsgResource1"></asp:Label>
    <br />
    </div>
</asp:Content>
