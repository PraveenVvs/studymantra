<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome to VIth chemistry</title>
<link rel="stylesheet" href="quiz.css">
<link rel="stylesheet" href="bootstrap.css">
<link rel="icon" href="images/titlelogo.jpg" type="image/x-icon">
</head>
<body style="background: #000099;">
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
<%session.setAttribute("course","chemistry"); %>
    <nav class="navbar fixed-top navbar-expand-lg navbar-dark" style=" background-color: #00000a" style=" background-color: #00000a">
		<div class="container">
			<a class="navbar-brand" href="sixthchemistry.jsp">
				<h3 class="my-heading ">Study Mantra</h3>
			</a>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link" href="ccourse.jsp"> Tutorials </a></li>
				<li class="nav-item"><a class="nav-link" href="cquiz.jsp"> Quizzes
				</a></li>
				<li class="nav-item"><a class="nav-link" href="cpuzzle.jsp"> Puzzles
				</a></li>
				<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/Logout"> Logout
				</a></li>
			</ul>

			
		</div>
	</nav>
	<div class="containerx">
		<p style="text-align: center; font-size: 2rem">
			Welcome to Chemistry
			<%=session.getAttribute("name")%>
			<%session.setAttribute("examwritten", 0);%>
		</p>
		<iframe src="https://calendar.google.com/calendar/embed?height=600&amp;wkst=1&amp;bgcolor=%23039BE5&amp;ctz=Asia%2FKolkata&amp;src=amphZzZxNGU1YjdjdTVrMXJmdjQydXAxYThAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;color=%23616161&amp;showTitle=0&amp;showNav=0&amp;showPrint=0&amp;showTabs=0&amp;showCalendars=0&amp;showTz=0" style="border:solid 1px #777" width="800" height="600" frameborder="0" scrolling="no"></iframe>
		<div style="text-align: center;">

			<form action="<%=request.getContextPath()%>/score.jsp"
				method="post">
				<button class="start-btn btn" style="background-color:#000099;color:white;font-size:20px;">Score</button>
			</form>
			<!-- 			<br> -->
<!-- 			<button class="start-btn btn" style="background-color:#000099;color:white;font-size:20px;"><a style="color:white" href="ctquiz.jsp">Timed Quiz</a></button> -->
		</div>
	</div>
</body>
</html>