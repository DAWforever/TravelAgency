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
							</a>
							<ul class="dropdown-menu notifications">
								<li><a href="PurchasingList.jsp" class="notification-item"><span class="dot bg-warning"></span>New purchasing list arrives</a></li>
								<li><a href="ProductGot.jsp" class="more">See all notifications</a></li>
							</ul>
						</li>

						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span>plan</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
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
				<li><a href="#tab-bottom-left2" role="tab" data-toggle="tab">View Planning Recommendation</a></li>
				<li><a href="#tab-bottom-left3" role="tab" data-toggle="tab">Send package plans</a></li>
				<li><a href="#tab-bottom-left4" role="tab" data-toggle="tab">Current package plans</a></li>
				<li><a href="#tab-bottom-left5" role="tab" data-toggle="tab">Send Message</a></li>
			</ul>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="tab-content">
				<div class="tab-pane fade in active" id="tab-bottom-left1">
					<div class="panel panel-profile">
						<div class="clearfix">
							<!-- LEFT COLUMN -->
							<div class="profile-left">
								<!-- PROFILE HEADER -->
								<div class="profile-header">
									<div class="overlay"></div>
									<div class="profile-main">										
										<img src="assets/img/crab.png" class="img-circle" alt="Avatar">
										<h3 class="name">plan</h3>
									</div>
								</div>
								<!-- END PROFILE HEADER -->
								<!-- PROFILE DETAIL -->
								<div class="profile-detail">
									<div class="profile-info">
										<h4 class="heading">Basic Info</h4>
										<ul class="list-unstyled list-justify">
										<%
										ResultSet rs =stm.executeQuery("select * from travel.user where Name = 'plan'");
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
										rs =stm.executeQuery("select * from travel.message where message.to = 'plan'");

										%>
										<tbody><%while(rs.next()) {%>
											<tr>
												<td><%=rs.getString("from") %></td>
												<td><%=rs.getString("priority") %></td>
												<td><a href="PlanToProduct.jsp"><%=rs.getString("subject") %></a></td>
											</tr><%}%>
										</tbody>
									</table>
								</div>
								</div>
								<!-- END AWARDS -->
								<!-- TABBED CONTENT -->
								
								<!-- END TABBED CONTENT -->
							</div>
							<!-- END RIGHT COLUMN -->
						</div>
					</div>
				</div>
				<div class="tab-pane fade" id="tab-bottom-left2">
				<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Recommeded plans</h3>
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
												<td><a href="StorePlan.jsp">Area A Store</a></td>
												<td>Western Europe, the US, Beijing</td>
												<td>South East Asia, Taiwan</td>
												<td><a href="APlanRecommend.jsp">details</a></td>												
											</tr>
											<tr>
												<td><a href="StorePlan.jsp">Area B Store</a></td>
												<td>Japan, Taiwan, HK, Macao</td>
												<td>Korea, South East Asia</td>												
												<td><a href="APlanRecommend.jsp">details</a></td>												
											</tr>
											<tr>
												<td><a href="StorePlan.jsp">Area C Store</a></td>
												<td>South East Asia, Sanya, Taiwan</td>
												<td>Europe, the US</td>												
												<td><a href="APlanRecommend.jsp">details</a></td>												
											</tr>
											<tr>
												<td><a href="StorePlan.jsp">Area D Store</a></td>
												<td>Sichuan, Xinjiang, Inner Mongolia</td>
												<td>Korea, Shanghai</td>												
												<td><a href="APlanRecommend.jsp">details</a></td>												
											</tr>
										</tbody>
									</table>
								</div>
							</div>
				</div>
				<div class="tab-pane fade" id="tab-bottom-left3">
				<form action = "PlanUpdate?method=plan" method="post" onsubmit="return formsubmit(this)">
					<div class="panel-body">
						<input type="text" name="subject" class="form-control" placeholder="Package">
						<br>
						<textarea name="content" class="form-control" placeholder="Package Details" rows="4"></textarea>
						<br>
						<br>
						<button type="submit" class="btn btn-primary btn-lg btn-block">Send</button>
					</div>
				</form>
				</div>
				<div class="tab-pane fade" id="tab-bottom-left4">
				<div class="panel">
								<div class="panel-heading">
								<h3 class="panel-title">Package plans</h3>
								</div>
								<div class="panel-body">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>Tour package</th>
												<th>Package detail</th>
											</tr>
										</thead>
										<tbody>
										<%
										Statement st = conn.createStatement();
										ResultSet rst = st.executeQuery("SELECT * FROM travel.plan WHERE plan.label='plan'");
										while(rst.next()){
										%>
											<tr>
												<td><%=rst.getString("topic") %></td>
												<td><%=rst.getString("content") %></td>
											</tr><%} %>
											
										</tbody>
										
									</table>
								</div>
							</div>
				</div>
				<div class="tab-pane fade" id="tab-bottom-left5">
				<form action = "ProductSendMessage?method=plan" method="post" onsubmit="return formsubmit(this)">
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
