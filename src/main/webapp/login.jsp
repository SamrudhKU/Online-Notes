<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Online Notes</title>
<%@include file="allComponents/allCss.jsp"%>
</head>
<body>
	<%@include file="allComponents/navbar.jsp"%>

	<div class="continer-fluid div-bg">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card mt-5 card-bg">
					<div class="card-header text-center">
						<h3>
							<i class="fa-solid fa-user-circle"></i> Login
						</h3>
					</div>


					<%
					String msg = (String) session.getAttribute("login-failed");
					if (msg != null) {
					%>
					<div class="alert alert-danger" role="alert">
						<%=msg%>
					</div>
					<%
					session.removeAttribute("login-failed");
					}
					%>


					<%
					String withoutLogin = (String) session.getAttribute("login-err");
					if (withoutLogin != null) {
					%>
					<div class="alert alert-danger" role="alert">
						<%=withoutLogin%>
					</div>
					<%
					session.removeAttribute("login-err");
					}
					%>
					
					
					<%
					String logoutMgs = (String) session.getAttribute("logout-mgs");
					if (logoutMgs != null) {
					%>
					<div class="alert alert-success" role="alert">
						<%=logoutMgs%>
					</div>
					<%
					session.removeAttribute("logoutMgs");
					}
					%>


					<div class="card-body">
						<form action="loginServlet" method="post">
							<div class="mb-3">

								<label class="form-label">Email address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									name="email" aria-describedby="emailHelp">
							</div>

							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control" name="password"
									id="exampleInputPassword1">
							</div>



							<div class="text-center">
								<button type="submit"
									class="text-center btn btn-primary btn-lg btn-block">Submit</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>

	<%@include file="allComponents/footer.jsp"%>
</body>
</html>