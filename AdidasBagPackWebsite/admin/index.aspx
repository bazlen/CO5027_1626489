<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="AdidasBagPackWebsite.admin.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
    Admin Page
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Welcome to admin panel
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
        <p>Default page for admin</p>
        <p>
            <asp:Button ID="btnProductSummary" runat="server" Text="Product Summary" OnClick="btnProductSummary_Click" />
            <asp:Button ID="btnAdd" runat="server" Text="Add Product" OnClick="btnAdd_Click" />
            <asp:Button ID="btnEdit" runat="server" Text="Edit Product" OnClick="btnEdit_Click" />
            <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
        </p>
    </form>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
