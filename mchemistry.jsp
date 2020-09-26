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
<title>Insert title here</title>
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
	<p>Welcome mentor</p>
	<p>Your Students</p>
	<% 
	    StudentDao std=new StudentDao();
	    String course=session.getAttribute("course").toString();
	    String id=session.getAttribute("id").toString();
		List<TempStore_Scores> l = (ArrayList)session.getAttribute("studscore");
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
				<input name="name" value="<%=temp.getName()%>" style="display:none"></input>
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