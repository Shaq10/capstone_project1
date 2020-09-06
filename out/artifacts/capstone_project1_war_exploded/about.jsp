<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="design.css" >
    <meta name="viewport" content="width-device-width, initial-scal-1.0">
    <title> About </title>
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

<div id="section">
    <h1>About</h1>
    <!-- Information about different aspects of the company and website -->
    <section>
        <div class="profile-image">
            <a href="https://www.facebook.com">
                <img class="displayed" src="images/list.jpg" alt="Party"> <!-- Image used to display on page -->
            </a>
            <p><b>Services we offer: </b><br/>
                Hosts can create giftlists, selecting from items which are currently on display. Guests can search for giftlists using the giftlist reference number
            </p>
        </div>
        <br/>
        <div class="profile-image">
            <a href="">
                <img class="displayed" src="images/party.jpg" alt="Info">
            </a>
            <p><b>Information about website: </b><br/>Take your time to explore our website. As well as providing the services mentioned above, we have login pages and contact details. Our social media accounts can also be found
            below in the header. We'd love to hear back from you.
            </p>
        </div>
        <br/>
        <div class="profile-image">
            <a href="">
                <img class="displayed" src="images/pres.jpg" alt="Gift" >
            </a>
            <p><b>Information about company: </b><br/>Gifts Galore was founded in 2013 by a brother and a sister.
                It has been a provider of giftlists for the past 5 years but has only recently created a website to allow customers to do so.They have 3 branches located across London and have recently opened a branch in Colchester, Essex.
            </p>
        </div>
    </section>
</div>

<!-- Footer containing links to allow user to view our social pages  -->
<div id="footer">
    Follow us on twitter: @GiftsGalore <a href="https://twitter.com"> <img src="images/twitter.jpg" alt="twitter"></a>  Follow us on Facebook: Gifts Galore <a href="https://facebook.com"> <img src="images/fb.jpg" alt="facebook"></a> Follow us on snapchat: gifts_galore <a href="https://snapchat.com"> <img src="images/snap.jpg" alt="snapchat"></a>
</div>

</body>
</html>
