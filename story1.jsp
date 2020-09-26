<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Story 1</title>
    <link rel="icon" href="images/titlelogo.jpg" type="image/x-icon">
    <link rel="stylesheet" href="bootstrap.css">
    <link rel="stylesheet" href="story.css">
   
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
    <img src="images/letstart.jpg" alt="start" style="width:40%;height:40%">
    <h1>TITLE: THE LION AND THE MOUSE</h1>

    <img src="images/The-Lion-and-the-Mouse-story.jpg" alt="lion and mouse" style="padding-right:300px;width:60%;height:60%">
    <p>A lion was sleeping under a tree.A naughty rat came and started to jump on the lion's body.The lion got
        disturbed.He caught the rat in his
        <a href=" " title="animal foot"
            style="background-color:#FFFFFF;color:#000000;text-decoration:none"><u>paw</u> </a>
         and roared.The rat was scared.He requested the lion,"Let me go.I will
        help you someday".The lion laughed at this and said,"You are too small to help me.Anyways, you can go".</p>

    <img src="images/lion.jpg" alt="lion at risk" style="width:30% ;height:30%">
    <p> One day, the lion was
        trapped in the hunter's net.He roared loudly.Hearing his voice,the rat came out of his hole.He quickly 
        <a href=" " title="Bite"
            style="background-color:#FFFFFF;color:#000000;text-decoration:none"><u>gnawed</u> </a>
        the net and set the lion free.The lion said to the rat "Thank you.I was wrong .Even too small creatures can do a
        big job".
    </p>
    <p> <b>Moral of the story:</b>
        The small act of Kindness can go a long way.</p>
        <script>
            $(document).ready(function(){
              $('[data-toggle="tooltip"]').tooltip();
            });
            </script>
</body>

</html>