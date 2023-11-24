
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!-- Display the initial authentication page for the employee -->
    <meta charset="UTF-8">
    <title>Query Petitions</title>
    <style> <%@include file="../style.css" %> </style>
</head>

<table style="border-style: none">
    <tbody>
    <tr>
        <td><h1>Enter Query Parameters Please</h1></td>
    </tr>
    </tbody>
</table>

<body>
<form id="login" action="queryPetitions" method="post">
    <table style="border-style: none">
        <tbody>
        <tr>
            <td>
                <label>Part of the Petition Name: </label>
                <input type="text" name="title" size = "50" required>
            </td>
            <td>
                <button type="submit" value="Submit" name="submitQuery">Submit Query</button>
            </td>
        </tr>
        </tbody>
    </table>
</form>
<br>
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
