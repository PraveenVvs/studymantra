<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sample</title>
    <link rel="stylesheet" href="bootstrap.css">
<link rel="stylesheet" href="quiz.css">
    <link rel="icon" href="images/titlelogo.jpg" type="image/x-icon">
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
  
</head>
<body>
<%session.setAttribute("examwritten",1); %>
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
<!--     <p id="countdown" style="color:yellow ">hey</p> -->
    <div class="containerx">

		<div id="question-container" class="hide">
			<p>
			<div id="question">Question</div>
			</p>
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
				method="get">
				<input type="text" class="hide" name="score" id="score">
				<button id="smbt" type="submit" class="start-btn btn hide"
					style="background-color: #000099">Submit</button>
			</form>

		</div>
	</div>
    <script src='pquiz.js'></script>
</body>
</html>