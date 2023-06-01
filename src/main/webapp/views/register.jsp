<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
<style>
.colorErr{
color:red
}
</style>
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
							<li>login</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--breadcrumbs area end-->


	<!-- customer login start -->
	<div class="customer_login">
		<div class="container">
			<div class="row">
				<div class="col-lg-3 col-md-3 "></div>
				<!--register area start-->
				<div class="col-lg-6 col-md-6 ">
					<div class="account_form register ">
						<h2>Register</h2>
						<h4 style="color: red">${err }</h4>
						<form:form action="regis" method="post" modelAttribute="register">

							<p>
								<label>Full Name <span>*</span></label>
								<form:input type="text" path="fullName" />
								<br>
								<form:errors path="fullName" cssClass="colorErr"/>
							</p>
							<p>

								<form:input type="hidden" path="enable" value="1" />
							</p>
							<p>
								<label>User Name <span>*</span></label>
								<form:input type="text" path="accountName" />
								<br>
								<form:errors path="accountName" cssClass="colorErr"/>
							</p>
							<p>
								<label>Gender <span>*</span>
								</label>
								<form:radiobutton path="gender" value="true"
									style="width: 20px !important" />
								Male
								<form:radiobutton path="gender" value="false"
									style="width: 20px !important" />
								Female
								<br>
								<form:errors path="gender" cssClass="colorErr"/>
							</p>
							<p>
								<label>Birthday<span>*</span></label>
								<form:input type="date" path="birthday" />
								<br>
								<form:errors path="birthday" cssClass="colorErr"/>
							</p>
							<p>
								<label>Address <span>*</span></label>
								<form:input type="text" path="address" />
								<br>
								<form:errors path="address" cssClass="colorErr"/>
							</p>
							<p>
								<label>Email<span>*</span></label>
								<form:input type="email" path="email" />
								<br>
								<form:errors path="email" cssClass="colorErr"/>
							</p>
							<p>
								<label>Telephone<span>*</span></label>
								<form:input type="tel" path="telephone" />
								<br>
								<form:errors path="telephone" cssClass="colorErr"/>
							</p>
							<p>
								<label>Passwords <span>*</span></label>
								<form:input type="password" path="password" />
								<br>
								<form:errors path="password" cssClass="colorErr"/>
							</p>
							<div class="login_submit">
								<button type="submit">Register</button>
							</div>
						</form:form>
					</div>
				</div>
				<!--register area end-->
			</div>
		</div>
	</div>
	<!-- customer login end -->

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