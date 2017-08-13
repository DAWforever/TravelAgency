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
	<link rel="stylesheet" href="assets/vendor/chartist/css/chartist-custom.css">
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
							</a>
							<ul class="dropdown-menu notifications">
								<li><a href="ProductGot.jsp" class="more">See all notifications</a></li>
							</ul>
						</li>

						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span>gm</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
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
				<li><a href="#tab-bottom-left2" role="tab" data-toggle="tab">Overview of Running Condition</a></li>
				<li><a href="#tab-bottom-left4" role="tab" data-toggle="tab">Send Instructions</a></li>
				<li><a href="#tab-bottom-left6" role="tab" data-toggle="tab">Send Message</a></li>
			</ul>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="tab-content">
				<div class="tab-pane fade in active" id="tab-bottom-left1">
					<div class="panel panel-profile">
							<!-- LEFT COLUMN -->
							<div class="profile-left">
								<!-- PROFILE HEADER -->
								<div class="profile-header">
									<div class="overlay"></div>
									<div class="profile-main">
										<img src="assets/img/eagle.png" class="img-circle" alt="Avatar">
										
										<h3 class="name">gm</h3>
									</div>
								</div>
								<!-- END PROFILE HEADER -->
								<!-- PROFILE DETAIL -->
								<div class="profile-detail">
									<div class="profile-info">
										<h4 class="heading">Basic Info</h4>
										<ul class="list-unstyled list-justify">
										<%
										ResultSet rs =stm.executeQuery("select * from travel.user where Name = 'gm'");
										rs.next();
										%>
											<li>Role <span><%=rs.getString("Role") %></span></li>
											<li>Working Place <span><%=rs.getString("place") %></span></li>
											<li>Comment <span><%=rs.getString("Comment") %></span></li>
											<li>Mobile <span><%=rs.getString("Mobile") %></span></li>
										<%rs.close(); %>
										</ul>
									</div>
									<div class="text-center"><a href="#" class="btn btn-primary">Edit Profile</a></div>
								</div>
								<!-- END PROFILE DETAIL -->
							</div>
							<!-- END LEFT COLUMN -->
							<!-- RIGHT COLUMN -->
							<div class="profile-right">
								<h4 class="heading">Messages Recieved</h4>
								<!-- AWARDS -->
								<div class="awards">
									<div class="panel-body">
									<table class="table">
										<thead>
											<tr>
												<th>Sender</th>
												<th>Priority</th>
												<th>Subject</th>
											</tr>
										</thead>
										<%
										rs =stm.executeQuery("select * from travel.message where message.to = 'gm'");
										
										%>
										<tbody><%while(rs.next()) {%>
											<tr>
												<td><%=rs.getString("from") %></td>
												<td><%=rs.getString("priority") %></td>
												<td><%=rs.getString("subject") %></td>
											</tr><%}%>
										</tbody>
									</table>
								</div>
									<div class="text-center"><a href="ProductGot.jsp" class="btn btn-default">See all Messages</a></div>
								</div>
								<!-- END AWARDS -->
								<!-- TABBED CONTENT -->
								
								<!-- END TABBED CONTENT -->
							</div>
							<!-- END RIGHT COLUMN -->
					</div>
				</div>
				<div class="tab-pane fade" id="tab-bottom-left2">
				<div class="panel panel-headline">
						<div class="panel-heading">
							<h3 class="panel-title">Monthly Overview</h3>
							<p class="panel-subtitle">Period: Oct 14, 2016 - Oct 21, 2016</p>
						</div>
						<div class="panel-body">
							<div class="row">
								<div class="col-md-3">
									<div class="metric">
										<span class="icon"><i class="fa fa-download"></i></span>
										<p>
											<span class="number">$5,758</span> <span class="percentage"><i class="fa fa-caret-up text-success"></i> 23%</span>
										<span class="info-label">Monthly Income</span>
										</p>
									</div>
								</div>
								<div class="col-md-3">
									<div class="metric">
										<span class="icon"><i class="fa fa-shopping-bag"></i></span>
										<p>
											<span class="number">2,315</span> <span class="percentage"><i class="fa fa-caret-up text-success"></i> 12%</span>
										<span class="info-label">Total Sales</span>
										</p>
									</div>
								</div>
								<div class="col-md-3">
									<div class="metric">
										<span class="icon"><i class="fa fa-eye"></i></span>
										<p>
											<span class="number">$65,938</span> <span class="percentage"><i class="fa fa-caret-down text-danger"></i> 8%</span>
										<span class="info-label">Total Income</span>
										</p>
									</div>
								</div>
							</div>
								
							
						</div>
					</div>
				<div class="row">
				<div class="col-md-5">
							<!-- TIMELINE -->
							<div class="panel panel-scrolling">
								<div class="panel-heading">
									<h3 class="panel-title">Recent User Activity</h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								<div class="panel-body">
									<ul class="list-unstyled activity-list">
										<li>
											<p><a href="#">Area A store</a> has completed package_5 <span class="timestamp">yesterday</span></p>
										</li>
										<li>
											<p><a href="#">Planning Department</a> has carried out a new <a href="#">tour package plan</a> <span class="timestamp">3 days ago</span></p>
										</li>
										<li>
											<p><a href="#">Marketing Department</a> has carried out a new<a href="#">propaganda strategy</a> <span class="timestamp">3 days ago</span></p>
										</li>
										<li>
											<p><a href="#">HR Department</a> has finished monthly staff report <span class="timestamp">5 days ago</span></p>
										</li>
									</ul>
									<button type="button" class="btn btn-primary btn-bottom center-block">Load More</button>
								</div>
							</div>
							<!-- END TIMELINE -->
						</div>
						<div class="col-md-6">
							<!-- RECENT PURCHASES -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Recent Purchases and Sales</h3>
									<div class="right">
										<button type="button" class="btn-toggle-collapse"><i class="lnr lnr-chevron-up"></i></button>
										<button type="button" class="btn-remove"><i class="lnr lnr-cross"></i></button>
									</div>
								</div>
								<div class="panel-body no-padding">
									<table class="table table-striped">
										<thead>
											<tr>
												<th>Type</th>
												<th>Department</th>
												<th>Amount</th>
												<th>Date &amp; Time</th>
												<th>Reason</th>
												<th>Status</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td><a href="#">Purchase</a></td>
												<td>Purchasing Department</td>
												<td>$1220</td>
												<td>Oct 21, 2011</td>
												<td>Product and Service Purchase</td>
												<td><span class="label label-success">COMPLETED</span></td>
											</tr>
											<tr>
												<td><a href="#">Purchase</a></td>
												<td>Marketing Department</td>
												<td>$620</td>
												<td>Oct 21, 2011</td>
												<td>Advertisement Expense</td>
												<td><span class="label label-warning">PENDING</span></td>
											</tr>
											<tr>
												<td><a href="#">Purchase</a></td>
												<td>Purchasing Department</td>
												<td>$340</td>
												<td>Oct 18, 2011</td>
												<td>Product and Service Purchase</td>												
												<td><span class="label label-danger">FAILED</span></td>
											</tr>
											<tr>
												<td><a href="#">Sales</a></td>
												<td>Area A Department</td>
												<td>$1860</td>
												<td>Oct 17, 2011</td>												
												<td>From Package_7</td>
												<td><span class="label label-success">SUCCESS</span></td>
											</tr>
										</tbody>
									</table>
								</div>
								<div class="panel-footer">
									<div class="row">
										<div class="col-md-6"><span class="panel-note"><i class="fa fa-clock-o"></i> Last 7 Days</span></div>
										<div class="col-md-6 text-right"><a href="#" class="btn btn-primary">View All Orders</a></div>
									</div>
								</div>
							</div>
							<!-- END RECENT PURCHASES -->
						</div>						
				</div>
				</div>
				
				<div class="tab-pane fade" id="tab-bottom-left6">
					<form action = "ProductSendMessage?method=gm" method="post" onsubmit="return formsubmit(this)">
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
				
				<div class="tab-pane fade" id="tab-bottom-left4">
				<form action = "ProductSendMessage?method=gm&priority=top" method="post" onsubmit="return formsubmit(this)">
					<div class="panel-body">
						<input type="text" name="subject" class="form-control" placeholder="Subject">
						<br>
						<input type="text" name="keyword" class="form-control" placeholder="Key words">
						<br>
						<select name="to" class="form-control">
										<option value="plan">Planning department</option>
										<option value="purchase">Purchasing department</option>
										<option value="market">Marketing department</option>
										<option value="HR">HR department</option>
										<option value="product">Product Control department</option>
										<option value="financail">Financial department</option>
										<option value="operation">Area A Store</option>
										<option value="operation">Area B Store</option>
										<option value="operation">Area C Store</option>
										<option value="operation">Area D Store</option>
									</select>
									<br>
						<textarea name="content" class="form-control" placeholder="Intruction Content" rows="4"></textarea>
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
	<script src="assets/vendor/jquery.easy-pie-chart/jquery.easypiechart.min.js"></script>
	<script src="assets/vendor/chartist/js/chartist.min.js"></script>
	<script src="assets/scripts/klorofil-common.js"></script>
	<script>
	$(function() {
		var data, options;

		// headline charts
		data = {
			labels: ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
			series: [
				[23, 29, 24, 40, 25, 24, 35],
				[14, 25, 18, 34, 29, 38, 44],
			]
		};

		options = {
			height: 300,
			showArea: true,
			showLine: false,
			showPoint: false,
			fullWidth: true,
			axisX: {
				showGrid: false
			},
			lineSmooth: false,
		};

		new Chartist.Line('#headline-chart', data, options);


		

	});
	</script>
</body>

</html>
