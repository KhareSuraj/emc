<%@ include file= "/incl/chead.jsp" %>

<body>
	<form action="UserLoginControllerServlet" method="post">
        <div class="login-box" style ="">
            <h1>Login</h1>
  
            <div class="textbox">
                <i class="fa fa-user" aria-hidden="true"></i>
                <input type="text" placeholder="Username"
                         name="username"> 
            </div>
            
            <div class="textbox">
                <i class="fa fa-lock" aria-hidden="true"></i>
                <input type="password" placeholder="Password"
                         name="password"> 
            </div>
            
            <div class="dropdown">
            	<label for ="role">Role</label>
            	<select name ="role" id ="role">
            		<option value ="voter">Voter</option>
            		<option value = "candidate">Candidate</option>
            	</select> 
            </div>
            
            <input class="button" type="submit"
                     name="login" value="Sign In">
                     
          <c:if test="${not empty error}">
    <p class="errorMsg">${error}</p>
    <c:remove var="error"/>
	</c:if>
   </div> 
</form> 

</body>
</html>

