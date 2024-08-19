<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page
	import="com.DAO.NotesDAO, com.db.DBConnect, com.User.Notes, java.util.*"%>

<%
UserDetails user3 = (UserDetails) session.getAttribute("userDetails");
if (user3 == null) {
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


			<%
			String updateMsg = (String) session.getAttribute("update-mgs");
			if (updateMsg != null) {
			%>
			<div class="alert alert-success" role="alert">
				<%=updateMsg%>
			</div>
			<%
			}
			%>
			
			
			<%
			String deleteMSg = (String) session.getAttribute("delete-msg");
			if (updateMsg != null) {
			%>
			<div class="alert alert-success" role="alert">
				<%=deleteMSg%>
			</div>
			<%
			}
			%>

			<div class="container">
				<h2 class="text-center">All Notes></h2>
				<div class="row">
					<div class="col-md-12">

						<%
						if (user3 != null) {
							NotesDAO noteObj = new NotesDAO(DBConnect.getConnection());
							List<Notes> notes = noteObj.getData(user3.getId());

							for (Notes note : notes) {
						%>

						<div class="card mt-3 ">
							<img alt="" src="images/note.jpg"
								class="card-img-top mt-2 mx-auto" style="max-width: 100px;">
							<div class="card-body p-4">
								<h5 class="card-title"><%=note.getTitle()%>.
								</h5>
								<p><%=note.getContent()%>.
								</p>
								<p>
									<b class="text-success">Published By: </b> <br> <b
										class="text-primary"><%=user3.getName()%></b>
								</p>
								<p>
									<b class="text-success">Published Date: </b> <br> <b
										class="text-primary"><%=note.getDate()%></b>
								</p>


								<div class="container text-center mt-2">
									<a href="DeleteNoteServlet?note_id=<%=note.getNid()%>" class="btn btn-danger">Delete</a>
									<a href="editNotes.jsp?note_id=<%=note.getNid()%>"
										class="btn btn-primary">Edit</a>
								</div>
							</div>
						</div>

						<%
						}
						}
						%>


					</div>
				</div>
			</div>

			<%@include file="allComponents/footer.jsp"%>

		</div>
</body>
</html>