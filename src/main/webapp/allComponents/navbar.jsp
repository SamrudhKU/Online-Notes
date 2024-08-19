<%@page import="com.User.UserDetails"%>

<%@include file="allCss.jsp"%>

<nav class="navbar navbar-expand-lg navbar-dark bg-custom navbar-custom">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><i
			class="fa-solid fa-globe"></i> Online Notes</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">
				<li class="nav-item"><a class="nav-link active"
					aria-current="page" href="home.jsp"><i
						class="fa-solid fa-house"></i> Home</a></li>
				<li class="nav-item"><a class="nav-link" href="addNotes.jsp"><i
						class="fa fa-plus-circle"></i> Add Notes</a></li>
				<li class="nav-item"><a class="nav-link" href="showNotes.jsp"><i
						class="fa-regular fa-address-book"></i> Show Notes</a></li>
			</ul>

			<%
			UserDetails user = (UserDetails) session.getAttribute("userDetails");

			if (user != null) {
			%>
			<a href="" class="btn btn-light my-2 my-sm-0 mr-3" type="submit"
				data-bs-toggle="modal" data-bs-target="#exampleModal"><i
				class="fa-duotone fa-solid fa-user"></i><%=user.getName()%></a>
				
				
				


		<!-- Modal -->
		<div class="modal fade" id="exampleModal" tabindex="-1"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">User Profile</h5>
						<button type="button" class="btn-close" data-bs-dismiss="modal"
							aria-label="Close"></button>
					</div>
					<div class="modal-body">

						<div class="container text-center">
				<i class="fa-duotone fa-solid fa-user fa-3x "></i>

							<table class="tabel justify-content-center">
								<tbody>
									<tr>
										<th>User Id:</th>
										<td><%=user.getId() %></td>
									</tr>

									<tr>
										<th>Name:</th>
										<td><%=user.getName() %></td>
									</tr>
									<tr>
										<th>Email:</th>
										<td><%=user.getEmail() %></td>
									</tr>

									<tr>
										<th>PhoneNumber:</th>
										<td><%=user.getPhoneNumber() %></td>
									</tr>

								</tbody>
							</table>


						</div>


					</div>
					<div class="modal-footer">
						
						
					</div>
				</div>
			</div>
		</div>
				
				
				 <a
				href="logoutServlet" class="btn btn-light my-2 my-sm-0 mr-3"
				type="submit"><i class="fa-solid fa-right-from-bracket"></i>
				logout</a>

			<%
			} else {
			%>
			<a href="login.jsp" class="btn btn-light my-2 my-sm-0 mr-3"
				type="submit"><i class="fa-duotone fa-solid fa-user"></i> Login</a>
			<a href="register.jsp" class="btn btn-light my-2 my-sm-0 mr-3"
				type="submit"><i class="fa-duotone fa-solid fa-user-plus"></i>
				Register</a>

			<%
			}
			%>


		</div>








	</div>




</nav>