<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page errorPage="error.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Chemistry Puzzles</title>
    <link rel="stylesheet" href="quiz.css">
    <link rel="icon" href="images/titlelogo.jpg" type="image/x-icon">
</head>
<body style="background: s;"> 
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
        var questions = ["what is periodic number of hydrogen?", "what is periodic number of helium?", "what is periodic number of lithium?", "what is periodic number of oxygen?"];
        var answers = ["1", "2", "3", "8"];
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