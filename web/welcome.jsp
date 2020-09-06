<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="design.css" >
    <title>Welcome Host</title>
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
            <li><a href="createGL.jsp">Create Giftlist</a></li>
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

<!-- Confirmation of successful login as a host-->
<div id="section">
    <h1>Welcome to Gifts Galore ${username}</h1> <img src="images/tick.jpg" alt="tick">
    <p>You have successfully logged in as a host and have access to exclusive features such as creating a giftlist. Please feel free to explore this website. </p> <!-- should get username from login.java doPost method -->
</div>

</body>
</html>

