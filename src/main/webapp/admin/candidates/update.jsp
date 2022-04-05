<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update candidate</title>
</head>
<body>
<h1>Update Candidates</h1>
 <c:url var="saveUpdate" value="CandidateControllerServlet">
   		<c:param name="action" value="saveupdate" />
   		<c:param name="candidate_id" value ="${CANDIDATE.candidateId}"/>;
   </c:url>



</form>
</body>
</html>