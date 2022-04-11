 <%@ include file= "/incl/head.jsp" %>
 
 <%@ include file= "/incl/header.jsp" %>

 <%@ include file= "/incl/sidebar.jsp" %>
 
<!-- Setup a URL for form submit action -->
   <c:url var="saveUpdate" value="/admin/questions">
   		<c:param name="action" value="saveupdate" />
   		<c:param name="id" value ="${QUESTION.questionId}"/>;
   </c:url>
 <main>  
 <div class = "pg-m">
     <p class="breadcrumb">
        <a href="${pageContext.request.contextPath}/admin/dashboard.jsp"><i class="fa-solid fa-arrow-left"></i> Dashboard</a> /
            <a href="QuestionControllerServlet">Update Questions</a>
        </p>
        <h1 class="pg-heading"><i class="fa-solid fa-book"></i></h1>
         
</div>
 
 
<form class ="create-form" action="${saveUpdate}" method="post">
	<label for ="question">Question:</label><br>
	<input class="txtin" type="text" name ="question" size="90" value ="${QUESTION.question}"required> <br> <br>
	<input class="btn btn-prim"  type="submit" value="save" class="submit">

</form>
</main>
<%@ include file= "/incl/footer.jsp" %>
