<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="bootstrap.css">
<link rel="stylesheet" href="custom.css">

<title>Mentor-Login</title>
<link rel="icon" href="images/titlelogo.jpg" type="image/x-icon">
</head>
<body class="bg">
 <a href="login.jsp" style="margin-left:90%;color:white;background-color:black">Student Login</a>
    <%session.setAttribute("login", "1"); %>
     <%session.setAttribute("role","mentor"); %>
	<div class="form-box" style="top: 150px">
		<form action="<%=request.getContextPath()%>/checkusersendmail">
			<!-- Login and Register Button -->
<!-- 			<div class="button-box"> -->
<!-- 				<a href="login.jsp"><button type="button" class="btn" -->
<!-- 						style="background-color: orange;">Login</button></a> <a -->
<!-- 					href="registr.jsp"> -->
<!-- 					<button type="button" class="btn">Register</button> -->
<!-- 				</a> -->
<!-- 			</div> -->
			<!-- Email -->
			<div class="form-group">
				<label for="exampleInputEmail1">Email address</label> <input
					type="text" class="form-control" name="email"
					id="exampleInputEmail1" aria-describedby="emailHelp" required>
				<small id="emailHelp" class="form-text text-muted">We'll
					never share your email with anyone else.</small>
			</div>
			<!-- Password -->
			<div class="form-group">
				<label for="exampleInputPassword1">Password</label> <input
					type="password" name="password" class="form-control"
					id="exampleInputPassword1" required>
			</div>


			<input type="submit" class="btn btn-primary btn-block" value="Login"></input>
			<a href="checkemail.jsp" style="padding-left: 30%">Forget
				Password?</a>
		</form>
	</div>
</body>
</html>