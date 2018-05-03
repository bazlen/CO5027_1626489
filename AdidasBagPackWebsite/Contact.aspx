<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="AdidasBagPackWebsite.Contact" %>

    <asp:Content ID="Content1" ContentPlaceHolderID="title" runat="server">
    </asp:Content>
    <asp:Content ID="Content2" ContentPlaceHolderID="heading1" runat="server">
    </asp:Content>
    <asp:Content ID="Content3" ContentPlaceHolderID="heading2" runat="server">
    </asp:Content>
    <asp:Content ID="Content4" ContentPlaceHolderID="maincontent" runat="server">
       
            <h3>Send us Emails</h3>
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        <asp:Label ID="lblEmail" runat="server" Text="Email:"></asp:Label>
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="regEmailField" runat="server" ErrorMessage="Email is not in Valid format" ControlToValidate="txtEmail" Display="None" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="reqEmailField" runat="server" ErrorMessage="Please enter your email!" ControlToValidate="txtEmail" Display="None"></asp:RequiredFieldValidator>
            <br />
        <br />
        <asp:Label ID="lblSubject" runat="server" Text="Subject:"></asp:Label>
        <asp:TextBox ID="txtSubject" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="reqSubjectField" runat="server" ErrorMessage="Please enter your Subject" ControlToValidate="txtEmail" Display="None"></asp:RequiredFieldValidator>
            <br />
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
        <br />
      
    
</asp:Content>

<asp:Content ID="Content5" runat="server" ContentPlaceHolderID="GoogleMap">

     <div id="map"></div>
    <script>
        var map;
        function initMap() {


            var collegeLatLng = { lat: 4.885731, lng: 114.931669 };
            var map = new google.maps.Map(document.getElementById('map'), {
                zoom: 19,
                center: collegeLatLng
            });

            var contentString1 = '<div id="content">' +
                '<div id="siteNotice">' +
                '</div>' +
                '<h1 id="firstHeading" class="firstHeading">Laksamana College of Business</h1>' +
                '<div id="bodyContent">' +
                '<p><b>College located here!</b></p>' +
                '</div>' +
                '</div>';

            var infowindow1 = new google.maps.InfoWindow({
                content: contentString1
            });


            var marker1 = new google.maps.Marker({
                position: collegeLatLng,
                map: map,
                title: 'Laksamana College of Business'
            });
            marker1.addListener('click', function () {
                infowindow1.open(map, marker1);
            });
        }
    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDp19uaXzLmZhVGIfC4BV0qUaOaNncE6G4&callback=initMap"
    async defer></script>
</asp:Content>

