<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Register</title>
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
							<i class="fa-solid fa-user-plus"></i> Regerstration
						</h3>
					</div>

					<%
					String msg = (String) session.getAttribute("reg-msg");
					if (msg != null) {
					%>
					<div class="alert " role="alert">
						<%=msg%> Click to <a href="login.jsp">login</a></div>
					<%
					session.removeAttribute("reg-msg");
					}
					%>


					<div class="card-body">
						<form action="userServlet" method="post">
							<div class="mb-3">
								<label class="form-label">Full Name</label> <input type="text"
									class="form-control" id="exampleInputEmail1" name="name"
									aria-describedby="emailHelp"> 
									<label class="form-label">Email
									address</label> <input type="email" class="form-control"
									id="exampleInputEmail1" name="email"
									aria-describedby="emailHelp">
								<div id="emailHelp" class="form-text">We'll never share
									your email with anyone else.</div>
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Password</label>
								<input type="password" class="form-control" name="password"
									id="exampleInputPassword1">
							</div>
							<div class="mb-3">
								<label for="exampleInputPassword1" class="form-label">Phone
									Number</label> <input type="text" class="form-control"
									name="phoneNumber" id="exampleInputPassword1">
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