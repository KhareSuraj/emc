<%@ include file= "/incl/head.jsp" %>
<!-- Setup URL for ADD QUESTION BUTTON -->
	<c:url var="add" value="QuestionControllerServlet">
		<c:param name="action" value="add"/>
	</c:url>
<main>
 <div class = "pg-m">
        <p class="breadcrumb"><a href="../main/"><i class="fa-solid fa-arrow-left"></i> Dashboard</a></p>
        <h1 class="pg-heading"><i class="fa-solid fa-book"></i> Questions</h1>
        <a href="${add}"><button class=" btn addnew btn-prim"> Add Questions </button></a>
    </div>

	
	
	
	<div class = 'datatable'>
	
 <table id="table_id" class="display">
	<thead>
	
		<tr>
	  		<th>Question</th>
	  		<th>Action</th>
	  	</tr>
	</thead>
	
	
  	<tbody>
  <c:forEach var="questions" items="${QUESTIONS_LIST}">
 
   <!-- Setup a URL for update button -->
   <c:url var="update" value="QuestionControllerServlet">
   		<c:param name="action" value="update" />
   		<c:param name="id" value ="${questions.questionId}"/>;  /questions/?action=update&id=1
   </c:url>
   
    <c:url var="delete" value="QuestionControllerServlet">
  		<c:param name="action" value="delete" />
  		<c:param name= "QuestionId" value="${questions.questionId}" />
  		</c:url>
  		
  	<tr>
  		<td> ${questions.question} </td>
  		<td><a class="btn btn-prim" href="${update}">Update</a>
  		     | <a href="${delete}" onclick="return confirm('Are you sure you want to delete?')"><button class ="btn btn-danger">Delete</button></a>
  		
  		</td>
  		</tr>
  		
		
  	
  
  </c:forEach>
  </tbody>
  
   </table>
   </div>
   
   </main>
   
<%@ include file= "/incl/footer.jsp" %>

</body>
</html>