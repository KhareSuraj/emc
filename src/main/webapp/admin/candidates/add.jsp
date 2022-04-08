 <%@ include file= "/incl/head.jsp" %>
 
 <%@ include file= "/incl/header.jsp" %>

 <%@ include file= "/incl/sidebar.jsp" %>

<main>
	<div class = "pg-m">
	    <p class="breadcrumb">
	      <a href="${pageContext.request.contextPath}/admin/dashboard.jsp"><i class="fa-solid fa-arrow-left"></i> Dashboard</a> /
	       <a href="/admin/candidates"> Candidates</a>
	    </p>
     	<h1 class="pg-heading"><i class="fa-solid fa-users"></i> New Candidate</h1>   
     </div>
	
		<c:url var= "saveCandidate" value="/admin/candidates">
			<c:param name="action" value ="insert"/>
		</c:url>
	
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








