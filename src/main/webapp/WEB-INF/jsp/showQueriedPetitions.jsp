<%--
  Created by IntelliJ IDEA.
  User: micha
  Date: 26/10/2023
  Time: 15:50
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!-- Display the initial authentication page for the employee -->
    <meta charset="UTF-8">
    <title>Sign our Petition!</title>
    <link href="../style.css" rel="stylesheet" media="all" />
</head>
<body>

<table style="border-style: none">
    <tbody>
    <tr>
        <td><h1>This is the list of petitions returned from your query...</h1></td>
    </tr>
    </tbody>
</table>

<br/>

<table border="1">
    <thead>
    <tr>
        <th>#</th>
        <th>Name</th>
        <th>Description</th>
        <th>Link to Petition</th>
    </tr>
    </thead>
    <tbody>
    <c:set var="i" value="1" />
    <!-- Access customer details from the attribute 'customers' - the servlet ArrayLIst-->
    <c:forEach items="${queryOutput}" var="petition">
        <tr>
            <td>${i}</td>
            <td>${petition.title}</td>
            <td>${petition.description}</td>
            <td><a href=/signPetition?petitionId=${petition.id}>Sign Petition</a></td>
        </tr>
        <c:set var="i" value="${i+1}" />
    </c:forEach>
    </tbody>
</table>
</br>

<table style="border-style: none">
    <tbody>
    <tr>
        <td>
        <form id="returnHome" action="returnHome" method="post">
            <button type="submit" value="Submit" name="returnHome">Return to Home Page</button>
        </form>
        </td>
    </tr>
    </tbody>
</table>

</body>
</html>
