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
    <title> Search Giftlist </title>
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
            <li><a href="searchGL.jsp">Search for Giftlist</a></li>
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

    <h1>Search Giftlist</h1>

    <!-- Search bar to search by reference number and a button to sort by reference number -->
    <input type="text" id="myInput" size="30" onkeyup="myFunction()" placeholder="Search for Gift Reference Number..." title="Type reference number">
    <p><button onclick="sortTable()">Sort by reference number</button></p>

    <!-- Connection being made to project database -->
    <sql:setDataSource var = "dbg" driver = "com.mysql.jdbc.Driver"
                       url = "jdbc:mysql://localhost/project?serverTimezone=EST5EDT"
                       user = "projectuser"  password = "test123"/>

    <!-- Query carried out to obtain all gift-lists from the lists table -->
    <sql:query dataSource = "${dbg}" var = "result">
        SELECT * from lists;
    </sql:query>

    <!-- Table which displays all the gifts -->
    <table border="1" width="100%" id="myTable">
        <tr>
            <th>Giftlist Reference Number</th>
            <th>Gift Code</th>
            <th>Price</th>
            <th>Quantity</th>
            <th>Total Price</th>
            <th>Buy Now</th>
        </tr>

        <!-- Each row displays a different bit of information stored for each giftlist -->
        <c:forEach var = "row" items = "${result.rows}">
            <tr>
                <td><c:out value = "${row.list_id}"/></td>
                <td><c:out value = "${row.gift_code}"/></td>
                <td><c:out value = "${row.price}"/></td>
                <td><c:out value = "${row.quantity}"/></td>
                <td><c:out value = "£${row.total_price}"/></td>
                <td><a href="${row.link}">HERE</a></td>
            </tr>
        </c:forEach>

    </table>

    <script>
        //function called by search bar to search for a specific gift-list by reference number
        function myFunction() {
            var input, filter, table, tr, td, i, txtValue;
            input = document.getElementById("myInput");
            filter = input.value;
            table = document.getElementById("myTable");
            tr = table.getElementsByTagName("tr");
            for (i = 0; i < tr.length; i++) {
                td = tr[i].getElementsByTagName("td")[0];
                if (td) {
                    txtValue = td.textContent || td.innerText;
                    if (txtValue.toUpperCase().indexOf(filter) > -1) {
                        tr[i].style.display = "";
                    } else {
                        tr[i].style.display = "none";
                    }
                }
            }
        }

        //function called by button to sort by gift-list reference number
        function sortTable() {
            var table, rows, switching, i, x, y, shouldSwitch;
            table = document.getElementById("myTable");
            switching = true;
            /*Make a loop that will continue until
            no switching has been done:*/
            while (switching) {
                //start by saying: no switching is done:
                switching = false;
                rows = table.rows;
                /*Loop through all table rows (except the
                first, which contains table headers):*/
                for (i = 1; i < (rows.length - 1); i++) {
                    //start by saying there should be no switching:
                    shouldSwitch = false;
                    /*Get the two elements you want to compare,
                    one from current row and one from the next:*/
                    x = rows[i].getElementsByTagName("TD")[0];
                    y = rows[i + 1].getElementsByTagName("TD")[0];
                    //check if the two rows should switch place:
                    if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                        //if so, mark as a switch and break the loop:
                        shouldSwitch = true;
                        break;
                    }
                }
                if (shouldSwitch) {
                    /*If a switch has been marked, make the switch
                    and mark that a switch has been done:*/
                    rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                    switching = true;}}}
    </script>
</div>

<!-- Footer containing links to allow user to view our social pages  -->
<div id="footer">
    Follow us on twitter: @GiftsGalore <a href="https://twitter.com"> <img src="images/twitter.jpg" alt="twitter"></a>  Follow us on Facebook: Gifts Galore <a href="https://facebook.com"> <img src="images/fb.jpg" alt="facebook"></a> Follow us on snapchat: gifts_galore <a href="https://snapchat.com"> <img src="images/snap.jpg" alt="snapchat"></a>
</div>

</body>
</html>