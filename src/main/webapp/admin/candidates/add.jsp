<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>

<head> 
	<title> Add Candidate</title>
	<link type= "text/css" rel="stylesheet" href="admin/candidates/css/style.css">
	<link type= "text/css" rel="stylesheet" href="admin/candidates/css/add-candidate-style.css">

</head>
<body>
	<div id="wrapper">
		<div id="header">
			<h2>Candidate List </h2>
		</div>
	</div>
	
	<div id="container">
	<h3>Add Candidate</h3>
	
	<c:url var= "saveCandidate" value="CandidateControllerServlet">'
		<c:param name="action" value ="insert"/>
	</c:url>
	<form action ="${saveCandidate}" method="post">
		<table>
			<tbody>
				<tr>
					<td><label>Surname:</label></td>
					<td><input type="text" name="surname"/></td>
				</tr>
				
				<tr>
					<td><label>Firstname:</label></td>
					<td><input type="text" name="firstname"/></td>
				</tr>
				
				<tr>
					<td><label>Party:</label></td>
					<td><input type="text" name="party"/></td>
				</tr>
				
				<tr>
					<td><label>Profession:</label></td>
					<td><input type="text" name="profession"/></td>
				</tr>
				
				<tr>
					<td><label>Age:</label></td>
					<td><input type="int"name="age"/></td>
				</tr>
				
				<tr>
					<td><label>Username:</label></td>
					<td><input type="text" name="username"/></td>
				</tr>
				
				<tr>
					<td><label>Password:</label></td>
					<td><input type="text" name="password"/></td>
				</tr>
				
				<tr>
					<td><label></label></td>
					<td><input type="submit" value="Save" class="save"/></td>
				</tr>
				
			</tbody>
		</table>
	</form>
	
	<div style="clear: both;"></div>
	<p>
		<a href="CandidateControllerServlet">Back to Candidate List</a>
	</p>
	</div>
</body>

</html>








