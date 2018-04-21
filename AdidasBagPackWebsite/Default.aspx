<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AdidasBagPackWebsite.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Adidas
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Adidas Bag Pack
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <div class="left-set">
            <img src="image/CW0627_01_standard.jpg" / width="200">
            <img src="image/CW0629_01_standard.jpg" / width="200">
            <img src="image/CW0630_01_standard.jpg" / width="200">
        </div>

         <div class="left-set">
            <img src="image/CW0631_01_standard.jpg" / width="200">
            <img src="image/CW0633_01_standard.jpg" / width="200">
            <img src="image/CW0634_01_standard.jpg" / width="200">
        </div>
    <asp:Repeater ID="ProductList" runat="server" DataSourceID="SqlDataSource1">
        <HeaderTemplate><ul></HeaderTemplate>

        <ItemTemplate>
            <li>
                <a href="<%#Eval("ProductId","Product.aspx?Id={0}") %>">
                    <%#Eval("ProductName") %>
                </a>
            </li>
        </ItemTemplate>

        <FooterTemplate></ul></FooterTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626489_co5027_asgConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct]">
</asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
