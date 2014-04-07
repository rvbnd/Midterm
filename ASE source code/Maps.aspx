<%@ Page Title="Create Your Route" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Maps.aspx.cs" Inherits="Traceyourroute_web_application.Create_Route" %>


<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     
       <!DOCTYPE html>
<html>
<head>
<meta charset=utf-8 />
<title>Places from Foursquare</title>

<meta name='viewport' content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no' />
<script src='https://api.tiles.mapbox.com/mapbox.js/v1.6.2/mapbox.js'></script>
<link href='https://api.tiles.mapbox.com/mapbox.js/v1.6.2/mapbox.css' rel='stylesheet' />


</head>
<body>
<script src='http://code.jquery.com/jquery-1.10.1.min.js'></script>
<div id='map' style="width:500px;height:500px; padding-right:initial"></div>
<script>
    var map = L.mapbox.map('map', 'examples.map-9ijuk24y', {
        attributionControl: true
    })
        .setView([40, -74.50], 10);

    // Credit Foursquare for their wonderful data
    map.attributionControl
        .addAttribution('<a href="https://foursquare.com/">Places data from Foursquare</a>');

    // Create a Foursquare developer account:
    // https://developer.foursquare.com/
    // AND CHANGE THESE VALUES TO YOUR OWN:
    // otherwise they can be cycled or deactivated with zero notice.
    var CLIENT_ID = '5KWW00ERAULKEZHCEHRWXKHGBGRGZ2AIK25W0K4GHYXNEJBK';
    var CLIENT_SECRET = 'Z34RBT15FGYILVUBP0EBQ1SNMKPJVVC11JWUF5KFH4AYMBEA';

    // https://developer.foursquare.com/start/search
    var API_ENDPOINT = 'https://api.foursquare.com/v2/venues/search' +
      '?client_id=CLIENT_ID' +
      '&client_secret=CLIENT_SECRET' +
      '&v=20130815' +
      '&ll=LATLON' +
      '&query=food' +
      '&callback=?';

    // Keep our place markers organized in a nice group.
    var foursquarePlaces = L.layerGroup().addTo(map);

    // Use jQuery to make an AJAX request to Foursquare to load markers
    // data.
    $.getJSON(API_ENDPOINT
        .replace('CLIENT_ID', CLIENT_ID)
        .replace('CLIENT_SECRET', CLIENT_SECRET)
        .replace('LATLON', map.getCenter().lat +
            ',' + map.getCenter().lng), function (result, status) {

                if (status !== 'success') return alert('Request to Foursquare failed');

                // Transform each venue result into a marker on the map.
                for (var i = 0; i < result.response.venues.length; i++) {
                    var venue = result.response.venues[i];
                    var latlng = L.latLng(venue.location.lat, venue.location.lng);
                    var marker = L.marker(latlng)
                      .bindPopup('<h2><a href="https://foursquare.com/v/' + venue.id + '">' +
                          venue.name + '</a></h2>')
                      .addTo(foursquarePlaces);
                }

            });
</script>
</body>
</html>
       
       <br />
       <br />
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Done" BackColor="Blue" BorderStyle="Solid" CausesValidation="False" Font-Bold="True" Font-Size="Medium" ForeColor="White" Width="81px" />
          
     <br />
    </asp:Content>

