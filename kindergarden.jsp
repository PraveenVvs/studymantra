<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Kinder Garden</title>
<link rel="icon" href="images/titlelogo.jpg" type="image/x-icon">
<link rel="stylesheet" href="quiz.css">
<link rel="stylesheet" href="bootstrap.css">



</head>

<body style="background:#000099;">
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
	<nav class="navbar fixed-top navbar-expand-lg navbar-dark"
		style="background-color: #00000a">
		<div class="container">
			<a class="navbar-brand" href="maths.jsp">
				<h3 class="my-heading ">Study Mantra</h3>
			</a>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link"
					href="<%=request.getContextPath()%>/Logout" style="padding: 20px">
						Logout </a></li>
			</ul>


		</div>
	</nav>
	
<div class="containerx">
<a href="story1.jsp" style="padding-right:20%;padding-left:18%;color:black;">Story 1</a>
<a href="story2.jsp" style="padding-right:20%;color:black;">Story 2</a>
<a href="story3.jsp" style="padding-right:20%;color:black;">Story 3</a>

</div>


</body>
</html>

</body>
</html>