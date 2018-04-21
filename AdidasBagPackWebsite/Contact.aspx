<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AdidasBagPackWebsite.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="regEmailField" runat="server" ErrorMessage="Email is not in Valid format" ControlToValidate="txtEmail" Display="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="reqEmailField" runat="server" ErrorMessage="Please enter your email!" ControlToValidate="txtEmail" Display="None"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblSubject" runat="server" Text="Subject:"></asp:Label>
        <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqSubjectField" runat="server" ErrorMessage="Please enter your Subject" ControlToValidate="txtEmail" Display="None"></asp:RequiredFieldValidator>
        <br />
        <asp:Label ID="lblBody" runat="server" Text="Body:"></asp:Label>
        <asp:TextBox ID="txtBody" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqBodyField" runat="server" ErrorMessage="Body field is required" ControlToValidate="txtSubject" Display="None"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Button ID="btnSendEmail" runat="server" Text="Send Email" OnClick="btnSendEmail_Click" />
        <br />
        <br />
        <asp:Literal ID="litResult" runat="server"></asp:Literal>
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
