<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
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
	<!--slider area start-->
	<div class="slider_area slider_style home_three_slider owl-carousel">
		<div class="single_slider"
			data-bgimg="<c:url value='resources'/>/img/slider/slider4.png">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-12">
						<div class="slider_content content_one">
							<img src="<c:url value='resources'/>/img/slider/content3.png"
								alt="">
							<p>the wooboom clothing summer collection is back at half
								price</p>
							<a href="#">Discover Now</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="single_slider"
			data-bgimg="<c:url value='resources'/>/img/slider/slider5.png">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-12">
						<div class="slider_content content_two">
							<img src="<c:url value='resources'/>/img/slider/content4.png"
								alt="">
							<p>the wooboom clothing summer collection is back at half
								price</p>
							<a href="#">Discover Now</a>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="single_slider"
			data-bgimg="<c:url value='resources'/>/img/slider/slider6.png">
			<div class="container">
				<div class="row align-items-center">
					<div class="col-12">
						<div class="slider_content content_three">
							<img src="<c:url value='resources'/>/img/slider/content5.png"
								alt="">
							<p>the wooboom clothing summer collection is back at half
								price</p>
							<a href="#">Discover Now</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--slider area end-->
	<!--banner area start-->
	<div class="banner_section banner_section_three">
		<div class="container-fluid">
			<div class="row ">
				<div class="col-lg-4 col-md-6">
					<div class="banner_area">
						<div class="banner_thumb">
							<a href="#"><img
								src="<c:url value='resources'/>/img/bg/banner8.jpg" alt="#"></a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="banner_area">
						<div class="banner_thumb">
							<a href="#"><img
								src="<c:url value='resources'/>/img/bg/banner9.jpg" alt="#"></a>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="banner_area bottom">
						<div class="banner_thumb">
							<a href="#"><img
								src="<c:url value='resources'/>/img/bg/banner10.jpg" alt="#"></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--banner area end-->


	<!--product section area start-->
	<section class="product_section womens_product">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section_title">
						<h2>Our Products</h2>
						<p>Contemporary, minimal and modern designs embody the Lavish
							Alice handwriting</p>
					</div>
				</div>
			</div>
			<div class="product_area">
				<div class="row">
					<div class="col-12">
						<div class="product_tab_button">
							<ul class="nav" role="tablist">
								<li><a data-bs-toggle="tab" href="#all" role="tab"
									aria-controls="all" aria-selected="true">All</a></li>
								<c:forEach items="${listCate }" var="c">
									<li><a data-bs-toggle="tab" href="#${c.cateName}"
										role="tab" aria-controls="${c.cateName}" aria-selected="true">${c.cateName}</a>
									</li>
								</c:forEach>
							</ul>
						</div>
					</div>
				</div>

				<div class="tab-content">

					<div class="tab-pane fade show active" id="all" role="tabpanel">
						<div class="product_container">
							<div class="row product_column4">
								<c:forEach items="${listPro }" var="p">
									<div class="col-lg-3">
										<div class="single_product">
											<div class="product_thumb">
												<a class="primary_img"
													href="/Bai_tap_lon_spring_framework/product-detail?proId=${p.productId}&cateId=${p.cate.cateId}"><img
													style="height: 300px"
													src="${pageContext.request.contextPath}/<c:url value='resources'/>/images/${p.listImages.get(0).imgName}"
													alt=""></a> <a class="secondary_img"
													href="/Bai_tap_lon_spring_framework/product-detail?proId=${p.productId}&cateId=${p.cate.cateId}"><img
													style="height: 300px"
													src="${pageContext.request.contextPath}/<c:url value='resources'/>/images/${p.listImages.get(1).imgName}"
													alt=""></a>
												<div class="product_action">
													<div class="hover_action">
														<a href="#"><i class="fa fa-plus"></i></a>
														<div class="action_button">
															<ul>

																<li><a title="add to cart" href="cart.html"><i
																		class="fa fa-shopping-basket" aria-hidden="true"></i></a></li>
																<li><a href="wishlist.html" title="Add to Wishlist"><i
																		class="fa fa-heart-o" aria-hidden="true"></i></a></li>

																<li><a href="compare.html" title="Add to Compare"><i
																		class="fa fa-sliders" aria-hidden="true"></i></a></li>

															</ul>
														</div>
													</div>

												</div>
												<div class="quick_button">
													<a href="#" data-bs-toggle="modal"
														data-bs-target="#modal_box${p.productId}"
														title="quick_view">+ quick view</a>
												</div>

												<div class="product_sale">
													<span>-7%</span>
												</div>
											</div>
											<div class="product_content">
												<h3>
													<a href="product-details.html">${p.productName}</a>
												</h3>
												<c:choose>
													<c:when
														test="${p.salePrice > '0'}">
														<span class="current_price"><fmt:formatNumber>${p.salePrice} </fmt:formatNumber>VND
														</span>
														<span class="old_price"><s><fmt:formatNumber>${p.price } </fmt:formatNumber>VND</s></span>
													</c:when>
													<c:otherwise>
														<span class="current_price"><fmt:formatNumber>${p.price } </fmt:formatNumber>VND</span>
													</c:otherwise>
												</c:choose>
											</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>



					</div>
					<c:forEach items="${listCate }" var="c">

						<div class="tab-pane fade show" id="${c.cateName}" role="tabpanel">
							<div class="product_container">
								<div class="row product_column4">
									<c:forEach items="${c.listCate }" var="p">
										<div class="col-lg-3">
											<div class="single_product">
												<div class="product_thumb">
													<a class="primary_img"
														href="/Bai_tap_lon_spring_framework/product-detail?proId=${p.productId}&cateId=${p.cate.cateId}"><img
														style="height: 300px"
														src="${pageContext.request.contextPath}/<c:url value='resources'/>/images/${p.listImages.get(0).imgName}"
														alt=""></a> <a class="secondary_img"
														href="/Bai_tap_lon_spring_framework/product-detail?proId=${p.productId}&cateId=${p.cate.cateId}"><img
														style="height: 300px"
														src="${pageContext.request.contextPath}/<c:url value='resources'/>/images/${p.listImages.get(1).imgName}"
														alt=""></a>
													<div class="product_action">
														<div class="hover_action">
															<a href="#"><i class="fa fa-plus"></i></a>
															<div class="action_button">
																<ul>

																	<li><a title="add to cart" href="cart.html"><i
																			class="fa fa-shopping-basket" aria-hidden="true"></i></a></li>
																	<li><a href="wishlist.html"
																		title="Add to Wishlist"><i class="fa fa-heart-o"
																			aria-hidden="true"></i></a></li>

																	<li><a href="compare.html" title="Add to Compare"><i
																			class="fa fa-sliders" aria-hidden="true"></i></a></li>

																</ul>
															</div>
														</div>

													</div>
													<div class="quick_button">
														<a href="#" data-bs-toggle="modal"
															data-bs-target="#modal_box${p.productId}"
															title="quick_view">+ quick view</a>
													</div>

													<div class="product_sale">
														<span>-7%</span>
													</div>
												</div>
												<div class="product_content">
													<h3>
														<a
															href="/Bai_tap_lon_spring_framework/product-detail?proId=${p.productId}&cateId=${p.cate.cateId}">${p.productName}</a>
													</h3>
														<c:choose>
													<c:when
														test="${p.salePrice > '0'}">
														<span class="current_price"><fmt:formatNumber>${p.salePrice} </fmt:formatNumber>VND
														</span>
														<span class="old_price"><s><fmt:formatNumber>${p.price } </fmt:formatNumber>VND</s></span>
													</c:when>
													<c:otherwise>
														<span class="current_price"><fmt:formatNumber>${p.price } </fmt:formatNumber>VND</span>
													</c:otherwise>
												</c:choose>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div>



	</section>
	<!--product section area end-->

	<!--banner area start-->
	<section class="banner_section banner_section_three">
		<div class="container-fluid">
			<div class="row ">
				<div class="col-lg-6 col-md-6">
					<div class="banner_area">
						<div class="banner_thumb">
							<a href="#"><img
								src="<c:url value='resources'/>/img/bg/banner11.jpg" alt="#"></a>
							<div class="banner_content">
								<h1>
									Handbag <br> Men’s Collection
								</h1>
								<a href="#">Discover Now</a>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-6 col-md-6">
					<div class="banner_area">
						<div class="banner_thumb">
							<a href="#"><img
								src="<c:url value='resources'/>/img/bg/banner12.jpg" alt="#"></a>
							<div class="banner_content">
								<h1>
									Sneaker <br> Men’s Collection
								</h1>
								<a href="#">Discover Now</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--banner area end-->


	<!--blog section area start-->
	<section class="blog_section blog_section_three">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section_title">
						<h2>Latest Blogs</h2>
						<p>Contemporary, minimal and modern designs embody the Lavish
							Alice handwriting</p>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="blog_wrapper blog_column3 owl-carousel">
					<div class="col-lg-4">
						<div class="single_blog">
							<div class="blog_thumb">
								<a href="/Bai_tap_lon_spring_framework/blog"><img
									src="<c:url value='resources'/>/img/blog/blog1.jpg" alt=""></a>
								<div class="blog_icon">
									<a href="/Bai_tap_lon_spring_framework/blog"></a>
								</div>
							</div>
							<div class="blog_content">
								<h3>
									<a href="/Bai_tap_lon_spring_framework/blog">Mercedes Benz–
										Mirror To The Soul 360</a>
								</h3>
								<div class="author_name">
									<p>
										<span class="post_by">by</span> <span class="themes">ecommerce
											Themes</span> / 30 Oct 2017
									</p>

								</div>
								<div class="post_desc">
									<p>Maria Denardo is the Fashion Director at theFashionSpot.
										Prior to joining tFS, she worked as...</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="single_blog">
							<div class="blog_thumb">
								<a href="/Bai_tap_lon_spring_framework/blog"><img
									src="<c:url value='resources'/>/img/blog/blog2.jpg" alt=""></a>
								<div class="blog_icon">
									<a href="/Bai_tap_lon_spring_framework/blog"></a>
								</div>
							</div>
							<div class="blog_content">
								<h3>
									<a href="/Bai_tap_lon_spring_framework/blog">Dior F/W 2015
										First Fashion Experience</a>
								</h3>
								<div class="author_name">
									<p>
										<span class="post_by">by</span> <span class="themes">ecommerce
											Themes</span> / 30 Oct 2017
									</p>

								</div>
								<div class="post_desc">
									<p>Maria Denardo is the Fashion Director at theFashionSpot.
										Prior to joining tFS, she worked as...</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="single_blog">
							<div class="blog_thumb">
								<a href="/Bai_tap_lon_spring_framework/blog"><img
									src="<c:url value='resources'/>/img/blog/blog3.jpg" alt=""></a>
								<div class="blog_icon">
									<a href="/Bai_tap_lon_spring_framework/blog"></a>
								</div>
							</div>
							<div class="blog_content">
								<h3>
									<a href="/Bai_tap_lon_spring_framework/blog">London Fashion
										Week & Royal Day</a>
								</h3>
								<div class="author_name">
									<p>
										<span class="post_by">by</span> <span class="themes">ecommerce
											Themes</span> / 30 Oct 2017
									</p>

								</div>
								<div class="post_desc">
									<p>Maria Denardo is the Fashion Director at theFashionSpot.
										Prior to joining tFS, she worked as...</p>
								</div>
							</div>
						</div>
					</div>
					<div class="col-lg-4">
						<div class="single_blog">
							<div class="blog_thumb">
								<a href="/Bai_tap_lon_spring_framework/blog"><img
									src="<c:url value='resources'/>/img/blog/blog2.jpg" alt=""></a>
								<div class="blog_icon">
									<a href="/Bai_tap_lon_spring_framework/blog"></a>
								</div>
							</div>
							<div class="blog_content">
								<h3>
									<a href="/Bai_tap_lon_spring_framework/blog">Best of New
										York Spring/Summer 2016</a>
								</h3>
								<div class="author_name">
									<p>
										<span class="post_by">by</span> <span class="themes">ecommerce
											Themes</span> / 30 Oct 2017
									</p>

								</div>
								<div class="post_desc">
									<p>Maria Denardo is the Fashion Director at theFashionSpot.
										Prior to joining tFS, she worked as...</p>
								</div>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</section>
	<!--blog section area end-->

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