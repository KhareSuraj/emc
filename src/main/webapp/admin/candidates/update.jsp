 <%@ include file= "/incl/head.jsp" %>
 <%@ include file= "/incl/header.jsp" %>
 <%@ include file= "/incl/sidebar.jsp" %>
 

	
<main>
<div class = "pg-m">
	    <p class="breadcrumb">
	      <a href="../main/"><i class="fa-solid fa-arrow-left"></i> Dashboard</a> /
	       <a href="CandidateControllerServlet"> Candidates</a>
	    </p>
     	<h1 class="pg-heading"><i class="fa-solid fa-users"></i>Update Candidate</h1>   
     </div>
     
     <c:url var="saveUpdate" value="CandidateControllerServlet">
   		<c:param name="action" value="saveupdate" />
   		<c:param name="candidate_id" value ="${CANDIDATE.candidateId}"/>;
	</c:url>

<form class="create-form" action ="${saveUpdate}" method="post">
		
		<label for="title" >Surname:</label> <br>
		<input class ="txtin" id="title" type="text" name="surname" size="90" value="${ CANDIDATE.surname}"/><br>
					
		<label for ="title">Firstname:</label><br>
		<input class ="txtin" id="title" type="text" name="firstname" size="90" value="${ CANDIDATE.firstname}"/><br>
		
		<label>Party:</label><br>
		<input class ="txtin" id="title" type="text" name="party" size="90" value="${ CANDIDATE.party}"/><br>
	
		<label>Profession:</label><br>
		<input class ="txtin" id="title" type="text" name="profession" size="90" value="${ CANDIDATE.profession}"/><br>
	
		<label>Age:</label><br>
		<input class="txtin" id="title" type="int"name="age" size="90" value="${ CANDIDATE.age}"/><br>
	
		
	
		<input class="btn btn-prim"  type="submit" value="Save" class="save"/>

</form>
</main>
</div>
	
 <%@ include file= "/incl/footer.jsp" %>
	