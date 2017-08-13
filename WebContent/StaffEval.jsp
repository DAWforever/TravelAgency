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
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span>HR</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
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
				<li><a href="#tab-bottom-left2" role="tab" data-toggle="tab">Staff Allocation and Adjustment</a></li>
				<li><a href="#tab-bottom-left3" role="tab" data-toggle="tab">Staff Service Evaluation</a></li>
				<li><a href="#tab-bottom-left4" role="tab" data-toggle="tab">Comment on Staff</a></li>
				<li><a href="#tab-bottom-left6" role="tab" data-toggle="tab">Send Message</a></li>
			</ul>
		</div>
		<!-- END LEFT SIDEBAR -->
		<!-- MAIN -->
		<div class="main">
			<!-- MAIN CONTENT -->
			<div class="tab-content">
				<div class="tab-pane fade in active" id="tab-bottom-left1">
					<div class="container-fluid">
					<h3 class="page-title">Customer Feedback</h3>
					<div class="panel panel-headline">
						<div class="panel-body">						
							<h3>Staff</h3>		
								<p class="lead">Guide1</p>
							<hr>					
							<h3>Recommend Comment</h3>
								<p class="lead">Middle</p>
							<hr>					
							<h3>Comment from Operation Manger</h3>
								<p class="lead">Middle</p>
							<hr>						
							<h3>Feedback on the Staff</h3>
							<p><a href="UserFeedBack.jsp">Alice's feedback from Packge 1 on 2010-01-01</a></p>	
							<p><a href="">Dan's feedback from Packge 2 on 2010-01-19</a></p>
							<p><a href="">Dirk's feedback from Packge 2 on 2010-01-28</a></p>		
							<hr>
						</div>
					</div>
					<a href="HR.jsp">Back</a>
				</div>
				</div>
				<div class="tab-pane fade" id="tab-bottom-left2">
				<div class="panel">
								<div class="panel-heading">
									<h3 class="panel-title">Staff condition in area stores</h3>
								</div>
								<div class="panel-body">
									<table class="table table-bordered">
										<thead>
											<tr>
												<th>Store</th>
												<th>Available staff amount</th>
												<th>Minimum staff amount</th>
												<th>Condition</th>
											</tr>
										</thead>
										<tbody>										
											<tr>
												<td>Area A store</td>
												<td>0</td>
												<td>2</td>
												<td>											
												<span class="label label-danger">Short-hand</span>	
												</td>
											</tr>
											<tr>
												<td>Area B store</td>
												<td>3</td>
												<td>1</td>
												<td>
												<span class="label label-success">Abundant</span>	
												</td>
											</tr><tr>
												<td>Area C store</td>
												<td>1</td>
												<td>1</td>
												<td>
												<span class="label label-success">Abundant</span>	
												</td>
											</tr><tr>
												<td>Area D store</td>
												<td>1</td>
												<td>2</td>
												<td>
												<span class="label label-danger">Short-hand</span>	
												</td>
											</tr>
										</tbody>
									</table>
									<a href="AdjustStaff.jsp">Adjust Staff Allocation</a>
								</div>
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
									<th>Staff</th>
									<th>Store</th>
									<th>Comment</th>
									<th>Current state</th>										
									<th>History Comment</th>
								</tr>
							</thead>
							<tbody>
							<%
							ResultSet rs2 = stm.executeQuery("SELECT * FROM travel.user WHERE Role='staff'");
							Hashtable<String,String> names = new Hashtable<String,String>();
							while(rs2.next()){
							%>
								<tr><%names.put(rs2.getString("Name"),rs2.getString("Place")); %>
									<td><a href="StaffEval.jsp"><%=rs2.getString("Name") %></a></td>
									<td><%=rs2.getString("Place") %></td>
									<td><%String com = rs2.getString("Comment");
											String lab = (com.equals("High")?"success":(com.equals("Low")?"danger":"primary"));
										%>
										<span class="label label-<%=lab %>"><%=com %></span>	
									</td>												
									<td><%=rs2.getString("State") %></td>
									<td><a href="StaffEval.jsp">details</a></td>
								</tr>
							<%}rs2.close();%>
							</tbody>
						</table>						
					</div>
				</div>
				</div>
				
				<div class="tab-pane fade" id="tab-bottom-left4">
				<form action = "CommentUpdate?method=hr" method="post" onsubmit="return formsubmit(this)">
					<div class="panel">
					<div class="panel-heading">
						<h3 class="panel-title">Feedback collected from Internet written by customers</h3>
					</div>
					<div class="panel-body">
						<table class="table table-bordered">
							<thead>
								<tr>
									<th>Staff</th>
									<th>Store</th>
									<th>Give comment</th>
								</tr>
							</thead>
							<tbody><%for(Map.Entry<String, String> e:names.entrySet()){ %>
								<tr>
									<td><a href="UserFeedBack.jsp"><%=e.getKey() %></a></td>
									<td><%=e.getValue() %></td>
									<td>
										<label class="fancy-radio">
												<input name="judge<%=e.getKey() %>" value="High" type="radio">
												<span><i></i>High</span>
												</label>
												<label class="fancy-radio">
												<input name="judge<%=e.getKey() %>" value="Middle" type="radio">
												<span><i></i>Middle</span>
												</label>
												<label class="fancy-radio">
												<input name="judge<%=e.getKey() %>" value="Low" type="radio">
												<span><i></i>Low</span>
												</label>
									</td>
								</tr>
								<%} %>
							</tbody>
						</table>
						<button type="submit" class="btn btn-primary btn-lg btn-block">Submit</button>						
					</div>
				</div>
				</form>
				</div>
				
				<div class="tab-pane fade" id="tab-bottom-left6">
				<form action = "ProductSendMessage?method=purchase" method="post" onsubmit="return formsubmit(this)">
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

