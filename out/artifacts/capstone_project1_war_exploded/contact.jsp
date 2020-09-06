<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="design.css" >
    <meta name="viewport" content="width-device-width, initial-scal-1.0">
    <title> Contact </title>
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

<!-- Company contact details displayed in legend boxes -->
<div id="section">
    <h1>Contact</h1>
    <fieldset style="text-align:right;">
        <legend><b>E-mail Address Details</b></legend>
        Personal E-mail (out of hours): sthomam@essex.ac.uk <br />
        Company E-mail: GiftsGalore@gmail.com<br />
    </fieldset>
    <fieldset style="text-align:right;">
        <legend><b>Address Details</b></legend>
        GIFTS GALORE LTD<br/>
        1 ESSEX UNI DRIVE<br/>
        COLCHESTER<br/>
        ESSEX<br/>
        CO2 8GY<br/>
    </fieldset>
    <fieldset style="text-align:right;">
        <legend><b>Phone Number</b></legend>
        Landline: +44 (0)1206 873333 <br />
        Mobile Number: +44 (0)7243 696201<br />
    </fieldset>
</div>

<!-- Footer containing links to allow user to view our social pages  -->
<div id="footer">
    Follow us on twitter: @GiftsGalore <a href="https://twitter.com"> <img src="images/twitter.jpg" alt="twitter"></a>  Follow us on Facebook: Gifts Galore <a href="https://facebook.com"> <img src="images/fb.jpg" alt="facebook"></a> Follow us on snapchat: gifts_galore <a href="https://snapchat.com"> <img src="images/snap.jpg" alt="snapchat"></a>
</div>

</body>
</html>
