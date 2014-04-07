<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Traceyourroute_web_application._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="row">
        <div class="col-md-9">
        <h1>TRACE YOUR ROUTE</h1>
        <p class="lead">Application for creating, sharing, tracing and walking through the routes.</p>
        <p><a href="Create Route.aspx" class="btn btn-primary btn-large">Get Started &raquo;</a></p>
        </div>

        <div id="fb-root">
            <br />
        </div>
           
    <script>(function (d, s, id) {
    var js, fjs = d.getElementsByTagName(s)[0];
    if (d.getElementById(id)) return;
    js = d.createElement(s); js.id = id;
    js.src = "//connect.facebook.net/en_US/all.js#xfbml=1";
    fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
        <div class="fb-share-button" data-href="https://developers.facebook.com/docs/plugins/" data-type="button"></div>
    
    <div> 
        <br />
        <a href="https://twitter.com/share" class="twitter-share-button" data-dnt="true" data-count="none" data-via="twitterapi">Tweet</a>
    <script>!function (d, s, id) { var js, fjs = d.getElementsByTagName(s)[0]; if (!d.getElementById(id)) { js = d.createElement(s); js.id = id; js.src = "https://platform.twitter.com/widgets.js"; fjs.parentNode.insertBefore(js, fjs); } }(document, "script", "twitter-wjs");</script>
   </div>
  </asp:Content>
