<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page
	import="com.DAO.NotesDAO, com.db.DBConnect, com.User.Notes, java.util.*"%>


<%
UserDetails user4 = (UserDetails) session.getAttribute("userDetails");
if (user4 == null) {
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

	<%
	int noteId = Integer.parseInt(request.getParameter("note_id"));
	NotesDAO dao = new NotesDAO(DBConnect.getConnection());
	Notes note = dao.getDataById(noteId);
	%>


	<div class="container-fluid">
		<%@include file="allComponents/navbar.jsp"%>

		<h1 class="text-center mt-4">Edit your Notes.</h1>

		<div class="container">

			<div class="row">
				<div class="col-md-12">
					<form action="EditNotesServlet" method="post">
						<input type="hidden" value="<%=noteId%>" name="noteid">
						<div class="from-group mb-3 ">

							<label for="exampleInputEmail1" class="form-label">Enter
								Title</label> <input type="text" class="form-control" name="title"
								required="required" value="<%=note.getTitle() %>" id="exampleInputEmail1"
								aria-describedby="emailHelp">
						</div>
						<div class="mb-3">
							<label for="exampleInputPassword1" class="form-label">Enter
								Notes</label>
							<textarea rows="10" cols="" class="form-control" name="content"
								required="required"><%=note.getContent()%></textarea>
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