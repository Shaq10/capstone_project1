<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@page import="java.util.*" %>
<%@ page import="java.text.DecimalFormat" %>

<%
    //Creation of a random 9 digit number for the gift-list reference number
    Random rand = new Random();
    int n = rand.nextInt(900000000) + 100000000;

    //Calculation of total price
    double pp = Integer.parseInt(request.getParameter( "list_quantity" ))  *  Double.parseDouble(request.getParameter( "price" ));
    DecimalFormat newFormat = new DecimalFormat("#.##");
    double total_price =  Double.valueOf(newFormat.format(pp));
%>

<html>
<head>
    <!-- Internal CSS -->
    <style>
        #outer {
            display: flex;
            width: 150px;
        }

        #size{
            width: 250px;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="design.css" >
    <meta name="viewport" content="width-device-width, initial-scal-1.0">
    <title> Giftlist Confirmation </title>
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

<div id="section">

    <!-- Connection being made to project database -->
    <sql:setDataSource var = "dbg" driver = "com.mysql.jdbc.Driver"
                       url = "jdbc:mysql://localhost/project?serverTimezone=EST5EDT"
                       user = "projectuser"  password = "test123"/>

    <!-- Out of stock message if stock equals 0 -->
    <%
        if (request.getParameter("stock").equals("0")) {
    %>
    <h2> Sorry item is out of stock. </h2>
    <%  } else {
    %>

    <!-- Gift-list confirmaion details -->
    <h2>The following has been added to the giftlist:
        <%= request.getParameter( "list_quantity" ) %> x gift
        <%= request.getParameter( "gift_code" ) %> at a price of
        £<%= request.getParameter( "price" ) %> </h2>

    <!-- Total price calculated earlier is displayed here -->
    <h3>The total price of this is £<%=total_price%> </h3>

    <!-- 9 digit reference number assigned to created gift-list -->
    <p>Your Giftlist reference number is: <%=n%></p>

    <!-- New gift-list is added into lists table of the database -->
    <sql:update dataSource = "${dbg}" var="result">
        INSERT INTO lists (list_id, gift_code, price, quantity, total_price, link) VALUES(?, ?, ?, ?, ?, ?)
        <sql:param value="<%=n%>" />
        <sql:param value="${param.gift_code}" />
        <sql:param value="${param.price}" />
        <sql:param value="${param.list_quantity}" />
        <sql:param value="<%=total_price%>" />
        <sql:param value="${param.link}" />
    </sql:update>

    <!-- Stock of item added to gift-list is updated within the table -->
    <sql:update dataSource = "${dbg}" var="count">
        update gifts
        set stock = stock - <%= request.getParameter( "list_quantity" ) %>
        where gift_code="<%= request.getParameter( "gift_code" ) %>";
    </sql:update>

    <% } %>

</div>

<!-- Footer containing links to allow user to view our social pages  -->
<div id="footer">
    Follow us on twitter: @GiftsGalore <a href="https://twitter.com"> <img src="images/twitter.jpg" alt="twitter"></a>  Follow us on Facebook: Gifts Galore <a href="https://facebook.com"> <img src="images/fb.jpg" alt="facebook"></a> Follow us on snapchat: gifts_galore <a href="https://snapchat.com"> <img src="images/snap.jpg" alt="snapchat"></a>
</div>

</body>
</html>
