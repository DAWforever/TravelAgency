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
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span>Product</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
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
				<li><a href="#tab-bottom-left2" role="tab" data-toggle="tab">Product Control</a></li>
				<li><a href="#tab-bottom-left3" role="tab" data-toggle="tab">Purchase Permission</a></li>
				<li><a href="#tab-bottom-left4" role="tab" data-toggle="tab">Inventory Control</a></li>
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
					<h3 class="page-title">Product Report</h3>
					<div class="panel panel-headline">
						<div class="panel-body">						
							<h3>Product or Service</h3>		
								<p class="lead">new_serv_1</p>
							<hr>					
							<h3>Tour Package</h3>
								<p class="lead">new_pack_2</p>
							<hr>					
							<h3>Automatic Comment</h3>
								<div class="alert alert-warning alert-dismissible" role="alert">
										<button type="button" class="close" data-dismiss="alert" aria-label="Close"><span aria-hidden="true">&times;</span></button>
										<i class="fa fa-warning"></i> Suspicious
								</div>
							<hr>			
							<h3>Overall Report</h3>		
								<button type="button" class="btn btn-success">great</button>
								<button type="button" class="btn btn-success">pleasant</button>				
								<button type="button" class="btn btn-info">tolerated</button>
								<button type="button" class="btn btn-warning">not-so-good</button>
								<button type="button" class="btn btn-danger">awful</button>
							<hr>		
							<h3>Statistical Results</h3>
							<div class="panel">
								<div class="panel-body">
									<table class="table">
										<thead>
											<tr>
												<th>Topic</th>
												<th>Relevant Number</th>
												<th>Emotion</th>										
											</tr>
										</thead>
										<tbody>											
											<tr>
												<td>great/outstanding/excellent...</td>
												<td>17</td>
												<td>Positive</td>
											</tr>
											<tr>
												<td>pleasant/comfortable...</td>
												<td>15</td>
												<td>Positive</td>
											</tr>
											<tr>
												<td>OK/fair/tolerated</td>
												<td>5</td>
												<td>Neutral</td>
											</tr>
											<tr>
												<td>uncomfortable/terrible/awful</td>
												<td>9</td>
												<td>Negative</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<hr>
							<h3>Relevant Feedback and Order</h3>
							<p><a href="UserFeedBack.jsp">Feedbacks from Area C store in package_1 on 2010-03-01</a></p>	
							<p><a href="">Feedbacks from Area C store in package_1 on 2010-02-27</a></p>
							<p><a href="">Feedbacks from Area B store in package_2 on 2010-02-20</a></p>		
							<a href="ProductGot.jsp" class="btn btn-default">View All</a>
						</div>
					</div>
				</div>
			</div>
					<a href="ProductControl.jsp">Back</a>
				</div>
				<div class="tab-pane fade" id="tab-bottom-left2">
				<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Initiative purchasing list</h3>
								</div>
								<div class="panel-body">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>#</th>
												<th>Product or service</th>
												<th>Tour package</th>
											</tr>
										</thead>
										<tbody>
										<%
										List<String> list = WaitingPurchasingList.returnList(true);
										for(String s:list){
										%>
											<tr><%String[] ss = s.split(","); %>
												<td><%=ss[0] %></td>
												<td><%=ss[1] %></td>
												<td><%=ss[2] %></td>
												<td><a href="list<%=ss[0]%>.jsp">details</a></td>
											</tr><%} %>
										</tbody>
									</table>
								</div>
							</div>
				</div>
				<div class="tab-pane fade" id="tab-bottom-left3">
				<form action = "Reply" method="post">
				<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Reply to purchasing department</h3>
								</div>
								<div class="panel-body">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>#</th>
												<th>Product or service</th>
												<th>Tour package</th>
											</tr>
										</thead>
										<tbody>
										<%
										for(String s:list){
										%>
											<tr><%String[] ss = s.split(","); %>
												<td><%=ss[0] %></td>
												<td><%=ss[1] %></td>
												<td><%=ss[2] %></td>
												<td>
												<label class="fancy-radio">
												<input name="judge<%=ss[0] %>" value="accept" type="radio">
												<span><i></i>Accept</span>
												</label>
												<label class="fancy-radio">
												<input name="judge<%=ss[0] %>" value="reject" type="radio">
												<span><i></i>Reject</span>
												</label>
												</td>
											</tr><%} %>
											
										</tbody>
										
									</table>
									<button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>
								</div>
							</div>
							</form>
				</div>
				
				<div class="tab-pane fade" id="tab-bottom-left4">
					
				</div>
				<div class="tab-pane fade" id="tab-bottom-left5">
				<form action = "ProductSendMessage?method=product" method="post" onsubmit="return formsubmit(this)">
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
