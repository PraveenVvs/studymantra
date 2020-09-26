<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Account Verfication</title>
<link rel="stylesheet" href="bootstrap.css">
<link rel="stylesheet" href="custom.css">
<link rel="icon" href="images/titlelogo.jpg" type="image/x-icon">
</head>
<body>
<%session.setAttribute("login","0");%>
	   	<div class="form-box" style="top: 150px">
		<div class="form-group">
			<form action="<%=request.getContextPath()%>/checkusersendmail">
				<label for="email">Email address</label> <input type="text"
					class="form-control" name="email" id="email"
					aria-describedby="emailHelp" required>
				<input type="submit" class="btn btn-primary btn-block" value="Send OTP"></input>
			</form>

		</div>
		</div>
	
</body>
</html>