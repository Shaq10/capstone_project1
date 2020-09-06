<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <link rel="stylesheet" type="text/css" href="design.css" >
  <meta name="viewport" content="width-device-width, initial-scal-1.0">
  <title> Homepage </title>
</head>

<body>

<!-- Top navigation bar -->
<div id="header">
  <nav>
    <ul>
      <li><a href="#login">Login</a>
        <ul>
            <li><a href="host.jsp"> Host</a></li>
            <li><a href="guest.jsp"> Guest</a></li>
            <li><a href="register.jsp"> Register</a></li>
        </ul>
      </li>
      <li><a href="contact.jsp">Contact</a></li>
      <li><a href="guest.jsp">Search for Giftlist</a></li>
      <li><a href="host.jsp">Create Giftlist</a></li>
      <li><a href="about.jsp">About</a></li>
      <li><a href="index.jsp">Home</a></li>
    </ul>
  </nav>
</div>

<!-- Side navigation bar -->
<div id = "sidebar">
  <p style="font-size:120%;">Browse</p>
  <ul>
    <li><a href="">Baby gifts</a></li>
    <li><a href="">Child gifts</a></li>
    <li><a href="">Teen gifts</a></li>
    <li><a href="">Adult gifts</a></li>
  </ul>
</div>

<!-- Picture of present and welcome message are displayed -->
<div id="section">
  <h1>Homepage</h1>
  Welcome to Gifts Galore! Feel free to create or search giftlists.
  <br/>
  Please use the menu to navigate across our website.
  <br/> <br/>
  <img src="images/gift.jpg" alt="gift image" width="450" height="450">
</div>

<!-- Footer containing links to allow user to view our social pages  -->
<div id="footer">
  Follow us on twitter: @GiftsGalore <a href="https://twitter.com"> <img src="images/twitter.jpg" alt="twitter"></a>  Follow us on Facebook: Gifts Galore <a href="https://facebook.com"> <img src="images/fb.jpg" alt="facebook"></a> Follow us on snapchat: gifts_galore <a href="https://snapchat.com"> <img src="images/snap.jpg" alt="snapchat"></a>
</div>

</body>
</html>
