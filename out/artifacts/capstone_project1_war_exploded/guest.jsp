<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="design.css" >
    <meta name="viewport" content="width-device-width, initial-scal-1.0">
    <title> Guest Login </title>
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
    <h1>Guest Login</h1>
    <p>You must log in first before you can search for a giftlist</p>
    <!-- Gets user input and checks to see if user credentials are correct. If successful the user is forwarded to the welcome page, if not then an error message appears -->
    <form action="/login2" method="POST">
        Username: <input type="text" name="host_name" pattern="^\S+$" required>
        <br /> </br>
        Password: <input type="password" name="host_password" pattern="^\S+$" required/>
        <br /> </br>
        <input type="submit" value="Login" />
    </form>
    <p style="color:red;">${errorMessage2}</p>
</div>

<!-- Footer containing links to allow user to view our social pages  -->
<div id="footer">
    Follow us on twitter: @GiftsGalore <a href="https://twitter.com"> <img src="images/twitter.jpg" alt="twitter"></a>  Follow us on Facebook: Gifts Galore <a href="https://facebook.com"> <img src="images/fb.jpg" alt="facebook"></a> Follow us on snapchat: gifts_galore <a href="https://snapchat.com"> <img src="images/snap.jpg" alt="snapchat"></a>
</div>

</body>
</html>
