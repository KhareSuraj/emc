<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a question</title>
</head>
<body>
 <h3>Add a Question</h3>
 	<!-- Setup URL for ADD QUESTION BUTTON -->
	<c:url var="insert" value="QuestionControllerServlet">
		<c:param name="action" value="insert"/>
	</c:url>
 <form action="QuestionControllerServlet" method = "post">
 
 	<table>
 	<tr>
	 	<td>Question:</td>
	 	<td><input type ="text" name="question"/></td>
	 </tr>
	 <tr>
	 	<td><input type ="submit" value="save" class="save" /></td>
	 </tr>
 	</table>
 </form>
 <p>
 	<a href="QuestionControllerServlet">Back to the list</a>
 </p>
 
</body>
</html>