<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
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
	<!--breadcrumbs area start-->
	<div class="breadcrumbs_area product_bread">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="breadcrumb_content">
						<ul>
							<li><a href="/Bai_tap_lon_spring_framework/">home</a></li>
							<li>/</li>
							<li>product details</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--breadcrumbs area end-->
	<!--product details start-->
	<div class="product_details">
		<div class="container">
			<div class="row">
				<div class="col-lg-5 col-md-5">
					<div class="product-details-tab">
						<div id="img-1" class="zoomWrapper single-zoom">
							<a href="#"> <img id="zoom1"
								src="<c:url value='resources'/>/images/${proDetail.productDeatil.listImages.get(0).imgName}"
								data-zoom-image="<c:url value='resources'/>/images/${proDetail.productDeatil.listImages.get(0).imgName}"
								alt="big-1">
							</a>
						</div>

						<div class="single-zoom-thumb">
							<ul class="s-tab-zoom owl-carousel single-product-active"
								id="gallery_01">
								<c:forEach items="${proDetail.productDeatil.listImages}"
									var="img">
									<li><a href="#" class="elevatezoom-gallery active"
										data-update=""
										data-image="<c:url value='resources'/>/images/${img.imgName}"
										data-zoom-image="<c:url value='resources'/>/images/${img.imgName}">
											<img src="<c:url value='resources'/>/images/${img.imgName}"
											alt="zo-th-1" />
									</a></li>
								</c:forEach>
							</ul>
						</div>

					</div>
				</div>
				<div class="col-lg-7 col-md-7">
					<div class="product_d_right">
						<form:form action="addToCart" method="post" modelAttribute="cartOrderDTO">
							<form:input path="proDetailId" type="hidden" value="${proDetail.proDetailId }" />
							<h1>${proDetail.productDeatil.productName}</h1>
							<div class=" product_ratting">
								<ul>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li><a href="#"><i class="fa fa-star"></i></a></li>
									<li class="review"><a href="#"> 1 review </a></li>
									<li class="review"><a href="#"> Write a review </a></li>
								</ul>
							</div>
							<div class="product_price">
								<c:choose>
									<c:when test="${proDetail.productDeatil.salePrice > '0'}">
										<span class="current_price"><fmt:formatNumber>${proDetail.productDeatil.salePrice}</fmt:formatNumber>VND
										</span>
										<span class="old_price"><fmt:formatNumber>${proDetail.productDeatil.price }</fmt:formatNumber>VND</span>
									</c:when>
									<c:otherwise>
										<span class="current_price"><fmt:formatNumber>${proDetail.productDeatil.price }</fmt:formatNumber>VND</span>
									</c:otherwise>
								</c:choose>
							</div>
							<div class="product_desc">
								<p>${proDetail.productDeatil.discription }</p>
							</div>

							<div class="product_variant color">
								<h3>color</h3>
								<form:select class="niceselect_option" id="color"
									path="color">
									<c:forEach items="${proDetail.listColor}" var="color">
										<form:option value="${color.color.colorId}">${color.color.colorName}</form:option>
									</c:forEach>

								</form:select>
							</div>
							<div class="product_variant size">
								<h3>size</h3>
								<form:select class="niceselect_option" id="color1"
									path="size">
									<c:forEach items="${proDetail.listSize}" var="size">
										<form:option value="${size.sizes.sizeId}">${size.sizes.sizeName}</form:option>
									</c:forEach>
								</form:select>
							</div>
							<div class="product_variant quantity">
								<label>quantity</label>
								<form:input min="1" max="100" value="1" type="number"
									path="quantity" />

								<c:choose>
									<c:when
										test="${pageContext.request.userPrincipal.name != null}">
										<button class="button" type="submit">add to cart</button>

									</c:when>
									<c:otherwise>
										<ul>
											<li><button class="button">
													<a href="/Bai_tap_lon_spring_framework/login">add to
														cart</a>
												</button></li>
										</ul>
									</c:otherwise>
								</c:choose>

							</div>
							<div class=" product_d_action">
								<ul>
									<li><a href="#" title="Add to wishlist"><i
											class="fa fa-heart-o" aria-hidden="true"></i> Add to Wish
											List</a></li>
									<li><a href="#" title="Add to Compare"><i
											class="fa fa-sliders" aria-hidden="true"></i> Compare this
											Product</a></li>
								</ul>
							</div>

						</form:form>
						<div class="priduct_social">
							<h3>Share on:</h3>
							<ul>
								<li><a href="#"><i class="fa fa-rss"></i></a></li>
								<li><a href="#"><i class="fa fa-vimeo"></i></a></li>
								<li><a href="#"><i class="fa fa-tumblr"></i></a></li>
								<li><a href="#"><i class="fa fa-pinterest"></i></a></li>
								<li><a href="#"><i class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>
	<!--product details end-->

	<!--product info start-->
	<div class="product_d_info">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="product_d_inner">
						<div class="product_info_button">
							<ul class="nav" role="tablist">
								<li><a class="active" data-bs-toggle="tab" href="#info"
									role="tab" aria-controls="info" aria-selected="false">More
										info</a></li>
								<li><a data-bs-toggle="tab" href="#sheet" role="tab"
									aria-controls="sheet" aria-selected="false">Data sheet</a></li>
								<li><a data-bs-toggle="tab" href="#reviews" role="tab"
									aria-controls="reviews" aria-selected="false">Reviews</a></li>
							</ul>
						</div>
						<div class="tab-content">
							<div class="tab-pane fade show active" id="info" role="tabpanel">
								<div class="product_info_content">
									<p>Fashion has been creating well-designed collections
										since 2010. The brand offers feminine designs delivering
										stylish separates and statement dresses which have since
										evolved into a full ready-to-wear collection in which every
										item is a vital part of a woman's wardrobe. The result? Cool,
										easy, chic looks with youthful elegance and unmistakable
										signature style. All the beautiful pieces are made in Italy
										and manufactured with the greatest attention. Now Fashion
										extends to a range of accessories including shoes, hats, belts
										and more!</p>
								</div>
							</div>

							<div class="tab-pane fade" id="sheet" role="tabpanel">
								<div class="product_d_table">
									<form action="#">
										<table>
											<tbody>
												<tr>
													<td class="first_child">Compositions</td>
													<td>Polyester</td>
												</tr>
												<tr>
													<td class="first_child">Styles</td>
													<td>Girly</td>
												</tr>
												<tr>
													<td class="first_child">Properties</td>
													<td>Short Dress</td>
												</tr>
											</tbody>
										</table>
									</form>
								</div>
								<div class="product_info_content">
									<p>Fashion has been creating well-designed collections
										since 2010. The brand offers feminine designs delivering
										stylish separates and statement dresses which have since
										evolved into a full ready-to-wear collection in which every
										item is a vital part of a woman's wardrobe. The result? Cool,
										easy, chic looks with youthful elegance and unmistakable
										signature style. All the beautiful pieces are made in Italy
										and manufactured with the greatest attention. Now Fashion
										extends to a range of accessories including shoes, hats, belts
										and more!</p>
								</div>
							</div>
							<div class="tab-pane fade" id="reviews" role="tabpanel">
								<div class="product_info_content">
									<p>Fashion has been creating well-designed collections
										since 2010. The brand offers feminine designs delivering
										stylish separates and statement dresses which have since
										evolved into a full ready-to-wear collection in which every
										item is a vital part of a woman's wardrobe. The result? Cool,
										easy, chic looks with youthful elegance and unmistakable
										signature style. All the beautiful pieces are made in Italy
										and manufactured with the greatest attention. Now Fashion
										extends to a range of accessories including shoes, hats, belts
										and more!</p>
								</div>
								<div class="product_info_inner">
									<div class="product_ratting mb-10">
										<ul>
											<li><a href="#"><i class="fa fa-star"></i></a></li>
											<li><a href="#"><i class="fa fa-star"></i></a></li>
											<li><a href="#"><i class="fa fa-star"></i></a></li>
											<li><a href="#"><i class="fa fa-star"></i></a></li>
											<li><a href="#"><i class="fa fa-star"></i></a></li>
										</ul>
										<strong>Posthemes</strong>
										<p>09/07/2022</p>
									</div>
									<div class="product_demo">
										<strong>demo</strong>
										<p>That's OK!</p>
									</div>
								</div>
								<div class="product_review_form">
									<form action="#">
										<h2>Add a review</h2>
										<p>Your email address will not be published. Required
											fields are marked</p>
										<div class="row">
											<div class="col-12">
												<label for="review_comment">Your review </label>
												<textarea name="comment" id="review_comment"></textarea>
											</div>
											<div class="col-lg-6 col-md-6">
												<label for="author">Name</label> <input id="author"
													type="text">

											</div>
											<div class="col-lg-6 col-md-6">
												<label for="email">Email </label> <input id="email"
													type="text">
											</div>
										</div>
										<button type="submit">Submit</button>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--product info end-->

	<!--product section area start-->
	<section class="product_section related_product">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="section_title">
						<h2>Related Products</h2>
						<p>Contemporary, minimal and modern designs embody the Lavish
							Alice handwriting</p>
					</div>
				</div>
			</div>
			<div class="product_area">
				<div class="row">
					<div class="product_carousel product_three_column4 owl-carousel">
						<c:forEach items="${relatedProducts.get(0).listCate }" var="rp">

							<div class="col-lg-3">
								<div class="single_product">
									<div class="product_thumb">
										<a class="primary_img" href="product-detail?proId=${rp.productId }&cateId=${rp.cate.cateId}"><img
											src="<c:url value='resources'/>/images/${rp.listImages.get(0).imgName}" style="height: 300px"
											alt=""></a> <a class="secondary_img"
											href="product-detail?proId=${rp.productId }&cateId=${rp.cate.cateId}"><img
											src="<c:url value='resources'/>/images/${rp.listImages.get(1).imgName}" style="height: 300px"
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
												data-bs-target="#modal_box" title="quick_view">+ quick
												view</a>
										</div>
									</div>
									<div class="product_content">
										<h3>
											<a href="product-details.html">JBL Flip 3 Portable</a>
										</h3>
										<span class="current_price">£60.00</span>
									</div>
								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--product section area end-->

	
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