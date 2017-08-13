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
								<li><a href="HeadToProduct.jsp" class="notification-item"><span class="dot bg-warning"></span>New instruction from headquarters</a></li>
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
					<div class="panel panel-profile">
							<!-- LEFT COLUMN -->
							<div class="profile-left">
								<!-- PROFILE HEADER -->
								<div class="profile-header">
									<div class="overlay"></div>
									<div class="profile-main">
										<img src="assets/img/cat.png" class="img-circle" alt="Avatar">
																				
										<h3 class="name">Product</h3>
									</div>
								</div>
								<!-- END PROFILE HEADER -->
								<!-- PROFILE DETAIL -->
								<div class="profile-detail">
									<div class="profile-info">
										<h4 class="heading">Basic Info</h4>
										<ul class="list-unstyled list-justify">
										<%
										ResultSet rs =stm.executeQuery("select * from travel.user where Name = 'product'");
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
										rs =stm.executeQuery("select * from travel.message where message.to = 'product'");

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
												<td><a href="list<%=ss[0] %>.jsp">details</a></td>
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
					<div class="main">
			<!-- MAIN CONTENT -->
			<div class="main-content">
				<div class="container-fluid">
					<h3 class="page-title">Inventory Control</h3>
					<div class="row">
						<div class="col-md-9">
							<!-- BASIC TABLE -->
							<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Inventory Condition</h3>
								</div>
								
								<div class="panel-body">
									<table class="table">
										<thead>
											<tr>
												<th>Product Inventory</th>
												<th>Area A</th>
												<th>Area B</th>
												<th>Area C</th>
												<th>Area D</th>	
												<th>Allocation Needs</th>											
											</tr>
										</thead>
										<tbody><%rs =stm.executeQuery("select * from travel.inventory");
										while(rs.next()){ %>
											<tr>
												<td><%=rs.getString("name") %></td>
												<td><%if(Integer.parseInt(rs.getString("store_1"))<10){ %><span class="label label-danger"><%=rs.getString("store_1") %></span><%}else{ %><%=rs.getString("store_1") %><%} %></td>
												<td><%if(Integer.parseInt(rs.getString("store_2"))<10){ %><span class="label label-danger"><%=rs.getString("store_2") %></span><%}else{ %><%=rs.getString("store_2") %><%} %></td>
												<td><%if(Integer.parseInt(rs.getString("store_3"))<10){ %><span class="label label-danger"><%=rs.getString("store_3") %></span><%}else{ %><%=rs.getString("store_3") %><%} %></td>
												<td><%if(Integer.parseInt(rs.getString("store_4"))<10){ %><span class="label label-danger"><%=rs.getString("store_4") %></span><%}else{ %><%=rs.getString("store_4") %><%} %></td>
												<td><%if(rs.getString("name").equals("hotel_two")){ %>Area A store needs more.<%} %></td>
											</tr>
											<%} %>
										</tbody>
									</table>
								</div>
							</div>
							</div>
							</div>
							
							<a href="InventoryChange.jsp">Adjust Inventory</a>
							</div>
							</div>
							</div>
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
