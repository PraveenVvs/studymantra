<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap.css">
<link rel="stylesheet" href="custom.css">
<title>Password Reset</title>
<link rel="icon" href="images/titlelogo.jpg" type="image/x-icon">
</head>
<body>
	<div class="form-box" style="top: 150px">
		<form action="<%=request.getContextPath()%>/ResetPassword" method="post">
			<!-- Password -->
			<div class="form-group">
				<label for="exampleInputPassword1">New Password</label> <input
					type="password" name="password" class="form-control"
					id="exampleInputPassword1" required>
			</div>
			<input type="submit" class="btn btn-primary btn-block" value="Reset Password"></input>
		</form>
	</div>
</body>
</html>