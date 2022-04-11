 <%@ include file= "/incl/head.jsp" %>
 <%@ include file= "/incl/header.jsp" %>
 <%@ include file= "/incl/sidebar.jsp" %>
 

	
<main>
<div class = "pg-m">
	    <p class="breadcrumb">
	      <a href="${pageContext.request.contextPath}/admin/dashboard.jsp"><i class="fa-solid fa-arrow-left"></i> Dashboard</a> /
	       <a href="/admin/candidates"> Candidates</a>
	    </p>
     	<h1 class="pg-heading"><i class="fa-solid fa-users"></i>Update Candidate</h1>   
     </div>
     
     <c:url var="saveUpdate" value="/admin/candidates">
   		<c:param name="action" value="saveupdate" />
   		<c:param name="candidate_id" value ="${CANDIDATE.candidateId}"/>;
	</c:url>

<form class="create-form" action ="${saveUpdate}" method="post">
		
		<label for="title" >Surname:</label> <br>
		<input class ="txtin" id="title" type="text" name="surname" size="90" value="${ CANDIDATE.surname}"required/><br>
					
		<label for ="title">Firstname:</label><br>
		<input class ="txtin" id="title" type="text" name="firstname" size="90" value="${ CANDIDATE.firstname}"required/><br>
		
		<label>Party:</label><br>
		<input class ="txtin" id="title" type="text" name="party" size="90" value="${ CANDIDATE.party}"required/><br>
	
		<label>Profession:</label><br>
		<input class ="txtin" id="title" type="text" name="profession" size="90" value="${ CANDIDATE.profession}"required/><br>
	
		<label>Age:</label><br>
		<input class="txtin" id="title" type="number"name="age" size="90" value="${ CANDIDATE.age}"required/><br>
	
		
	
		<input class="btn btn-prim"  type="submit" value="Save" class="submit"/>

</form>
</main>

	
 <%@ include file= "/incl/footer.jsp" %>
	