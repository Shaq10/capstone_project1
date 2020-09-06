<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="design.css" >
    <meta name="viewport" content="width-device-width, initial-scal-1.0">
    <title> Homepage </title>
</head>
<body>
<script>
    // Validation of mobile and house number
    function isNumber(evt) {
        var xKeyCode = (evt.which) ? evt.which : evt.keyCode ;
        if (xKeyCode != 46 && xKeyCode > 31 && (xKeyCode < 48 || xKeyCode > 57))
            return false;

        return true;
    }
</script>

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

<!-- Form which gets the user's details and login credentials -->
<div id="section">
    <h1>Registration</h1>
    <form action="register1.jsp" method="GET">
        Username: <input type="email" name="host_name" pattern="^\S+$" required>
        <br /> </br>
        Password: <input type="password" name="host_password" pattern="^\S+$" required />
        <br /> </br>
        Forename: <input type="text" name="f_name" pattern="^\S+$" required>
        Surname: <input type="text" name="s_name" pattern="^\S+$" required>
        <br /> </br>
        Gender: <input type="radio" name="gender" value="M" required> Male
        <input type="radio" name="gender" value="F"> Female
        <br /> </br>
        House Number: <input type="text" name="house_num" size="3" onkeypress="javascript:return isNumber(event)" required>
        Road: <input type="text" name="road" required>
        <br /> </br>
        City: <input type="text" name="city" required>
        <br /> </br>
        Postcode: <input type="text" name="postcode" size="5" required>
        Country: <input type="text" name="country" required>
        <br /> </br>
        Mobile: <input type="text" name="mobile" maxlength="11" onkeypress="javascript:return isNumber(event)" required>
        <br /> </br>
        DOB: <input type="date" name="dob" required>
        <br /> </br>
        <input type="submit" value="Submit"/>
    </form>
</div>

<!-- Footer containing links to allow user to view our social pages  -->
<div id="footer">
    Follow us on twitter: @GiftsGalore <a href="https://twitter.com"> <img src="images/twitter.jpg" alt="twitter"></a>  Follow us on Facebook: Gifts Galore <a href="https://facebook.com"> <img src="images/fb.jpg" alt="facebook"></a> Follow us on snapchat: gifts_galore <a href="https://snapchat.com"> <img src="images/snap.jpg" alt="snapchat"></a>
</div>

</body>
</html>
