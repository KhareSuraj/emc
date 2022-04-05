<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
  	<!-- set up a link far each candidate-->
  	<c:url var ="tempLink" value="CandidateControllerServlet">
  		<c:param name ="action" value = "LOAD"/>
  		<c:param name ="id" value ="${candidates.candidate_id }"/>
  	
  	</c:url>
  	
  	<tr>
  		<td> ${candidates.surname}</td>
  		<td> ${candidates.firstname}</td>
  		<td> ${candidates.party}</td>
  		<td> ${candidates.age}</td>
  		<td> ${candidates.party}</td>
  		<td> ${candidates.profession}</td>
  		<td><a href="${tempLink }">Update</a>
  		     | <a href ="">Delete</a>
  		
  		</td>
  	</tr>
  
  </c:forEach>
   </table>
</body>
</html>