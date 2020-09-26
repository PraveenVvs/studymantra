<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="quiz.css">
<link rel="stylesheet" href="bootstrap.css">
<title>Sixth Standard</title>
<link rel="icon" href="images/titlelogo.jpg" type="image/x-icon">
</head>
<body  style="background: #000099;">
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
					href="<%=request.getContextPath()%>/Logout" style="padding: 10px">
						Logout </a></li>
			</ul>


		</div>
	</nav>

<div class="containerx">
<a href="sixthmaths.jsp" style="padding-left:20%;color:black">Maths</a>
<a href="sixthphysics.jsp" style="padding-left:20%;color:black">Physics</a>
<a href="sixthchemistry.jsp" style="padding-left:20%;color:black">Chemistry</a>
</div>
</body>
</html>