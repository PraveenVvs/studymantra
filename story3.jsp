<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Story 3</title>
    <link rel="stylesheet" href="story.css">
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
    <h1>THE COW AND THE TIGER</h1>
    <p>Once upon a time there lived a cow in a farmer's shed with her child. She was used to go Jungle for grazing. She
        was returning to her shed in the evening. When she returned her calf used to drink milk.</p>
    <img src="images/s31.jpg" alt="farmer and cows" style="width:80%;height:60%;">
    <p>One day the cow has gone to the forest for grazing. That day a tiger caught her on the way of the Jungle. The
        tiger want to kill the cow and eat. The cow made a request to the tiger. She told tiger, Please leave me else my
        calf will die in hunger. I will come back after giving milk to my child. The tiger listened the request of the
        cow and said, "It is impossible".</p>
    <img src="images/s32.jpg" alt="tiger and cow" style="width:80%;height:60%;">
    <p> If I let you go you will never come back again. Listening this cow said to the tiger, I promise I will be back
        after my child drank milk. The tiger then you can go and come back as soon as possible.The cow returned her shed
        and she gives to milk to her child. </p>
    <img src="images/s33.jpg" alt="cow and calf" style="width:80%;height:60%;">
    <p>Then she started for the forest. She reached the jungle and give a cry for the tiger. The tiger came and saw the
        cow. The tiger was hungry he became surprised to see the cow back. The tiger hasn't seen such sincerity,
        morality and honesty from any animal. He became very pleased to see such kind of characters from this cow. </p>
    <img src="images/s34.jpg" alt="tiger leaving cow" style="width:80%;height:60%;">
    <p>The tiger said, I will not kill you. You are my best friend and I will protect you from other wild animals in the
        future. I want that the character you <a href=" " title="having"
        style="background-color:#FFFFFF;color:#000000;text-decoration:none"><u>possessed</u> </a> should spread to other animals. By saying these, tiger went back
        to the forest. The cow also returned back to her calf before the sunrise. </p>
    <p><b>MORAL OF THE STORY:</b></p>
    <img src="images/s35.png" alt="moral" style="width:80%;height:60%;">
</body>

</html>