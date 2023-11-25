
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <!-- Display the initial authentication page for the employee -->
    <meta charset="UTF-8">
    <title>Sign our Petition!!</title>
    <style> <%@include file="../style.css" %> </style>
</head>
<body>

<table style="border-style: none">
    <tbody>
    <tr>
        <td><h1>${chosenPetition.title}</h1></td>
    </tr>
    <tr>
        <td><h2>${chosenPetition.description}</h2></td>
    </tr>
    <tr>
        <td><h3>This is the list of current signatories...</h3></td>
    </tr>
    </tbody>
</table>

<table style="border: 1px solid black;">
    <thead>
    <tr style="border: 1px solid black;">
        <th style="border: 1px solid black;">Count</th>
        <th style="border: 1px solid black;">Name</th>
        <th style="border: 1px solid black;">Email</th>
    </tr>
    </thead>
<tbody>

<c:set var="i" value="1" />
<!-- Access customer details from the attribute 'customers' - the servlet ArrayLIst-->
<c:forEach items="${personList}" var="person">
    <tr style="border: 1px solid black;">
        <td style="border: 1px solid black;">${i}</td>
        <td style="border: 1px solid black;">${person.name}</td>
        <td style="border: 1px solid black;">${person.email}</td>
    </tr>
    <c:set var="i" value="${i+1}" />
</c:forEach>
</tbody>
</table>
<br>
<br>
<br>

<table style="border-style: none">
    <tbody>
    <tr>
        <td><h3>Please add your details to support this cause...</h3></td>
    </tr>
    </tbody>
</table>

<form id="sign" action="processSignature" method="post">
    <table style="border-style: none">
        <tbody>
        <tr>
            <td>
                <label>Full Name: </label>
                <input type="text" name="name" size = "50" required>
            </td>
            <td>
                <label>Email: </label>
                 <input type="text" name="email" size = "50" required>
            </td>
            <td>
              <button type="submit" value="Submit" name="submitSignature">Submit Signature</button>
            </td>
        </tr>
        </tbody>
    </table>
</form>
<br/>

<table style="border-style: none">
    <tbody>
    <tr>
        <td>
            <form id="gotoQueryPetitions" action="gotoQueryPetitions" method="post">
                <button type="submit" value="Submit" name="gotoQueryPetitions">Goto Query Petitions</button>
            </form>
        </td>
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

