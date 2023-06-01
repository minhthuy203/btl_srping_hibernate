<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html class="no-js" lang="en">


<!-- Mirrored from htmldemo.net/reid/reid/index-3.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 21 Apr 2023 07:39:21 GMT -->
<head>
<meta charset="utf-8">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<title>Reid - Fashion eCommerce HTML Template</title>
<meta name="description" content="">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon"
	href="<c:url value='resources'/>/img/favicon.ico">

<!-- CSS 
    ========================= -->


<!-- Plugins CSS -->
<link rel="stylesheet" href="<c:url value='resources'/>/css/plugins.css">

<!-- Main Style CSS -->
<link rel="stylesheet" href="<c:url value='resources'/>/css/style.css">

</head>

<body>
	<%@include file="header.jsp"%>
	<!--breadcrumbs area start-->
	<div class="breadcrumbs_area other_bread">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="breadcrumb_content">
						<ul>
							<li><a href="/Bai_tap_lon_spring_framework/">home</a></li>
							<li>/</li>
							<li>my account</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--breadcrumbs area end-->

	<!-- my account start  -->
	<section class="main_content_area">
		<div class="container">
			<div class="account_dashboard">
				<div class="row">
					<div class="col-sm-12 col-md-3 col-lg-3">
						<!-- Nav tabs -->
						<div class="dashboard_tab_button">
							<ul role="tablist" class="nav flex-column dashboard-list">
								<li><a href="#dashboard" data-bs-toggle="tab"
									class="nav-link active">Dashboard</a></li>
								<li><a href="#orders" data-bs-toggle="tab" class="nav-link">Orders</a></li>
								<li><a href="#downloads" data-bs-toggle="tab"
									class="nav-link">Downloads</a></li>
								<li><a href="#address" data-bs-toggle="tab"
									class="nav-link">Addresses</a></li>
								<li><a href="#account-details" data-bs-toggle="tab"
									class="nav-link">Account details</a></li>
								<li><form action="<c:url value="/j_spring_security_logout" />" method="post">
										<input type="hidden" name="${_csrf.parameterName}"
											value="${_csrf.token}" /> <input class="nav-link" type="submit"
											value="Logout" />

									</form>
								</li>
								
							</ul>
						</div>
					</div>
					<div class="col-sm-12 col-md-9 col-lg-9">
						<!-- Tab panes -->
						<div class="tab-content dashboard_content">
							<div class="tab-pane fade show active" id="dashboard">
								<h3>Dashboard</h3>
								<p>
									From your account dashboard. you can easily check &amp; view
									your <a href="#">recent orders</a>, manage your <a href="#">shipping
										and billing addresses</a> and <a href="#">Edit your password
										and account details.</a>
								</p>
							</div>
							<div class="tab-pane fade" id="orders">
								<h3>Orders</h3>
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>Order</th>
												<th>Date</th>
												<th>Status</th>
												<th>Total</th>
												<th>Actions</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>1</td>
												<td>May 10, 2022</td>
												<td><span class="success">Completed</span></td>
												<td>$25.00 for 1 item</td>
												<td><a href="cart.html" class="view">view</a></td>
											</tr>
											<tr>
												<td>2</td>
												<td>May 10, 2022</td>
												<td>Processing</td>
												<td>$17.00 for 1 item</td>
												<td><a href="cart.html" class="view">view</a></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="tab-pane fade" id="downloads">
								<h3>Downloads</h3>
								<div class="table-responsive">
									<table class="table">
										<thead>
											<tr>
												<th>Product</th>
												<th>Downloads</th>
												<th>Expires</th>
												<th>Download</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>Shopnovilla - Free Real Estate PSD Template</td>
												<td>May 10, 2022</td>
												<td><span class="danger">Expired</span></td>
												<td><a href="#" class="view">Click Here To Download
														Your File</a></td>
											</tr>
											<tr>
												<td>Organic - ecommerce html template</td>
												<td>Sep 11, 2022</td>
												<td>Never</td>
												<td><a href="#" class="view">Click Here To Download
														Your File</a></td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>
							<div class="tab-pane" id="address">
								<p>The following addresses will be used on the checkout page
									by default.</p>
								<h4 class="billing-address">Billing address</h4>
								<a href="#" class="view">Edit</a>
								<p>
									<strong>Bobby Jackson</strong>
								</p>
								<address>
									House #15<br> Road #8<br> Your address <br> goes
									here <br> 1212
								</address>
								<p>New York</p>
							</div>
							<div class="tab-pane fade" id="account-details">
								<h3>Account details</h3>
								<div class="login">
									<div class="login_form_container">
											<h3>Welcome: ${pageContext.request.userPrincipal.name}</h3>
											<h2>Information:</h2>
											<h4>User name: ${acc.username}</h4>
											<h4>Full name: ${acc.fullName}</h4>
											<h4>Address: ${acc.address}</h4>
											<h4>Email: ${acc.email}</h4>
											<h4>Telephone: ${acc.telephone}</h4>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- my account end   -->



	<%@include file="footer.jsp"%>

	<%@include file="Modal_Prodect_cart.jsp"%>

	<!-- JS
============================================ -->

	<!-- Plugins JS -->
	<script src="<c:url value='resources'/>/js/plugins.js"></script>

	<!-- Main JS -->
	<script src="<c:url value='resources'/>/js/main.js"></script>



</body>


<!-- Mirrored from htmldemo.net/reid/reid/index-3.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 21 Apr 2023 07:39:26 GMT -->
</html>