<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link type= "text/css" rel="stylesheet" href="admin/candidates/css/style.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<div id ="wrapper">
		<div id="header">
		<h2>Candidate List</h2>
		
		</div>
	</div>
	<div id="Container">
	<div id="Content">
	
	<!-- Setup URL FOR add button -->
	<c:url var="add" value="CandidateControllerServlet">
		<c:param name ="command" value="add"/>
	</c:url>
	<a href="${add}">Add Candidate</a>
	
 <table>
	<tr>
  		<th>Surname</th>
  		<th>FirstName</th>
  		<th>Party</th>
  		<th>Age</th>
  		<th>Profession</th>
  		<th>Action</th>
  	</tr>
  	
  <c:forEach var="candidates" items="${CANDIDATES_LIST}">
  	
  	<tr>
  		<td> ${candidates.surname}</td>
  		<td> ${candidates.firstname}</td>
  		<td> ${candidates.party}</td>
  		<td> ${candidates.age}</td>
  		<td> ${candidates.profession}</td>
  		
  		<td><a href="">Update</a>|
  		
  		    <c:url var="delete" value="CandidateControllerServlet">
  		<c:param name="command" value="delete" />
  		<c:param name= "CandidateId" value="${candidates.candidateId}" />
  		</c:url>
  		<a href="${delete}">Delete</a>
  		</td>
  	</tr>
  
  </c:forEach>
   </table>
   	</div>
	
	</div>
</body>
</html>