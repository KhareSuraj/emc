
 <%@ include file= "/incl/head.jsp" %>
 
 <%@ include file= "/incl/header.jsp" %>

 <%@ include file= "/incl/sidebar.jsp" %>
 

	<!-- Setup URL for ADD QUESTION BUTTON -->
	<c:url var="add" value="/admin/questions">

		<c:param name="action" value="add"/>
	</c:url>
<main>
 <div class = "pg-m">
        <p class="breadcrumb"><a href="${pageContext.request.contextPath}/admin/dashboard.jsp"><i class="fa-solid fa-arrow-left"></i> Dashboard</a></p>
        <h1 class="pg-heading">Questions<i class="fa-solid fa-question"></i></h1>
        <a href="${add}"><button class=" btn addnew btn-prim"> Add Questions </button></a>
    </div>

	<c:if test="${param.msg != null}">
         <p class="msg"><c:out value="${param.msg}"></c:out><p>
      </c:if>
	
	
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
   <c:url var="update" value="/admin/questions">
   		<c:param name="action" value="update" />
   		<c:param name="id" value ="${questions.questionId}"/>;  /questions/?action=update&id=1
   </c:url>
   
    <c:url var="delete" value="/admin/questions">
  		<c:param name="action" value="delete" />
  		<c:param name= "QuestionId" value="${questions.questionId}" />
  		</c:url>
  		
  	<tr>
  		<td> ${questions.question} </td>
  		<td><a class="btn btn-prim" href="${update}">Update</a>
  		     <a href="${delete}" onclick="return confirm('Are you sure you want to delete?')"><button class ="btn btn-danger">Delete</button></a>
  		
  		</td>
  		</tr>
  		
		
  	
  
  </c:forEach>
  </tbody>
  
   </table>
   </div>
   
   </main>
   
<%@ include file= "/incl/footer.jsp" %>

