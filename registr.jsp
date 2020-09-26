<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="bootstrap.css">
<link rel="stylesheet" href="custom.css">
<title>StudyMantra-Elearning</title>
<link rel="icon" href="images/titlelogo.jpg" type="image/x-icon">
</head>
<body class="bg">
	<div class="form-box " style="top: 40px">
		<form action="<%=request.getContextPath()%>/register" method="post">
			<!-- Login and Register select -->
			<div class="button-box">
				<a href="login.jsp"><button type="button" class="btn">Login</button></a>

				<a href="registr.jsp">
					<button type="button" class="btn" style="background-color: orange;">Register</button>
				</a>
			</div>
			<!--Full Name -->
			<div class="form-group">
				<label for="Fullname">Full Name</label> <input type="text"
					name="name" class="form-control" id="Fullname" required>

			<!-- Username -->
			</div>
			<div class="form-group">
				<label for="Username">User Name</label> <input type="text"
					name="username" class="form-control" id="Username" required>

			</div>


			<!-- Email -->
			<div class="form-group">
				<label for="email">Email address</label> <input
					type="email" class="form-control" name="email"
					id="email" required> <small id="emailHelp"
					class="form-text text-muted">We'll never share your email
					with anyone else.</small>
			</div>
			<!-- Password -->
			<div class="form-group">
				<label for="password">Password</label> <input
					type="password" class="form-control" name="password"
					id="password" required>
			</div>
			<!-- Standard -->
			<div class="form-group">
				<label for="Standard">Standard</label> <select
					name="standard" id="Standard" class="form-control" onchange="check(this)">
					<option value="select">--Select--</option>
					<option value="Kindergarden">Kindergarden</option>
					<option value="fifth">V</option>
					<option value="sixth">VI</option>
				</select>
			</div>
			
			
			<!-- Select Course -->
			<div class="form-group">
				<label for="Course">Course</label> <select
					name="course" id="Course" class="form-control">
					<option value="select">--Select--</option>
					<option value="all">All -(Maths,Physics,Chemistry)</option>
					<option value="Maths">Maths</option>
					<option value="Physics">Physics</option>
					<option value="Chemistry">Chemistry</option>
					
				</select>
			</div>
			
			
            <!--Parent Email -->
		     <div class="form-group">
				<label for="parentemail">Parent Email id</label> <input
					type="email" class="form-control" name="parentemail"
					id="parentemail" required>
			</div>
			
			<!-- Conditions -->
			<div class="form-check">
				<input type="radio" class="form-check-input" id="exampleCheck1"
					name="terms" required="required"> <label
					class="form-check-label" for="exampleCheck1">I agree to the
					<a href="t&c.jsp">T&C</a></label>
			</div>
			<!-- Submit -->
			<button type="submit" class="btn btn-primary btn-block">Register</button>
		</form>
	</div>
	<script>
	function check(options)
	{
	   var s=options.value;
	   if(s=="Kindergarden")
		{
		   document.getElementById("Course").disabled=true;
		   console.log("garden")
		}
	   else
		{
		   document.getElementById("Course").disabled=false;
		   console.log("not garden")
		   console.log(s)
		 }
	}
	</script>
</body>
</html>