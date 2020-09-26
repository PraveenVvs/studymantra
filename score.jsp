<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page errorPage="error.jsp" %>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="net.javaguides.registration.model.TempStore_Scores"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Iterator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page import="net.javaguides.registration.controller.SendEmail"%>
<%@ page import="net.javaguides.registration.dao.StudentDao"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Test Report</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="Chart.min.js"></script>
<link rel="stylesheet" href="bootstrap.css">
<link rel="icon" href="images/titlelogo.jpg" type="image/x-icon">
<%
try
{String s=session.getAttribute("email").toString();
System.out.print(s);
}
catch(Exception e)
{
	response.sendRedirect("login.jsp");
}
%>

<%    
     int examwritten = Integer.parseInt(session.getAttribute("examwritten").toString());
	String course = session.getAttribute("course").toString();
	String id = session.getAttribute("studid").toString();
	String standard=session.getAttribute("standard").toString();
	String site=standard+course+".jsp";
	String name=session.getAttribute("name").toString();
	System.out.println("Name of Student: "+name); 
	
	//debugging
	System.out.println(examwritten + " written-1 and notwritten-0");
	System.out.println("Course enrolled by Student " + course);
	System.out.println("Id of Student Score display: " + id); 
	
	StudentDao std = new StudentDao();
	int len = 0;
	List<List<Integer>> l1 = new ArrayList<>();
	
	
	if (examwritten == 1) {
		String score = request.getParameter("score");
		System.out.println("new score begin added to table: "+score);
		 std.ScoreUpdate(standard,course, id, score,name);
	}
	l1=std.ScoreAbstractionG(standard,course,id,name);
	len=l1.size();
	
	//Graph values
	List<String> labels = new ArrayList<>();
	List<Integer> data = new ArrayList<>();
	int [] lab=new int[l1.size()];
	int [] dat=new int[l1.size()];
	for(int i=0;i<l1.size();i++)
	{
		String s=""+(i+1);
		labels.add(s);
		lab[i]=i+1;
		dat[i]=l1.get(i).get(1);
		data.add(l1.get(i).get(1));
	}
	System.out.println(labels);
	System.out.println(data);
 
	
%>
</head>

<body>

	<nav class="navbar fixed-top navbar-expand-lg navbar-dark"
		style="background-color: #00000a">
		<div class="container">
			<a class="navbar-brand" href=<%=site %>>
				<h3 class="my-heading ">Study Mantra</h3>
			</a>
			<ul class="navbar-nav ml-auto">
				<li class="nav-item"><a class="nav-link"
					href="<%=request.getContextPath()%>/Logout" style="padding: 10px">
						Logout </a></li>
			</ul>


		</div>
	</nav>
	<br>
	<br>
	<br>
	<br>
	<p>
		<b>Scores</b>
	</p>
	<div class="card-body">
		<div class="chart-area">
			<canvas id="myAreaChart"></canvas>
		</div>
	</div>

	<p style="font-weight: bold">
		Total number of tests attempted
		<%=len%></p>
	<div>
		<table class="table table-striped table-dark">
			<thead>
				<tr>
					<th scope="col">S.No</th>
					<th scope="col">Test Name</th>
					<th scope="col">Score</th>
					<th scope="col">Time</th>
					<th scope="col">Date</th>
				</tr>
			</thead>
			<tbody>
				<%
					List<TempStore_Scores> scr = new ArrayList<>();
				scr = (ArrayList) std.ScoreAbstractionT(standard,course,id);
				System.out.println("&&" + scr.size() + "&&");
				Iterator<TempStore_Scores> iterator = scr.iterator();
				%>
				<%
					int x = 1;
				int n = scr.size();
				String s = "";
				while (iterator.hasNext()) {
					TempStore_Scores sr = iterator.next();
					if(n==x && examwritten==1)
					{
						 s="Your ward "+session.getAttribute("name")+" scored "+sr.getScore()+"% conducted on "+sr.getDate()+" "+sr.getTime();
						 SendEmail.mail(s,session.getAttribute("contact").toString(),"Score Test Report");
						 System.out.println("score report emailsent to parent emailid: "+session.getAttribute("contact").toString());
						 s="Your Student"+session.getAttribute("name")+" scored "+sr.getScore()+"% conducted on "+sr.getDate()+" "+sr.getTime();
						 String email=std.getmentormail(course,standard);
						 SendEmail.mail(s,email,"Score Test Report");
						 System.out.println("score report emailsent to mentor emailid: "+email); 
						 examwritten=0;

					}
				%>
				<tr>
					<td><%=x%></td>
					<td><%=sr.getTest() + "_" + x%></td>
					<td><%=sr.getScore()%></td>
					<td><%=sr.getTime()%></td>
					<td><%=sr.getDate()%></td>
				</tr>
				<%
					x += 1;}
				%>
			</tbody>
		</table>
	</div>

	<script> 
	Chart.defaults.global.defaultFontFamily = 'Nunito', '-apple-system,system-ui,BlinkMacSystemFont,"Segoe UI",Roboto,"Helvetica Neue",Arial,sans-serif';
	Chart.defaults.global.defaultFontColor = '#858796';

	function number_format(number, decimals, dec_point, thousands_sep) {
	  // *     example: number_format(1234.56, 2, ',', ' ');
	  // *     return: '1 234,56'
	  number = (number + '').replace(',', '').replace(' ', '');
	  var n = !isFinite(+number) ? 0 : +number,
	    prec = !isFinite(+decimals) ? 0 : Math.abs(decimals),
	    sep = (typeof thousands_sep === 'undefined') ? ',' : thousands_sep,
	    dec = (typeof dec_point === 'undefined') ? '.' : dec_point,
	    s = '',
	    toFixedFix = function(n, prec) {
	      var k = Math.pow(10, prec);
	      return '' + Math.round(n * k) / k;
	    };
	  // Fix for IE parseFloat(0.55).toFixed(0) = 0;
	  s = (prec ? toFixedFix(n, prec) : '' + Math.round(n)).split('.');
	  if (s[0].length > 3) {
	    s[0] = s[0].replace(/\B(?=(?:\d{3})+(?!\d))/g, sep);
	  }
	  if ((s[1] || '').length < prec) {
	    s[1] = s[1] || '';
	    s[1] += new Array(prec - s[1].length + 1).join('0');
	  }
	  return s.join(dec);
	}

	// Area Chart Example
	var ctx = document.getElementById("myAreaChart");
	var myLineChart = new Chart(ctx, {
	  type: 'line',
	  data: {
	    labels:<%=labels%>,
	    datasets: [{
	      label: "Scores",
	      lineTension: 0.4,
	      backgroundColor: "rgba(78, 115, 223, 0.05)",
	      borderColor: "rgba(78, 115, 223, 1)",
	      pointRadius: 3,
	      pointBackgroundColor: "rgba(78, 115, 223, 1)",
	      pointBorderColor: "rgba(78, 115, 223, 1)",
	      pointHoverRadius: 3,
	      pointHoverBackgroundColor: "rgba(78, 115, 223, 1)",
	      pointHoverBorderColor: "rgba(78, 115, 223, 1)",
	      pointHitRadius: 10,
	      pointBorderWidth: 2,
	      data:<%=data%>
	    }],
	  },
	  options: {
	    maintainAspectRatio: false,
	    layout: {
	      padding: {
	        left: 10,
	        right: 25,
	        top: 25,
	        bottom: 0
	      }
	    },
	    scales: {
	      xAxes: [{
	        time: {
	          unit: 'date'
	        },
	        gridLines: {
	          display: false,
	          drawBorder: true
	        },
	        ticks: {
	          maxTicksLimit: 0
	        }

	      }],
	      yAxes: [{
	        ticks: {
	          maxTicksLimit: 5,
	          padding: 10,
	          // Include a dollar sign in the ticks
	          callback: function(value, index, values) {
	            return ''+ number_format(value);
	          }
	        },
	        gridLines: {
	          color: "rgb(234, 236, 244)",
	          zeroLineColor: "rgb(234, 236, 244)",
	          drawBorder: false,
	          borderDash: [2],
	          zeroLineBorderDash: [2]
	        }
	      }],
	    },
	    legend: {
	      display: false
	    },
	    tooltips: {
	      backgroundColor: "rgb(255,255,255)",
	      bodyFontColor: "#858796",
	      titleMarginBottom: 10,
	      titleFontColor: '#6e707e',
	      titleFontSize: 14,
	      borderColor: '#dddfeb',
	      borderWidth: 1,
	      xPadding: 15,
	      yPadding: 15,
	      displayColors: false,
	      intersect: false,
	      mode: 'index',
	      caretPadding: 10,
	      callbacks: {
	        label: function(tooltipItem, chart) {
	          var datasetLabel = chart.datasets[tooltipItem.datasetIndex].label || '';
	          return datasetLabel + ': ' + number_format(tooltipItem.yLabel);
	        }
	      }
	    }
	  }
	  
	});


</script>



</body>

</html>