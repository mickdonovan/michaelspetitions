<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html>
<head>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <!-- Display the initial authentication page for the employee -->
    <meta charset="UTF-8">
    <title>Create a Petition</title>
    <link href="../style.css" rel="stylesheet" media="all"/>
</head>
<body>

<table>
    <tbody>
    <tr>
        <td><h1>Create a new petition for your important cause...</h1></td>
    </tr>
    </tbody>
</table>

<form id="createPetition" action="createPetition" method="post">
    <table style="border-color: #F0F0F0">
        <tbody>
            <tr>
            <td>
                <h3>Petition Title</h3>
                <input type="text" name="title" size = "50" style="font-family: 'Times New Roman'; font-size: medium" required>
            </td>
            </tr>
            <tr>
            <td>
                <h3>Description</h3>
                <textarea rows = "3" id = "description" cols = "50" name = "description" style="font-family: 'Times New Roman'; font-size: medium" required>
                </textarea>
            </td>
            </tr>
            <tr>
            <td>
                <button type="submit" value="Submit" name="enterPetition">Create the Petition</button>
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
            <form id="showPetitions" action="showPetitions" method="post">
                <button type="submit" value="Submit" name="showPetitions">Show Existing Petitions</button>
            </form>
        </td>
        <td>
            <form id="gotoQueryPetitions" action="gotoQueryPetitions" method="post">
                <button type="submit" value="Submit" name="gotoQueryPetitions">Query Existing Petitions</button>
            </form>
        </td>
    </tr>
    </tbody>
</table>

</body>
</html>
