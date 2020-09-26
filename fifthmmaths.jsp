<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<%@ page import="java.util.List"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="net.javaguides.registration.model.TempStore_Scores"%>
<%@ page import="net.javaguides.registration.dao.StudentDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student List</title>
<link rel="stylesheet" href="bootstrap.css">
<link rel="icon" href="images/titlelogo.jpg" type="image/x-icon">
</head>
<body>
<%
try
{String s=session.getAttribute("email").toString();
System.out.print(s);
}
catch(Exception e)
{
	response.sendRedirect("login.jsp");
}
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
%>
<%
StudentDao std=new StudentDao();
List<TempStore_Scores> l=new ArrayList<>();
String course=(String)session.getAttribute("course");
String standard=(String)session.getAttribute("standard");
l=std.StudentAndScoreList(course,standard);
%>
	<nav class="navbar fixed-top navbar-expand-lg navbar-dark"
		style="background-color: #00000a">
		<div class="container">
			<a class="navbar-brand" href="maths.jsp">
				<h3 class="my-heading ">Study Mantra</h3>
			</a>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link"
					href="<%=request.getContextPath()%>/Logout"> Logout </a></li>
			</ul>

			</ul>
		</div>
	</nav>
	<br>
	<br>
	<br>
	<b>Welcome Mentor</b>
	<b style="font-size: 18px"> <%=session.getAttribute("name")%></b>
	<br>
	<b>Your Students</b>
	<%
	String id = session.getAttribute("id").toString();
	int n = l.size();
	%>
	<table class="table table-striped table-dark">
		<thead>
			<tr>
				<th scope="col">S.No</th>
				<th scope="col">Student name</th>
				<th scope="col">Average Score</th>
				<th scope="col">Total Number Of Tests Attempted</th>
			</tr>
		</thead>
		<tbody>
			<%
				for (int i = 0; i < n; i++) {
				TempStore_Scores temp = l.get(i);
			%>
			<tr>
				<td><%=i + 1%></td>

				<form action="<%=request.getContextPath()%>/GetId" method="post">
					<input name="name" value="<%=temp.getName()%>"
						style="display: none"></input>
					<td><button type="submit"
							style="border: none; background: none; color: white"><%=temp.getName()%></button></td>
				</form>
				<td><%=temp.getAvgscore()%></td>
				<td><%=temp.getAttempted()%></td>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
</body>
</html>