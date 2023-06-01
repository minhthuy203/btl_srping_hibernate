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
							<li>My account</li>
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
		
                <!--register area start-->
                <div class="col-lg-12 col-md-12 ">
                    <h2>Please <a href="/Bai_tap_lon_spring_framework/login" style="color: red">Login</a> if you already have an account or <a href="/Bai_tap_lon_spring_framework/register"  style="color: red">Register</a> 
If you do not already have an account</h2>
                </div>
                <!--register area end-->
            </div>
        </div>    
    </div>
    <!-- customer login end -->

	<!--shopping cart area start -->
	<div class="shopping_cart_area">
		<div class="container">
			
		</div>
	</div>
	<!--shopping cart area end -->
<br />

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