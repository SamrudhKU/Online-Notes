<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
    <%
	UserDetails user2 = (UserDetails) session.getAttribute("userDetails");
	if(user2==null){
		response.sendRedirect("login.jsp");
		session.setAttribute("login-err", "please login..");
	}
	%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Notes</title>
<%@include file="allComponents/allCss.jsp"%>
</head>
<body>
<div class="container-fluid">
<%@include file="allComponents/navbar.jsp"%>
<div class="card">
<div class="card-body text-center mt-3">
<img alt="" src="images/writeing.jpeg" class="img-fluid mx-auto" style="width:600px">
<h1>Start taking your notes.</h1>
<a href="addNotes.jsp" class="btn btn-outline-primary">Start hear</a>
</div>
</div>
<%@include file="allComponents/footer.jsp"%>

</div>

</body>
</html>