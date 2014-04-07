<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.Master" CodeBehind="Create Route.aspx.cs" Inherits="Traceyourroute_web_application.Create_Route1" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <h2><%: Title %></h2>
    <h3>Create Your Own Route</h3>
    <h3>Start City Name<asp:TextBox ID="TextBox1" runat="server" Height="28px" Width="190px"></asp:TextBox>
    </h3>
    <h3>Destination City Name<asp:TextBox ID="TextBox5" runat="server" Height="28px" Width="190px"></asp:TextBox>
    </h3>
    <h3>Description for the route<asp:TextBox ID="TextBox4" runat="server" Height="28px" Width="190px"></asp:TextBox>
    </h3>
    <h3>Price<asp:TextBox ID="TextBox3" runat="server" Height="28px" Width="190px"></asp:TextBox>
    </h3>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <script>
        var geocoder = new google.maps.Geocoder();
        var address = document.getElementById("TextBox1.Value").value;
        geocoder.geocode({ 'address': address }, function (results, status) {
            if (status == google.maps.GeocoderStatus.OK) {
                // do something with the geocoded result
                //
                // results[0].geometry.location.latitude
                // results[0].geometry.location.longitude
            }
        });
    </script>
    <p><a href="Maps.aspx" class="btn btn-primary btn-large">Create Route &raquo; &raquo;</a></p>
</asp:Content>
