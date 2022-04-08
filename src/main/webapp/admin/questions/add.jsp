
 <%@ include file= "/incl/head.jsp" %>
 
 <%@ include file= "/incl/header.jsp" %>

 <%@ include file= "/incl/sidebar.jsp" %>
 
<main>
<div class = "pg-m">
    <p class="breadcrumb">
        <a href="${pageContext.request.contextPath}/admin/dashboard.jsp"><i class="fa-solid fa-arrow-left"></i> Dashboard</a> /
            <a href="QuestionControllerServlet"> Questions</a>
        </p>
        <h1 class="pg-heading"><i class="fa-solid fa-book"></i> New Question</h1>
        
</div>

 	<!-- Setup URL for ADD QUESTION BUTTON -->
	<c:url var="insert" value="/admin/questions">

		<c:param name="action" value="insert"/>
	</c:url>

 <form class="create-form" action="${insert}" method = "post">

	 	<label for="question">Questions:</label><br>
	 	<input class= "txtin" type ="text" name="question" size="90"/><br>
	 
	 	<input class="btn btn-prim" type = "submit" value="save" class="save" />
	 
 </form>
 </main>
 <%@ include file= "/incl/footer.jsp" %>

 