<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="UserLoginControllerServlet" method="post">
        <div class="login-box">
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
                     
            <c:if test = "${sessionScope['err'] != null }">
         <p class="error">${sessionScope['err']}<p>
      </c:if>
             
          </div> 
    </form> 
</body>
</html>