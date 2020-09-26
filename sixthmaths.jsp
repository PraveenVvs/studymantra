<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="quiz.css">
<link rel="stylesheet" href="bootstrap.css">
<title>Welcome to VIth Math</title>
<link rel="icon" href="images/titlelogo.jpg" type="image/x-icon">
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
<%session.setAttribute("course","maths"); %>
	<nav class="navbar fixed-top navbar-expand-lg navbar-dark" style=" background-color: #00000a">
		<div class="container">
			<a class="navbar-brand" href="sixthmaths.jsp">
				<h3 class="my-heading ">Study Mantra</h3>
			</a>
			<ul class="navbar-nav ml-auto" >
				<li class="nav-item"><a class="nav-link" href="mcourse.jsp" style="padding:10px"> Tutorials </a></li>
				<li class="nav-item"><a class="nav-link" href="mquiz.jsp"style="padding:10px"> Quizzes
				</a></li>
				<li class="nav-item"><a class="nav-link" href="mpuzzle.jsp"style="padding:10px"> Puzzles
				</a></li>
				<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/Logout"style="padding:10px"> Logout
				</a></li>
			</ul>

		</div>
	</nav>
	<div class="containerx">
		<p style="text-align: center; font-size: 2rem">
			Welcome to Maths 
			<%=session.getAttribute("name") %>
			<%session.setAttribute("examwritten", 0);%>
		</p>
        <iframe src="https://calendar.google.com/calendar/embed?height=600&amp;wkst=1&amp;bgcolor=%23039BE5&amp;ctz=Asia%2FKolkata&amp;src=YTNxOHQ2ZjJubTQzbjJhc2o3MG8ycWpjOWtAZ3JvdXAuY2FsZW5kYXIuZ29vZ2xlLmNvbQ&amp;color=%233F51B5&amp;showPrint=0&amp;showTabs=0&amp;showCalendars=0&amp;showTz=0&amp;showNav=0&amp;showTitle=0&amp;showDate=1" style="border:solid 1px #777" width="800" height="600" frameborder="0" scrolling="no"></iframe>
		<div style="text-align: center;">
			<form action="<%=request.getContextPath()%>/score.jsp"
				method="post">
				<button class="start-btn btn" style="background-color:#000099;color:white;font-size:20px;">Test Scores</button>
			</form> 
			<!-- 			<br> -->
<!-- 			<button class="start-btn btn" style="background-color:#000099;color:white;font-size:20px;"><a style="color:white" href="mtquiz.jsp">Timed Quiz</a></button> -->
		</div>
		
	</div>

</body>

</html>