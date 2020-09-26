<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content2="width=device-width, initial-scale=1.0">
    <title>Tutorials</title>
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="tutorial.css">
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
    <p><b>BODMAS</b></p>
    <div class="container">
        <div class="flex">
            <iframe class="content1"  src="https://www.youtube.com/embed/3SxMrYD0LLM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <iframe class="content1" src="https://www.youtube.com/embed/Cb8JvTXqPcI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <iframe class="content1"   src="https://www.youtube.com/embed/TM0l4hGKEUY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <iframe class="content1" src="https://www.youtube.com/embed/-WSeVxvN85c" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <iframe class="content1" src="https://www.youtube.com/embed/CC00xCUf2jI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
        <a href="#" id="loadMore1">Load More</a>


    </div>

    <p><b>Tricks</b></p>
    <div class="container">
        <div class="flex">
            <iframe class="content2"  src="https://www.youtube.com/embed/Pw-xEuWTQ-s" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <iframe class="content2"   src="https://www.youtube.com/embed/RY2wQY70TeY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <iframe class="content2"  src="https://www.youtube.com/embed/Pw-xEuWTQ-s" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <iframe class="content2"  src="https://www.youtube.com/embed/ToMddAKNudk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <iframe class="content2"  src="https://www.youtube.com/embed/9TbYdFr-BsY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <iframe class="content2"  src="https://www.youtube.com/embed/LJ2OdwQmiyM" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

          
        </div>
        <a href="#" id="loadMore2">Load More</a>

    </div>



</body>
<script src="tutorial.js"></script>

</html>