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
  		<th>Question</th>
  		<th>Action</th>
  	</tr>
  	
  <c:forEach var="questions" items="${QUESTIONS_LIST}">
 
   <!-- Setup a URL for update button -->
   <c:url var="update" value="QuestionControllerServlet">
   		<c:param name="action" value="update" />
   		<c:param name="id" value ="${questions.questionId}"/>;  /questions/?action=update&id=1
   </c:url>
  	
  	<tr>
  		<td> ${questions.question} </td>
  		<td><a href="${update}">Update</a>
  		     | <a href ="">Delete</a>
  		
  		</td>
  	</tr>
  
  </c:forEach>
   </table>
</body>
</html>