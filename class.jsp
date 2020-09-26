<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Class</title>
<link rel="stylesheet" href="bootstrap.css">
<link rel="icon" href="images/titlelogo.jpg" type="image/x-icon">
</head>
<body>
<nav class="navbar fixed-top navbar-expand-lg navbar-dark" style=" background-color: #00000a">
		<div class="container">
			<a class="navbar-brand" href="maths.jsp">
				<h3 class="my-heading ">Study Mantra</h3>
			</a>
			<ul class="navbar-nav ml-auto" >
<!-- 				<li class="nav-item"><a class="nav-link" href="mcourse.jsp" style="padding:10px"> Tutorials </a></li> -->
<!-- 				<li class="nav-item"><a class="nav-link" href="mquiz.jsp"style="padding:10px"> Quizzes -->
<!-- 				</a></li> -->
<!-- 				<li class="nav-item"><a class="nav-link" href="mpuzzle.jsp"style="padding:10px"> Puzzles -->
<!-- 				</a></li> -->
				<li class="nav-item"><a class="nav-link" href="<%=request.getContextPath()%>/Logout"style="padding:10px"> Logout
				</a></li>
			</ul>

			
		</div>
	</nav>
	<br>
	<br>
	<br>
<button><a href="maths.jsp">Maths</a></button>
<button><a href="physics.jsp">Physics</a></button>
<button><a href="chemistry.jsp">Chemistry</a></button>

</body>
</html>