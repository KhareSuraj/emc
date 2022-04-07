<%@ include file= "/incl/head.jsp" %>


<div>
	<c:url var= "saveCandidate" value="CandidateControllerServlet">'
		<c:param name="action" value ="insert"/>
	</c:url>
</div>	

<main>
	<div class = "pg-m">
	    <p class="breadcrumb">
	      <a href="../main/"><i class="fa-solid fa-arrow-left"></i> Dashboard</a> /
	       <a href="CandidateControllerServlet"> Candidates</a>
	    </p>
     	<h1 class="pg-heading"><i class="fa-solid fa-users"></i> New Candidate</h1>   
     </div>

<form class="create-form" action ="${saveCandidate}" method="post">
		
		<label for="title" >Surname:</label> <br>
		<input class ="txtin" id="title" type="text" name="surname" size="90"/><br>
					
		<label for ="title">Firstname:</label><br>
		<input class ="txtin" id="title" type="text" name="firstname" size="90"/><br>
		
		<label>Party:</label><br>
		<input class ="txtin" id="title" type="text" name="party" size="90"/><br>
	
		<label>Profession:</label><br>
		<input class ="txtin" id="title" type="text" name="profession" size="90"/><br>
	
		<label>Age:</label><br>
		<input class="txtin" id="title" type="int"name="age" size="90"/><br>
	
		<label>Username:</label><br>
		<input class ="txtin" id="title" type="text" name="username" size="90"/><br>
	
		<label>Password:</label><br>
		<input class ="txtin" id="title" type="password" name="password" size="90"/><br>
	
		<input class="btn btn-prim"  type="submit" value="Save" class="save"/>

	</form>

</main>
 <%@ include file= "/incl/footer.jsp" %>








