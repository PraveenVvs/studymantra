<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Chemistry Quiz</title>
<link rel="stylesheet" href="bootstrap.css">
<link rel="stylesheet" href="quiz.css">
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
	<%session.setAttribute("examwritten",1); %>
	<nav class="navbar fixed-top navbar-expand-lg navbar-dark"
		style="background-color: #00000a">
		<div class="container">
			<a class="navbar-brand" href="maths.jsp">
				<h3 class="my-heading ">Study Mantra</h3>
			</a>
			<ul class="navbar-nav ml-auto">

			</ul>


		</div>
	</nav>
	s
	<div class="containerx">
		<div id="question-container" class="hide">
			<div id="question">Question</div>
			<div id="answer-buttons" class="btn-grid">
				<button class="btn">Answer 1</button>
				<button class="btn">Answer 2</button>
				<button class="btn">Answer 3</button>
				<button class="btn">Answer 4</button>
			</div>
		</div>
		<div class="controls">
			<p id="tot" class="hide"></p>
			<button id="start-btn" class="start-btn btn"
				style="background-color: #000099">Start</button>
			<button id="next-btn" class="next-btn btn hide"
				style="background-color: #000099">Next</button>
			<form action="<%= request.getContextPath() %>/score.jsp"
				method="post">
				<input type="text" class="hide" name="score" id="score">
				<button id="smbt" type="submit" class="start-btn btn hide"
					style="background-color: #000099">Submit</button>
			</form>

		</div>
	</div>
</body>
<script src="cquiz.js"></script>
</html>