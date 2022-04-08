<%@ include file= "/incl/head.jsp" %>

<body>
	<form action="" method="post">
        <div class="login-box">
            <h1>Admin Login</h1>
  
            <div class="textbox">
                <i class="fa fa-user" aria-hidden="true"></i>
                <input type="text" placeholder="Username"
                         name="username" value="">
            </div>
  
            <div class="textbox">
                <i class="fa fa-lock" aria-hidden="true"></i>
                <input type="password" placeholder="Password"
                         name="password" value="">
            </div>
            
            <input class="button" type="submit"
                     name="login" value="Sign In">
	 <c:if test = "${sessionScope['err'] != null }">
         <p class="errorMsg">${sessionScope['err']}<p>
      </c:if>
          </div> 
    </form> 

</body>
</html>