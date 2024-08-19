<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
	<%
	UserDetails user1 = (UserDetails) session.getAttribute("userDetails");
	if(user1==null){
		response.sendRedirect("login.jsp");
		session.setAttribute("login-err", "please login..");
	}
	%>
	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Notes</title>
<%@include file="allComponents/allCss.jsp"%>
</head>
<body>
	<div class="container-fluid">
		<%@include file="allComponents/navbar.jsp"%>

		<h1 class="text-center mt-4">Add your Notes.</h1>


		<div class="container">

			<div class="row">
				<div class="col-md-12">
					<form action="AddNotesServlet" method="post">

						<div class="from-group mb-3 ">

							<label for="exampleInputEmail1" class="form-label">Enter
								Title</label> <input type="text" class="form-control" name="title"
								required="required" id="exampleInputEmail1"
								aria-describedby="emailHelp">
						</div>
						<div class="mb-3">
							<label for="exampleInputPassword1" class="form-label">Enter
								Notes</label>
							<textarea rows="10" cols="" class="form-control" name="content"
								required="required"></textarea>
						</div>

						<div class="container text-center mb-5">
							<button type="submit" class="btn btn-lg mt-3 btn-primary">Save</button>

						</div>


					</form>
				</div>
			</div>
		</div>
		<%@include file="allComponents/footer.jsp"%>

	</div>

</body>
</html>