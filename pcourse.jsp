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
    <p><b>Force</b></p>
    <div class="container">
        <div class="flex">
            <iframe  class="content1" src="https://www.youtube.com/embed/LSa17eedH9A" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <iframe  class="content1" src="https://www.youtube.com/embed/0cYXGuN6Ow0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <iframe class="content1"  src="https://www.youtube.com/embed/IJWEtCRWGvI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <iframe  class="content1" src="https://www.youtube.com/embed/B6mi1-YoRT4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <iframe class="content1"  src="https://www.youtube.com/embed/9SMp-jnh8lg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>
        <a href="#" id="loadMore1">Load More</a>


    </div>

    <p><b>Work</b></p>
    <div class="container">
        <div class="flex">
            <iframe  class="content2" src="https://www.youtube.com/embed/w4QFJb9a8vo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <iframe   class="content2" src="https://www.youtube.com/embed/ZDCeaRYhpj8" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <iframe   class="content2" src="https://www.youtube.com/embed/_YKO5gemKlI" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <iframe  class="content2"  src="https://www.youtube.com/embed/IqV5L66EP2E" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
            <iframe  class="content2" src="https://www.youtube.com/embed/vAThuCmwp9I" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

          
        </div>
        <a href="#" id="loadMore2">Load More</a>

    </div>



</body>
<script src="tutorial.js"></script>

</html>