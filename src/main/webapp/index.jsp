<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img{
background: url("images/home.jpeg");
width: 100%;
height: 80vh;
background-size: cover;
}
</style>
<meta charset="UTF-8">
<title>Online Notes</title>
<%@include file="allComponents/allCss.jsp" %>
</head>
<body>

	<%@include file="allComponents/navbar.jsp" %>
	
	
	
	
	<div class="container-fluid back-img">
	<div class="text-center	">
	<h1><i class="fa-solid fa-regular fa-book"></i> Save your notes online.</h1>
	<a href="login.jsp" class="btn btn-light"><i class="fa-solid fa-circle-user"></i> login</a>
	<a href="register.jsp" class="btn btn-light"><i class="fa-duotone fa-solid fa-user-plus"></i> register</a>
	
	</div>
	</div>
	<%@include file="allComponents/footer.jsp" %>
</body>
</html>