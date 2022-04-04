<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add a question</title>
</head>
<body>
 <h3>Add a Question</h3>
 <form action="QuestionControllerServlet" method = "GET">
 	<input type ="hidden" name="command" value="ADD" />
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