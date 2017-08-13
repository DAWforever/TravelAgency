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
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span>operation</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
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
				<li><a href="#tab-bottom-left2" role="tab" data-toggle="tab">Order upload</a></li>
				<li><a href="#tab-bottom-left3" role="tab" data-toggle="tab">Stuff Management</a></li>
				<li><a href="#tab-bottom-left4" role="tab" data-toggle="tab">Inventory Management</a></li>
				<li><a href="#tab-bottom-left5" role="tab" data-toggle="tab">Future Plans</a></li>
				<li><a href="#tab-bottom-left6" role="tab" data-toggle="tab">Send Message</a></li>
			</ul>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="tab-content">
				<div class="tab-pane fade in active" id="tab-bottom-left1">
					<div class="panel-body">
						Staff Name
						<select name="priority" class="form-control">
							<option value="middle">guide1</option>
							<option value="high">guide2</option>
						</select>
						<br>
						Comment:
						<select name="priority" class="form-control">
							<option value="middle">High</option>
							<option value="high">Middle</option>
							<option value="low">Low</option>
						</select>
						<br>
						Detailed reason:
						<textarea name="content" class="form-control" placeholder="Detailed reason" rows="4"></textarea>
						<br>
						<button type="button" class="btn btn-default"><i class="fa fa-plus-square"></i> Attachment </button>
						<br>
						<br>
						<button type="submit" class="btn btn-primary btn-lg btn-block">Send</button>
					</div>
					<a href="operation.jsp">Back</a>
				</div>
				<div class="tab-pane fade" id="tab-bottom-left2">
				<div class="panel">
				<form action = "UploadOrder?method=operation" method="post" onsubmit="return formsubmit(this)">
					<div class="panel-body">
						<input type="text" name="cust_name" class="form-control" placeholder="Customer's name">
						<br>
						<input type="text" name="package" class="form-control" placeholder="Tour packge">
						<br>
						<input type="text" name="depart" class="form-control" placeholder="Depart time">
						<br>
						<input type="text" name="return" class="form-control" placeholder="Return time">
						<br>
						<input type="text" name="income" class="form-control" placeholder="Total expense">
						<br>
						<input type="text" name="feedback" class="form-control" placeholder="Initial feedback">
						<br>
						<br>
						<label class="fancy-radio">
							<input name="state" value="after" type="radio">
								<span><i></i>After tour</span>
						</label>
						<label class="fancy-radio">
							<input name="state" value="before" type="radio">
								<span><i></i>Before tour</span>
						</label>
						<br>
						<button type="submit" class="btn btn-primary btn-lg btn-block">Send</button>
					</div>
				</form>
				</div>
				</div>
				<div class="tab-pane fade" id="tab-bottom-left3">
				<div class="panel">
					<div class="panel-heading">
						<h3 class="panel-title">Staff list in your area store</h3>
					</div>
					<div class="panel-body">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Staff name</th>
									<th>Role</th>
									<th>Comment</th>									
									<th>State</th>
								</tr>
							</thead>
							<tbody>
							<%
								List<String> list = WaitingPurchasingList.returnStaffList(true);
								for(String s:list){
							%>
											<tr><%String[] ss = s.split(","); %>
												<td><%=ss[0] %></td>
												<td><%=ss[1] %></td>
												<td><%=ss[2] %></td>												
												<td><%=(ss[1].length()<10)?"Depart":"At home" %></td>
											</tr><%} %>
										</tbody>
						</table>
						<a href="CommentSatff.jsp">Comment on staff</a>	
						
						<a href="OperationSatff.jsp">Set Staff State</a>							
					</div>
				</div>
				</div>
				
				<div class="tab-pane fade" id="tab-bottom-left4">
					<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Permission from product control department</h3>
								</div>
								<div class="panel-body">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>Product or service</th>
												<th>Amount</th>
												<th>Belonging tour package</th>
											</tr>
										</thead>
										<tbody>
										<%
								ResultSet rs2 = stm.executeQuery("select * from travel.inventory");
								while(rs2.next()){
							%>
											<tr>
												<td><%=rs2.getString("name") %></td>
												<td><%=rs2.getString("store_1") %></td>
												<td><%= (Math.random()>0.5)?"origin_package_1":"origin_package_2"%></td>	
												<td><input type="button" name="" value="Need more!"  /></td>							
											</tr><%} %>
											
										</tbody>
										
									</table>
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
												<th>Tour package</th>
												<th>Package detail</th>
											</tr>
										</thead>
										<tbody>
										<%
										list = WaitingPurchasingList.returnPlanList(true);
										for(String s:list){
										%>
											<tr><%String[] ss = s.split("#"); 
											%>
												<td><%=ss[0] %></td>
												<td><%=ss[1] %></td>
											</tr><%} %>
											
										</tbody>
										
									</table>
								</div>
							</div>
				<div class="panel">
								<div class="panel-heading">
								<h3 class="panel-title">Market plans</h3>
								</div>
								<div class="panel-body">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>Marketing plan</th>
												<th>Marketing detail</th>
											</tr>
										</thead>
										<tbody>
										<%
										list = WaitingPurchasingList.returnPlanList(false);
										for(String s:list){
										%>
											<tr><%String[] ss = s.split("#"); %>
												<td><%=ss[0] %></td>
												<td><%=ss[1] %></td>
											</tr><%} %>
											
										</tbody>
										
									</table>
								</div>
							</div>
				</div>
				<div class="tab-pane fade" id="tab-bottom-left6">
				<form action = "ProductSendMessage?method=operation" method="post" onsubmit="return formsubmit(this)">
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
