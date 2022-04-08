<%@ include file= "/incl/head.jsp" %>

<%@ include file= "/incl/header.jsp" %>
<%@ include file= "/incl/sidebar.jsp" %>


<!-- Setup URL FOR add candidate button -->
	<c:url var="add" value="/admin/candidates">
		<c:param name ="action" value="add"/>
	</c:url>
	<main>
		<div class="pg-m">
			
		<p class="breadcrumb"><a href="${pageContext.request.contextPath}/admin/dashboard.jsp"><i class="fa-solid fa-arrow-left"></i> Dashboard</a></p>
        <h1 class="pg-heading"><i class="fa-solid fa-person"></i> Candidates</h1>
        <a href="${add}"><button class=" btn addnew btn-prim"> NEW CANDIDATE </button></a>
		
		</div>
		
	<div class ="datatable">
		
	<table id ="table_id" class="display">
		<thead>
		<tr>
	  		<th>Surname</th>
	  		<th>FirstName</th>
	  		<th>Party</th>
	  		<th>Age</th>
	  		<th>Profession</th>
	  		<th>Action</th>
  		</tr>
		</thead>
	
		<tbody>
		
		<c:forEach var="candidates" items="${CANDIDATES_LIST}">
	  	
		  	<tr>
		  		<td> ${candidates.surname}</td>
		  		<td> ${candidates.firstname}</td>
		  		<td> ${candidates.party}</td>
		  		<td> ${candidates.age}</td>
		  		<td> ${candidates.profession}</td>
		
		  		<!-- update part -->
		  		<c:url var="update" value="/admin/candidates">
			  		<c:param name="action" value="update" />
			  		<c:param name= "CandidateId" value="${candidates.candidateId}" />
			  	</c:url>
		  		
		  		<c:url var="delete" value="/admin/candidates">
			  		<c:param name="action" value="delete" />
			  		<c:param name= "CandidateId" value="${candidates.candidateId}" />
			  	</c:url>
				<td>
				<a href="${update}"><button class=" btn btn-prim">UPDATE</button></a>
		  		<a href="${delete}" onclick="return confirm('Are you sure you want to delete?');"><button class=" btn btn-danger">DELETE</button></a>
		  		</td>
		  	</tr>
  
  		</c:forEach>
  	
  		</tbody>
   	</table>
	</div>
	</main>
		
<%@ include file= "/incl/footer.jsp" %>

