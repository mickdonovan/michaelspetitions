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
    <title>List all Petitions</title>
    <style> <%@include file="../style.css" %> </style>
</head>
<body>

<table style="border-style: none">
    <tbody>
    <tr>
        <td><h1>This is the Current List of Petitions</h1></td>
    </tr>
    </tbody>
</table>

<br/>
<table style="border: 1px solid black;">
    <thead>
    <tr style="border: 1px solid black;">
        <th style="border: 1px solid black;">Count</th>
        <th style="border: 1px solid black;">Title</th>
        <th style="border: 1px solid black;">Description</th>
        <th style="border: 1px solid black;">Link to Petition</th>
    </tr>
    </thead>
    <tbody>

    <c:set var="i" value="1" />
    <!-- Access customer details from the attribute 'customers' - the servlet ArrayLIst-->
    <c:forEach items="${petitionList}" var="petition">
        <tr style="border: 1px solid black;">
            <td style="border: 1px solid black;">${i}</td>
            <td style="border: 1px solid black;">${petition.title}</td>
            <td style="border: 1px solid black;">${petition.description}</td>
            <td style="border: 1px solid black;"><a href=/signPetition?petitionId=${petition.id}>Sign Petition</a></td>
        </tr>
        <c:set var="i" value="${i+1}" />
    </c:forEach>
    </tbody>
</table>

<table>
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
