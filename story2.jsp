<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=, initial-scale=1.0">
    <link rel="stylesheet" href="story.css">
    <title>Story 2</title>
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
    <img src="images/s2int.png" alt="Intro image" style="width:80%;height:60%">
    <h1>THE TORTOISE AND THE HARE</h1>
    <p>Once upon a time,there lived a <a href=" " title="rabbit"
            style="background-color:#FFFFFF;color:#000000;text-decoration:none"><u>hare</u> </a>.The hare could run very
        fast.It was proud of its speed.One day,the hare saw
        the tortoise walking very slowly.The hare laughed at the tortise and said,"You are such a slowcoach!"."My dear
        friend!You are so proud of your speed.Let's have a race to see who is faster",the tortoise said.So, the hare and
        the tortoise had a race.</p>
    <img src="images/s22.jpg" alt="starting race" style="width:80%;height:40%">
    <p>The hare ran very fast and very far.After a while,the hare turned back to see where the tortoise was.The tortoise
        was walking very long time to come near me"the hare thought.The hare started feeling bored.He thought to take a
        nap.In the meantime,he began to eat the grass.After eating,he went to sleep.</p>
    <img src="images/s23.jpg" alt="rabbit sleeping" style="width:80%;height:40%">
    <p> The tortoise slowly but steadily passed the hare.The hare suddenly woke up and saw the tortoise just crossing
        the finishing line.The hare started running very fast.But it was too late.The tortoise already won the race.</p>
    <img src="images/s24.jpg" alt="tortise winning race" style="width:80%;height:60%">
    <p> The hare was extremely disappointed to find his competitor already there as a winner.


    </p>
    <p><b> MORAL :
        </b>Slow and Steady wins the race.</p>

</body>

</html>