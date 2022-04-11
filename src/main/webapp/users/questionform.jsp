 <%@ include file= "/incl/head.jsp" %>
 
 <%@ include file= "/incl/cheader.jsp" %>

 <%@ include file= "/incl/csidebar.jsp" %>
 <main>
  <div class = "pg-m">
    <p class="breadcrumb">
        <a href="../main/"><i class="fa-solid fa-arrow-left"></i> Dashboard</a> 
            <a href="index.php"></a>
        </p>
        <h1 class="pg-heading"><i class="fa-solid fa-book"></i>Questions</h1>
        
</div>
<form class="create-form" action=" ">
<label for="title">Title:</label>
  <c:forEach var="questions" items="${QUESTIONS_LIST}">
  <p>${questions.question}</p>
  <input type="radio" id="yes" name="ans" value="1"size="90">
  <label for="yes">YES</label><br>
  <input type="radio" id="no" name="ans" value="0"size="90">
  <label for="no">NO</label><br>
	
  <br> 
  
  </c:forEach> 
</form>
</main>
<%@ include file= "/incl/footer.jsp" %>