<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="col-xl-8 col-lg-7">
		<!--               <div class="card shadow mb-4"> -->
		<!--                 Card Header - Dropdown -->
		<!--                 <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between"> -->
		<!--                   <h6 class="m-0 font-weight-bold text-primary">Earnings Overview</h6> -->
		<!--                   <div class="dropdown no-arrow"> -->
		<!--                     <a class="dropdown-toggle" href="#" role="button" id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> -->
		<!--                       <i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i> -->
		<!--                     </a> -->
		<!--                     <div class="dropdown-menu dropdown-menu-right shadow animated--fade-in" aria-labelledby="dropdownMenuLink"> -->
		<!--                       <div class="dropdown-header">Dropdown Header:</div> -->
		<!--                       <a class="dropdown-item" href="#">Action</a> -->
		<!--                       <a class="dropdown-item" href="#">Another action</a> -->
		<!--                       <div class="dropdown-divider"></div> -->
		<!--                       <a class="dropdown-item" href="#">Something else here</a> -->
		<!--                     </div> -->
		<!--                   </div> -->
		<!--                 </div> -->
		<!-- Card Body -->
		<div class="card-body">
			<div class="chart-area">
				<canvas id="myAreaChart"></canvas>
			</div>
		</div>
	</div>




	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="Chart.min.js"></script>
	<script src="chart-area-demo.js"></script>
</body>
</html>