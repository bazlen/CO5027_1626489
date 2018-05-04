<%@ Page Title="Adidas Sport Online BagPack" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="AdidasBagPackWebsite.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    Adidas
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Adidas BagPack
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    <asp:Repeater ID="ProductList" runat="server" DataSourceID="SqlDataSource1" OnItemCommand="ProductList_ItemCommand">

        <HeaderTemplate>
            <ul>
        </HeaderTemplate>

        <ItemTemplate>
            <div class="span4" style="display:inline-block;" runat="server">
               <div class="products">
                        <a href="<%#Eval("ProductId","Product.aspx?Id={0}") %>">
                            <asp:Image ID="Image1" runat="server" ImageUrl='<%#Eval("ProductDisplayImage") %>' Width="250px" Height="200px" />
                            <br />
                        <%#Eval("ProductName") %><p>Price:$<%#Eval("ProductPrice") %></p>
                        </a>
                </div>        
            </div>
        </ItemTemplate>

        <FooterTemplate></ul></FooterTemplate>
    </asp:Repeater>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626489_co5027_asgConnectionString3 %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [tblProduct] WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDetails] = @original_ProductDetails) OR ([ProductDetails] IS NULL AND @original_ProductDetails IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductDisplayImage] = @original_ProductDisplayImage) OR ([ProductDisplayImage] IS NULL AND @original_ProductDisplayImage IS NULL))" InsertCommand="INSERT INTO [tblProduct] ([ProductID], [ProductName], [ProductDetails], [ProductQuantity], [ProductPrice], [ProductDisplayImage]) VALUES (@ProductID, @ProductName, @ProductDetails, @ProductQuantity, @ProductPrice, @ProductDisplayImage)" UpdateCommand="UPDATE [tblProduct] SET [ProductName] = @ProductName, [ProductDetails] = @ProductDetails, [ProductQuantity] = @ProductQuantity, [ProductPrice] = @ProductPrice, [ProductDisplayImage] = @ProductDisplayImage WHERE [ProductID] = @original_ProductID AND (([ProductName] = @original_ProductName) OR ([ProductName] IS NULL AND @original_ProductName IS NULL)) AND (([ProductDetails] = @original_ProductDetails) OR ([ProductDetails] IS NULL AND @original_ProductDetails IS NULL)) AND (([ProductQuantity] = @original_ProductQuantity) OR ([ProductQuantity] IS NULL AND @original_ProductQuantity IS NULL)) AND (([ProductPrice] = @original_ProductPrice) OR ([ProductPrice] IS NULL AND @original_ProductPrice IS NULL)) AND (([ProductDisplayImage] = @original_ProductDisplayImage) OR ([ProductDisplayImage] IS NULL AND @original_ProductDisplayImage IS NULL))" ProviderName="<%$ ConnectionStrings:db_1626489_co5027_asgConnectionString3.ProviderName %>">
</asp:SqlDataSource>
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>