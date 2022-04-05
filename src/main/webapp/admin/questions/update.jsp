<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Question</title>
</head>
<body>
<h2>Update Question</h2>

<!-- Setup a URL for form submit action -->
   <c:url var="saveUpdate" value="QuestionControllerServlet">
   		<c:param name="action" value="saveupdate" />
   		<c:param name="id" value ="${QUESTION.questionId}"/>;
   </c:url>
   
<form action="${saveUpdate}" method="post">
	<label for ="question">Question:</label>
	<input type="text" name ="question" size="50" value ="${QUESTION.question}"> <br><br>
	
	<input type="submit" value="Submit">

</form>

</body>
</html>