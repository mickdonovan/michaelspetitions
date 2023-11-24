
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
<form id="login" action="signPetition" method="post">
    <label>Full Name: </label>
    <input type="text" name="name" required>
    <br/>
    <label>Email: </label>
    <input type="text" name="email" required>
    <br>
    <button type="submit" value="Submit" name="enterPetition">Submit Signature</button>
</form>
<br>
 Show Petitions
</br>
<form id="showPetitions" action="showPetitions" method="post">
    <button type="submit" value="Submit" name="showPetitions">Show Current Signatures</button>
</form>

<form id="gotoQueryPetitions" action="gotoQueryPetitions" method="post">
    <button type="submit" value="Submit" name="gotoQueryPetitions">Goto Query Petitions</button>
</form>

</body>
</html>
