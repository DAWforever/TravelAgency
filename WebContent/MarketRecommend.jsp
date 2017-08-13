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
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span>market</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
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
				<li><a href="#tab-bottom-left2" role="tab" data-toggle="tab">View Marketing Recommendation</a></li>
				<li><a href="#tab-bottom-left3" role="tab" data-toggle="tab">Make Propaganda Strategy</a></li>
				<li><a href="#tab-bottom-left5" role="tab" data-toggle="tab">Send Message</a></li>
			</ul>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="tab-content">
				<div class="tab-pane fade in active" id="tab-bottom-left1">
					<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">Recommendation Report</h3>
					<div class="panel panel-headline">
						<div class="panel-body">						
							<h3>Target Store</h3>		
								<p class="lead">Area A Store</p>
							<hr>					
							<h3>More Focus</h3>
								<p class="lead">Western Europe, the US, Beijing</p>
							<hr>					
							<h3>Less Focus</h3>
								<p class="lead">South East Asia, Taiwan</p>
							<hr>			
							<h3>Statistical Report</h3>		
								<div class="alert alert-success alert-dismissible" role="alert">
								<i class="fa fa-check-circle"></i> Western Europe tour package sales increase much
								</div>
								<div class="alert alert-success alert-dismissible" role="alert">
								<i class="fa fa-check-circle"></i> the US tour package feedback high
								</div>
								<div class="alert alert-success alert-dismissible" role="alert">
								<i class="fa fa-check-circle"></i> Beijing tour package sales down
								</div>
								<div class="alert alert-info alert-dismissible" role="alert">
									<i class="fa fa-info-circle"></i> Japan tour package sales increase slowly
								</div>
								<div class="alert alert-info alert-dismissible" role="alert">
									<i class="fa fa-info-circle"></i> Sichuan tour package sales remain
								</div>
								<div class="alert alert-warning alert-dismissible" role="alert">
									<i class="fa fa-warning"></i> South East Asia  tour package feedback low
								</div>
								<div class="alert alert-warning alert-dismissible" role="alert">
									<i class="fa fa-warning"></i> Taiwan tour package sales remain low
								</div>
							<hr>		
							<h3>Feedback on the Staff</h3>
							<p><a href="UserFeedBack.jsp">Feedbacks from 2010-01-01 to 2010-01-31</a></p>	
							<p><a href="">Customer orders from 2010-01-01 to 2010-01-31</a></p>
							<p><a href="">Sales chart from 2010-01-01 to 2010-01-31</a></p>		
							<hr>
						</div>
					</div>
				</div>
			</div>
					<a href="market.jsp">Back</a>
				</div>
				<div class="tab-pane fade" id="tab-bottom-left2">
				<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Recommeded marketing list</h3>
								</div>
								<div class="panel-body">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>Store</th>
												<th>More Focus</th>
												<th>Less Focus</th>
											</tr>
										</thead>
										<tbody>
										
											<tr>
												<td>Area A Store</td>
												<td>Western Europe, the US</td>
												<td>South East Asia, Taiwan</td>												
											</tr>
											<tr>
												<td>Area B Store</td>
												<td>Japan, Taiwan, HK, Macao</td>
												<td>Korea, South East Asia</td>												
											</tr>
											<tr>
												<td>Area C Store</td>
												<td>South East Asia, Sanya, Taiwan</td>
												<td>Europe, the US</td>												
											</tr>
											<tr>
												<td>Area D Store</td>
												<td>Sichuan, Xinjiang, Inner Mongolia</td>
												<td>Korea, Shanghai</td>												
											</tr>
										</tbody>
									</table>
									<a href="MarketRecommend.jsp">View Recommendation Report</a>
								</div>
							</div>
				</div>
				<div class="tab-pane fade" id="tab-bottom-left3">
				<form action = "PlanUpdate?method=market" method="post" onsubmit="return formsubmit(this)">
					<div class="panel-body">
						<input type="text" name="subject" class="form-control" placeholder="Subject">
						<br>
						<select name="priority" class="form-control">
										<option value="middle">Area A Store</option>
										<option value="high">Area B Store</option>
										<option value="low">Area C Store</option>
										<option value="middle">Area D Store</option>
									</select>
									<br>
						<textarea name="content" class="form-control" placeholder="Message" rows="4"></textarea>
						<br>
						<br>
						<button type="submit" class="btn btn-primary btn-lg btn-block">Send</button>
					</div>
				</form>
				</div>
				
				<div class="tab-pane fade" id="tab-bottom-left5">
				<form action = "ProductSendMessage?method=market" method="post" onsubmit="return formsubmit(this)">
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
