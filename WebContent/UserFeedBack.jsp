<!doctype html>
<html lang="en">
<%@page language="java" import="java.util.* ,java.sql.*, Controller.*"  pageEncoding="UTF-8"%>
<%
Class.forName("com.mysql.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql?useSSL=false", "root","root");
Statement stm = conn.createStatement();

%>

<head>
	<title>Main</title>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
	<!-- VENDOR CSS -->
	<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.min.css">
	<link rel="stylesheet" href="assets/vendor/linearicons/style.css">
	<!-- MAIN CSS -->
	<link rel="stylesheet" href="assets/css/main.css">
	<!-- FOR DEMO PURPOSES ONLY. You should remove this in your project -->
	<link rel="stylesheet" href="assets/css/demo.css">
	<!-- GOOGLE FONTS -->
	<link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700" rel="stylesheet">
	<!-- ICONS -->
	<link rel="apple-touch-icon" sizes="76x76" href="assets/img/apple-icon.png">
	<link rel="icon" type="image/png" sizes="96x96" href="assets/img/favicon.png">
</head>

<body>
	<!-- WRAPPER -->
	<div id="wrapper">
		<!-- NAVBAR -->
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="brand">
				Top-S Travel
			</div>
			<div class="container-fluid">
				<div class="navbar-btn">
					<button type="button" class="btn-toggle-fullwidth"><i class="lnr lnr-arrow-left-circle"></i></button>
				</div>

				<div id="navbar-menu">
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle icon-menu" data-toggle="dropdown">
								<i class="lnr lnr-alarm"></i>
								<span class="badge bg-danger">1</span>
							</a>
							<ul class="dropdown-menu notifications">
								<li><a href="PurchasingList.jsp" class="notification-item"><span class="dot bg-warning"></span>New purchasing list arrives</a></li>
								<li><a href="ProductGot.jsp" class="more">See all notifications</a></li>
							</ul>
						</li>

						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span>customer service</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
							<ul class="dropdown-menu">
								<li><a href="ProductGot.jsp"><i class="lnr lnr-envelope"></i> <span>Message</span></a></li>
								<li><a href="Login.jsp"><i class="lnr lnr-exit"></i> <span>Logout</span></a></li>
							</ul>
						</li>
						<!-- <li>
							<a class="update-pro" href="#downloads/klorofil-pro-bootstrap-admin-dashboard-template/?utm_source=klorofil&utm_medium=template&utm_campaign=KlorofilPro" title="Upgrade to Pro" target="_blank"><i class="fa fa-rocket"></i> <span>UPGRADE TO PRO</span></a>
						</li> -->
					</ul>
				</div>
			</div>
		</nav>
		<!-- END NAVBAR -->
		<!-- LEFT SIDEBAR -->
		<div id="sidebar-nav" class="sidebar">
			<ul class="nav" role="tablist">
				<li class="active"><a href="#tab-bottom-left1" role="tab" data-toggle="tab">Profile</a></li>
				<li><a href="#tab-bottom-left2" role="tab" data-toggle="tab">Feedback Upload</a></li>
				<li><a href="#tab-bottom-left3" role="tab" data-toggle="tab">Internet Feedback Collection</a></li>
				<li><a href="#tab-bottom-left5" role="tab" data-toggle="tab">Customer Management</a></li>
				<li><a href="#tab-bottom-left6" role="tab" data-toggle="tab">Send Message</a></li>
			</ul>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="tab-content">
				<div class="tab-pane fade in active" id="tab-bottom-left1">
					<h3 class="page-title">Customer Feedback</h3>
					<div class="panel panel-headline">
						<div class="panel-body">						
							<h3>Customer's name</h3>		
								<p class="lead">Alice</p>
							<hr>					
							<h3>Subject</h3>
								<p class="lead">Thank you</p>
							<hr>					
							<h3>Tour packge</h3>
								<p class="lead">Package 1</p>
							<hr>												
							<h3>Date</h3>
								<p class="lead">2010-01-01</p>
							<hr>					
							<h3>Content</h3>
								<p class="lead">I want to thank you agency for your pleasent service. I enjoyed my holiday absoulutely and i want to thank your tour guide Guide1 for his assistance.</p>
							<hr>
						</div>
					</div>
					<a href="customer.jsp">Back</a>
				</div>
				<div class="tab-pane fade" id="tab-bottom-left2">
				<div class="panel">
				<form action = "UploadOrder?method=customer" method="post" onsubmit="return formsubmit(this)">
					<div class="panel-body">
						<input type="text" name="cust_name" class="form-control" placeholder="Customer's name">
						<br>
						<input type="text" name="package" class="form-control" placeholder="Tour packge">
						<br>
						<input type="text" name="guide" class="form-control" placeholder="Relevant Staff">
						<br>
						<textarea name="content" class="form-control" placeholder="Detailed feedback" rows="4">
						</textarea>
						<br>
						<select name="emotion" class="form-control">
							<option value="Very positive">Very positive</option>
							<option value="Positive">Positive</option>
							<option value="A little positive">A little positive</option>
							<option value="Very Negative">Very Negative</option>
							<option value="Negativ">Negative</option>
							<option value="A little negative">A little negative</option>
							<option value="Neutral">Neutral</option>
						</select>
						<br>
						<button type="submit" class="btn btn-primary btn-lg btn-block">Send</button>
					</div>
				</form>
				</div>
				</div>
				<div class="tab-pane fade" id="tab-bottom-left3">
				<div class="panel">
					<div class="panel-heading">
						<h3 class="panel-title">Feedback collected from Internet written by customers</h3>
					</div>
					<div class="panel-body">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Customer username</th>
									<th>Subject</th>
									<th>Package</th>
									<th>Date</th>										
									<th>Content</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<td>Alice</td>
									<td>Thank you</td>
									<td>Package 1</td>												
									<td>2010-01-01</td>
									<td><a href="UserFeedBack.jsp">I want to thank you agency for your service...</a></td>
								</tr>
								<tr>
									<td>Bob</td>
									<td>Awful</td>
									<td>Package 3</td>												
									<td>2010-01-02</td>
									<td><a href="#">It's an awful trip for me and my family. We had...</a></td>
								</tr>
								<tr>
									<td>Carl</td>
									<td>Good</td>
									<td>Package 1</td>												
									<td>2010-01-05</td>
									<td><a href="#">A very pleasant journey. I felt great during the...</a></td>
								</tr>
							</tbody>
						</table>	
						<input type="button" name="" value="Submit to system"  />						
					</div>
				</div>
				</div>
				
				<div class="tab-pane fade" id="tab-bottom-left5">
				<div class="panel">
								<div class="panel-heading">
								<h3 class="panel-title">Package plans</h3>
								</div>
								<div class="panel-body">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>Customer</th>
												<th>Level</th>
												<th>Mobile</th>
												<th>E-Mail</th>
											</tr>
										</thead>
										<tbody>										
											<tr>
												<td><a href="Alice.jsp">Alice</a></td>
												<td>VIP</td>
												<td>1267023423</td>
												<td>12345@54321.com</td>
											</tr>										
											<tr>
												<td><a href="Alice.jsp">Dave</a></td>
												<td>VIP</td>
												<td>4452672343</td>
												<td>12345@abc.com</td>
											</tr>										
											<tr>
												<td><a href="Alice.jsp">Bran</a></td>
												<td>4</td>
												<td>1233423555</td>
												<td>cba@54321.com</td>
											</tr>										
											<tr>
												<td><a href="Alice.jsp">Carl</a></td>
												<td>3</td>
												<td>5468732222</td>
												<td></td>
											</tr>										
											<tr>
												<td><a href="Alice.jsp">Bob</a></td>
												<td>2</td>
												<td>6665554447</td>
												<td>bob@bob.com</td>
											</tr>											
										</tbody>
										
									</table>
								</div>
							</div>
				
				</div>
				<div class="tab-pane fade" id="tab-bottom-left6">
				<form action = "ProductSendMessage?method=customer" method="post" onsubmit="return formsubmit(this)">
					<div class="panel-body">
						<input type="text" name="subject" class="form-control" placeholder="Subject">
						<br>
						<input type="text" name="to" class="form-control" placeholder="To">
						<br>
						<select name="priority" class="form-control">
										<option value="middle">Medium Priority</option>
										<option value="high">High Priority</option>
										<option value="low">Low Priority</option>
									</select>
									<br>
						<textarea name="content" class="form-control" placeholder="Message" rows="4"></textarea>
						<br>
						<button type="button" class="btn btn-default"><i class="fa fa-plus-square"></i> Attachment </button>
						<br>
						<br>
						<button type="submit" class="btn btn-primary btn-lg btn-block">Send</button>
					</div>
				</form>
				</div>
				</div>
			</div>
			<!-- END MAIN CONTENT -->
		<!-- END MAIN -->
		<div class="clearfix"></div>

	</div>
	<!-- END WRAPPER -->
	<!-- Javascript -->
	<script src="assets/vendor/jquery/jquery.min.js"></script>
	<script src="assets/vendor/bootstrap/js/bootstrap.min.js"></script>
	<script src="assets/vendor/jquery-slimscroll/jquery.slimscroll.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
</body>

</html>



