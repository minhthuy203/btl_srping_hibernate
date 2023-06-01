<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Main Wrapper Start -->
<!--Offcanvas menu area start-->
<div class="off_canvars_overlay"></div>
<header class="header_area header_three">
	<!--header top start-->
	<div class="header_top">
		<div class="container-fluid">
			<div class="row align-items-center">
				<div class="col-lg-7 col-md-12">
					<div class="welcome_text">
						<ul>
							<li><span>Free Delivery:</span> Take advantage of our time
								to save event</li>
							<li><span>Free Returns *</span> Satisfaction guaranteed</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-5 col-md-12">
					<div class="top_right text-right">
						<ul>
							<li class="top_links"><a href="#">My Account <i
									class="ion-chevron-down"></i></a>
								<ul class="dropdown_links">
									<li><a href="/Bai_tap_lon_spring_framework/my-account">My
											Account </a></li>
									
									
								</ul></li>
							<li class="language"><a
								href="/Bai_tap_lon_spring_framework/"><img
									src="<c:url value='resources'/>/img/logo/language.png" alt="">
									English <i class="ion-chevron-down"></i></a>
								<ul class="dropdown_language">
									<li><a href="#"><img
											src="<c:url value='resources'/>/img/logo/cigar.jpg" alt="">
											French</a></li>
									<li><a href="#"><img
											src="<c:url value='resources'/>/img/logo/language2.png"
											alt="">German</a></li>
								</ul></li>
							<li class="currency"><a href="#">USD <i
									class="ion-chevron-down"></i></a>
								<ul class="dropdown_currency">
									<li><a href="#">EUR</a></li>
									<li><a href="#">BRL</a></li>
								</ul></li>

						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--header top start-->

	<!--header middel start-->
	<div class="header_middel">
		<div class="container-fluid">
			<div class="middel_inner">
				<div class="row align-items-center">
					<div class="col-lg-4">
						<div class="search_bar">
							<form action="#">
								<input placeholder="Search entire store here..." type="text">
								<button type="submit">
									<i class="ion-ios-search-strong"></i>
								</button>
							</form>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="logo">
							<a href="/Bai_tap_lon_spring_framework/"><img
								src="<c:url value='resources'/>/img/logo/logo.png" alt=""></a>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="cart_area">
							<div class="middel_links">
								<c:choose>
									<c:when
										test="${pageContext.request.userPrincipal.name != null}">
									

									</c:when>
									<c:otherwise>
										<ul>
											<li><a href="/Bai_tap_lon_spring_framework/login">Login</a></li>
											<li>/</li>
											<li><a href="/Bai_tap_lon_spring_framework/register">Register</a></li>
										</ul>
									</c:otherwise>
								</c:choose>
							</div>
							<div class="cart_link">
								<a href="/Bai_tap_lon_spring_framework/cart"><i
									class="fa fa-shopping-basket"></i>2 item(s)</a>
							</div>

							
						</div>
					</div>
				</div>
			</div>

		</div>
	</div>

	<!--header middel end-->

	<!--header bottom satrt-->
	<div class="header_bottom sticky-header">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-12">
					<div class="main_menu_inner">
						<div class="main_menu">
							<nav>
								<ul>
									<li class="active"><a
										href="/Bai_tap_lon_spring_framework/">Home</a></li>
									<li><a href="/Bai_tap_lon_spring_framework/about-us">About
											us</a></li>
									<li><a href="/Bai_tap_lon_spring_framework/contact">Contact
											Us</a></li>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--header bottom end-->
</header>
<!--header area end-->


