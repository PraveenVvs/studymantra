<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap.css">
<link rel="stylesheet" href="custom.css">
<link rel="icon" href="images/titlelogo.jpg" type="image/x-icon">
<title>CheckingOTP</title>
</head>
<body>
<%response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate"); %>
	<div class="form-box" style="top: 150px">
		<div class="form-group">

			<form action="<%=request.getContextPath()%>/OtpChecker" method="get">
				<label for="otp">Enter OTP sent to your email</label> <input
					type="text" class="form-control" name="otp" id="otp" required
					placeholder="Enter OTP"> <input type="submit"
					class="btn btn-primary btn-block" value="Verify OTP"></input>
			</form>
		</div>
	</div>

</body>
</html>