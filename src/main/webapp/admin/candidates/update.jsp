<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link type= "text/css" rel="stylesheet" href="admin/candidates/css/style.css">
<meta charset="ISO-8859-1">
<title>Update candidate</title>
</head>
<body>
<h2>Update candidate info</h2>

<c:url var="saveUpdate" value="CandidateControllerServlet">
		   		<c:param name="action" value="saveupdate" />
		   		<c:param name="candidate_id" value ="${CANDIDATE.candidateId}"/>;
		   	</c:url>  
			



<form action ="${saveUpdate }" method="POST">

		<input type="hidden" name="action" value="saveupdate"/>
		<input type="hidden" name="candidate_id" value="${CANDIDATE.candidateId}"/>
		
		<table>
			<tbody>		
				<tr>
					<td><label>Surname:</label></td>
					<td><input type="text" name="surname" value="${ CANDIDATE.surname}"/></td>
				</tr>
				
				<tr>
					<td><label>Firstname:</label></td>
					<td><input type="text" name="firstname"  value="${ CANDIDATE.firstname}"/></td>
				</tr>
				
				<tr>
					<td><label>Party:</label></td>
					<td><input type="text" name="party" value="${ CANDIDATE.party}"/></td>
				</tr>
				
				<tr>
					<td><label>Profession:</label></td>
					<td><input type="text" name="profession" value="${ CANDIDATE.profession}"/></td>
				</tr>
				
				<tr>
					<td><label>Age:</label></td>
					<td><input type="int"name="age"  value="${ CANDIDATE.age}"/></td>
				</tr>
				
				
				<tr>
					<td><label></label></td>
					<td><input type="submit" value="Update" class="save"/></td>
				</tr>
				
			</tbody>
		</table>
	</form>	
</body>
</html>