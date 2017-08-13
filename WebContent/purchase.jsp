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
							<a href="#" class="dropdown-toggle" data-toggle="dropdown"><span>Purchase</span> <i class="icon-submenu lnr lnr-chevron-down"></i></a>
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
				<li><a href="#tab-bottom-left2" role="tab" data-toggle="tab">Get plan list</a></li>
				<li><a href="#tab-bottom-left3" role="tab" data-toggle="tab">Generate initiative list</a></li>
				<li><a href="#tab-bottom-left4" role="tab" data-toggle="tab">Check reply from PCD</a></li>
				<li><a href="#tab-bottom-left5" role="tab" data-toggle="tab">Send final list to area stores</a></li>
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
						<div class="clearfix">
							<!-- LEFT COLUMN -->
							<div class="profile-left">
								<!-- PROFILE HEADER -->
								<div class="profile-header">
									<div class="overlay"></div>
									<div class="profile-main">
										<img src="assets/img/fox.png" class="img-circle" alt="Avatar">
																				
										<h3 class="name">Purchase</h3>
									</div>
								</div>
								<!-- END PROFILE HEADER -->
								<!-- PROFILE DETAIL -->
								<div class="profile-detail">
									<div class="profile-info">
										<h4 class="heading">Basic Info</h4>
										<ul class="list-unstyled list-justify">
										<%
										ResultSet rs =stm.executeQuery("select * from travel.user where Name = 'purchase'");
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
										rs =stm.executeQuery("select * from travel.message where message.to = 'purchase'");
										
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
												<th>Product or service</th>
												<th>Amount</th>
												<th>Target store</th>
												<th>Tour package</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>hotel in dest_1 for 1 day</td>
												<td>5</td>
												<td>area A store</td>
												<td>package_1</td>
											</tr>			
											<tr>
												<td>hotel in dest_2 for 1 day</td>
												<td>5</td>
												<td>area A store</td>
												<td>package_1</td>
											</tr>	
											<tr>
												<td>ticket_1 in dest_1</td>
												<td>10</td>
												<td>area A store</td>
												<td>package_1</td>
											</tr>	
											<tr>
												<td>hotel in dest_3 for 2 days</td>
												<td>8</td>
												<td>area B store</td>
												<td>package_2</td>
											</tr>		
											<tr>
												<td>ticket_2 in dest_3</td>
												<td>16</td>
												<td>area B store</td>
												<td>package_2</td>
											</tr>	
											<tr>
												<td>ticket_3 in dest_3</td>
												<td>8</td>
												<td>area B store</td>
												<td>package_2</td>
											</tr>									
										</tbody>
									</table>
								</div>
								<input type='button' value='Show origin plan' onclick='ShowOrHide();' />
								<div id='divContent' style='display:none'>
								
									<table class="table table-bordered">
									<tr>
									<td>We have made two new package plans. They're package_1 and package_2.</td>
									</tr>
									<tr>
									<td>In package 1 for Area A Store, we prepare a package for 10 tourists, including 5 hotels in dest_1 for 1 day and another 5 hotels in dest_2 for 1 day. Besides, we plan ticket_1 for all 10 tourists.</td>
									</tr>
									<tr>
									<td>In package 2 for Area B Store, we prepare a package for 16 tourists, including 8 hotels in dest_1 for 1 day. Besides, we plan ticket_2 for all tourists and the same amount of ticket_3, both in dest_3.</td>
									</tr>
									</table>
								</div>
							<script type='text/javascript'>
								var ShowOrHide=function()
								{
  		  							var divContent=document.getElementById('divContent');
    								if(divContent.style.display=='none')
    								{
        								divContent.style.display='block';
    								}
									else
									{
        								divContent.style.display='none';
									}
								}
							</script>
							</div>
				</div>
				<div class="tab-pane fade" id="tab-bottom-left3">
				<form action = "SendList?method=initial" method="post" onsubmit="return formsubmit(this)">
					<div class="panel-body">
						<input type="text" name="product_name" class="form-control" placeholder="Name of product or service">
						<br>
						
						<input type="text" name="package" class="form-control" placeholder="Belonging package">
						<br>
						<br>
						<button type="submit" class="btn btn-primary btn-lg btn-block">Send</button>
					</div>
				</form>
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
												<th>#</th>
												<th>Product or service</th>
												<th>Tour package</th>
											</tr>
										</thead>
										<tbody>
										<%
										List<String> list = WaitingPurchasingList.returnList(false);
										for(String s:list){
										%>
											<tr><%String[] ss = s.split(","); %>
												<td><%=ss[0] %></td>
												<td><%=ss[1] %></td>
												<td><%=ss[2] %></td>
												<td>
												<%if(ss[3].equals("2")){ %>
												<span class="label label-success">APPROVED</span>
												<%}else{ %>
												<span class="label label-danger">REJECTED</span>												
												<%} %>
												</td>
											</tr><%} %>
											
										</tbody>
										
									</table>
								</div>
							</div>
				</div>
				<div class="tab-pane fade" id="tab-bottom-left5">
				<form action = "InventoryChange?method=purchase" method="post" onsubmit="return formsubmit(this)">
					<div class="panel-body">
						<input type="text" name="product" class="form-control" placeholder="Name of product or service">
						<br>
						<input type="text" name="amount" class="form-control" placeholder="Amount">
						<br>
						<select name="store" class="form-control">
										<option value="store_1">Area A store</option>
										<option value="store_2">Area B store</option>
										<option value="store_3">Area C store</option>
										<option value="store_4">Area D store</option>
									</select>
									<br>
						<input type="text" name="package" class="form-control" placeholder="Belonging package">
						<br>
						<br>
						<button type="submit" class="btn btn-primary btn-lg btn-block">Send</button>
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
