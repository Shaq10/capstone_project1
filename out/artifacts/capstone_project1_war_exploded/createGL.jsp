<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <!--internal css -->
    <style>
        #outer {
            display: flex;
            width: 150px;
        }

        #size{
            width: 250px;
        }
        #central{
            text-align:center;
        }
    </style>
    <link rel="stylesheet" type="text/css" href="design.css" >
    <meta name="viewport" content="width-device-width, initial-scal-1.0">
    <title> Create Giftlist </title>
</head>

<body>


<script>
    //function called by plus button to increase the quantity of an item being added to a gift-list
    function plus(elem){
        let targetElem = elem.parentNode.previousElementSibling.childNodes[0];
        let targetCount = parseInt(targetElem.value);
        targetCount++;
        targetElem.value = targetCount;
    }

    //function called by plus button to increase the quantity of an item being added to a gift-list
    function minus(elem){
        let targetElem = elem.parentNode.nextElementSibling.childNodes[0];
        let targetCount = parseInt(targetElem.value);
        if (targetCount > 1) {
            targetCount--;
            targetElem.value = targetCount;
        }
    }

    let c1 = document.querySelector("#count1");
    let c2 = document.querySelector("#count2");

    c1.keyup = function(){
        c2.type = "text";
        c2.value = c1.value;
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

    <h1>Create Giftlist</h1>

    <!-- Connection being made to project database -->
    <sql:setDataSource var = "dbg" driver = "com.mysql.jdbc.Driver"
                       url = "jdbc:mysql://localhost/project?serverTimezone=EST5EDT"
                       user = "projectuser"  password = "test123"/>

    <!-- Query carried out to obtain all gifts from the gifts table -->
    <sql:query dataSource = "${dbg}" var = "result">
        SELECT * from gifts;
    </sql:query>

    <!-- Table which displays all the gifts -->
    <table border="1" width="100%">
        <tr>
            <th>Code</th>
            <th>Name</th>
            <th></th>
            <th>Supplier</th>
            <th>Description</th>
            <th>Price</th>
            <th>Number in stock</th>
        </tr>

        <!-- Each row displays a different bit of information stored for each gift -->
        <c:forEach var = "row" items = "${result.rows}">
            <tr>
                <td><c:out value = "${row.gift_code}"/></td>
                <td><c:out value = "${row.gift_name}"/></td>
                <td><img src="${row.image}" width=100px; height=80px/></td>
                <td><c:out value = "${row.supplier}"/></td>
                <td><div id="size"><c:out value = "${row.description}"/></div></td>
                <td><c:out value = "£${row.price}"/></td>
                <td><div id="central"><c:out value = "${row.stock}" /></div></td>

                <!-- HTTP GET Request obtains values from form to send to the next page -->
                    <form action="list.jsp" method="GET">
                        <td><div id="outer">
                            <!-- Function called which allows host to change the quantity -->
                        <div><button type="button" name="button"onclick="minus(this)"><img src="images/minus.jpg" alt="minus" height="20px" width="10px"/></button></div>
                        <div><input type="text" name="list_quantity" value="1" size="3" id="count1" style="text-align:center;"></div>
                        <div><button type="button" name="button"onclick="plus(this)"><img src="images/plus.jpg" alt="plus" height="20px" width="10px"/></button></div>
                        </div>
                        </td>
                        <td>
                        <input type = "hidden" name = "gift_code"
                               value = "${row.gift_code}" />
                        <input type = "hidden" name = "price"
                               value = "${row.price}" />
                        <input type = "hidden" name = "stock"
                               value = "${row.stock}" />
                        <input type = "hidden" name = "link"
                               value = "${row.link}" />
                        <input type = "submit" value = "Add to giftlist" />
                        </td>
                    </form>

            </tr>
        </c:forEach>

    </table>
</div>

<!-- Footer containing links to allow user to view our social pages  -->
<div id="footer">
    Follow us on twitter: @GiftsGalore <a href="https://twitter.com"> <img src="images/twitter.jpg" alt="twitter"></a>  Follow us on Facebook: Gifts Galore <a href="https://facebook.com"> <img src="images/fb.jpg" alt="facebook"></a> Follow us on snapchat: gifts_galore <a href="https://snapchat.com"> <img src="images/snap.jpg" alt="snapchat"></a>
</div>

</body>
</html>