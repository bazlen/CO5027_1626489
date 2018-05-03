<%@ Page Title="Adidas Online BagPack" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="AdidasBagPackWebsite.Product" %>
<asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    Product Details
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
    
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" HorizontalAlign="Center">
        <EditItemTemplate>
            ProductID:
            <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            ProductName:
            <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProductDetails:
            <asp:TextBox ID="ProductDetailsTextBox" runat="server" Text='<%# Bind("ProductDetails") %>' />
            <br />
            ProductQuantity:
            <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
            <br />
            ProductPrice:
            <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
            <br />
            ProductDisplayImage:
            <asp:TextBox ID="ProductDisplayImageTextBox" runat="server" Text='<%# Bind("ProductDisplayImage") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            ProductID:
            <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
            <br />
            ProductName:
            <asp:TextBox ID="ProductNameTextBox" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProductDetails:
            <asp:TextBox ID="ProductDetailsTextBox" runat="server" Text='<%# Bind("ProductDetails") %>' />
            <br />
            ProductQuantity:
            <asp:TextBox ID="ProductQuantityTextBox" runat="server" Text='<%# Bind("ProductQuantity") %>' />
            <br />
            ProductPrice:
            <asp:TextBox ID="ProductPriceTextBox" runat="server" Text='<%# Bind("ProductPrice") %>' />
            <br />
            ProductDisplayImage:
            <asp:TextBox ID="ProductDisplayImageTextBox" runat="server" Text='<%# Bind("ProductDisplayImage") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            <asp:Image ID="CurrentImage" runat="server" ImageUrl='<%# Eval("ProductDisplayImage") %>'  Height="200px"  Width="200px"/><br />
            <br />
            ProductID:
            <asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            ProductName:
            <asp:Label ID="ProductNameLabel" runat="server" Text='<%# Bind("ProductName") %>' />
            <br />
            ProductDetails:
            <asp:Label ID="ProductDetailsLabel" runat="server" Text='<%# Bind("ProductDetails") %>' />
            <br />
            ProductQuantity:
            <asp:Label ID="ProductQuantityLabel" runat="server" Text='<%# Bind("ProductQuantity") %>' />
            <br />
            ProductPrice:
            <asp:Label ID="ProductPriceLabel" runat="server" Text='<%# Bind("ProductPrice") %>' />
            <br />
             <asp:Label ID="lblQuantity" runat="server" Text="Quantity"></asp:Label>
            <asp:DropDownList ID="ddlQuantity" runat="server" OnSelectedIndexChanged="ddlQuantity_SelectedIndexChanged">
            <asp:ListItem Selected="True">1</asp:ListItem>
            <asp:ListItem>2</asp:ListItem>
            <asp:ListItem>3</asp:ListItem>
            </asp:DropDownList>
            
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:IdentityConnectionString %>" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [tblProduct] WHERE ([ProductID] = @ProductID)">
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="Id" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
       
    <asp:Button ID="btnPurchase" runat="server" Text="Buy Now" OnClick="btnPurchase_Click" Height="50px" Width="141px" />

    <br />
    <br />
    
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
