<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="UploadImage.aspx.cs" Inherits="AdidasBagPackWebsite.admin.UploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <form id="form1" runat="server">
        <asp:FileUpload ID="imageFileUploadControl" runat="server" />
        <br />
        <asp:Image ID="CurrentImage" runat="server" Height="100px" Width="100px" />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Upload" OnClick="Button1_Click" />
    </form>

</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
