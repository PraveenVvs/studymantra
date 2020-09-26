<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Physics Puzzles</title>
    <link rel="stylesheet" href="quiz.css">
    <link rel="icon" href="images/titlelogo.jpg" type="image/x-icon">
</head>



<body style="background: #000099;"> 
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
<%session.setAttribute("examwritten",1); %>
<div class="containerx">
    <p><text id="que"></text></p>
    <input type="text" id="inpt"><button class="buton" onclick="submit()">Next</button>

    <p id="button001"></p>
    <form class="hide" id="redirect"  action="<%= request.getContextPath() %>/ScoreUpdatee" method="post">
        <p id="total"></p>
        <input id="score" class="hide" name='score'>
        <button  class="buton">Submit</button>
    </form>

    <script>
    var questions = ["what is unit of force?", "what is unit of work?", "what if symbol of force?", "what is symbol of weight?"];
    var answers = ["newton", "joule", "f", "w"];
        var form = document.getElementById("redirect");
        var total=document.getElementById("total");
        var indx = 0
        var score = 0;
        var scorenm = document.getElementById("score");


        function submit() {
            if (indx < 4) {
                var b = (inpt.value).trim().toLowerCase();;
                if (b == answers[indx]) {

                    score += 1;
                    nextque();

                } else {
                    nextque();
                }
            }
        }

        document.getElementById("que").innerHTML = questions[indx];

        function nextque() {
            indx += 1;
            inpt.value="";
            if (indx == 4) {
                scorenm.value=score;
                total.innerHTML="Total Score is" + score + "/4";
                form.classList.remove("hide");

            } else {
                document.getElementById("que").innerHTML = questions[indx];
            }

        }
    </script>
    </div>

</body>

</html>