<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta name="viewport" content="width-device-width, initial-scal-1.0">
    <title> Successful Registration </title>
<style>
    body {
        background-color: yellow;
    }
</style>
</head>
<body>
<!-- Confirmation message and button to return to login page -->
<div id="cen">
    <h1>Registered</h1>
    <p> Welcome to Gifts Galore <%= request.getParameter( "host_name" ) %>, <br/> You have successfully registered your details. </p>
    <input type="button" onclick="location.href='host.jsp';" value="Return to login page" />

    <!-- Connection being made to project database -->
    <sql:setDataSource var = "dbg" driver = "com.mysql.jdbc.Driver"
                       url = "jdbc:mysql://localhost/project?serverTimezone=EST5EDT"
                       user = "projectuser"  password = "test123"/>

    <!-- Insertion of new registration details into the hosts table of the database -->
    <sql:update dataSource = "${dbg}" var="result">
        INSERT INTO hosts (host_name, host_password, f_name, s_name, gender, house_num, road, city, postcode, country, mobile, dob) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)
        <sql:param value="${param.host_name}" />
        <sql:param value="${param.host_password}" />
        <sql:param value="${param.f_name}" />
        <sql:param value="${param.s_name}" />
        <sql:param value="${param.gender}" />
        <sql:param value="${param.house_num}" />
        <sql:param value="${param.road}" />
        <sql:param value="${param.city}" />
        <sql:param value="${param.postcode}" />
        <sql:param value="${param.country}" />
        <sql:param value="${param.mobile}" />
        <sql:param value="${param.dob}" />
    </sql:update>

</div>

</body>
</html>
