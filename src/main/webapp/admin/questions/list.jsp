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

	<!-- add a new button: add question -->
	<input type = "button" value="Add Question" 
	onclick ="window.location.href='add-question-form.jsp'; return false;"
	class ="add-question-button"
	/>
 <table>
	<tr>
  		<th>Question</th>
  		<th>Action</th>
  	</tr>
  	
  <c:forEach var="questions" items="${QUESTIONS_LIST}">
 
  	
  	<tr>
  		<td> ${questions.question} </td>
  		<td><a href="">Update</a>
  		     | <a href ="">Delete</a>
  		
  		</td>
  	</tr>
  
  </c:forEach>
   </table>
</body>
</html>