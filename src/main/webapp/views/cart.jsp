<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
							<li>cart</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--breadcrumbs area end-->

	<!--shopping cart area start -->
	<div class="shopping_cart_area">
		<div class="container">
			<div class="row">
				<div class="col-12">
					<div class="table_desc">
						<div class="cart_page table-responsive w-100">
							<table>
								<thead>
									<tr>
										<th class="product_remove">Delete</th>
										<th class="product_thumb">Image</th>
										<th class="product_name">Product</th>
										<th class="product-price">Price</th>
										<th class="product_quantity">Quantity</th>
										<th class="product_total">Total</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach items="${listCart }" var="ca">

										<tr>
											<td class="product_remove"><a
												href="/Bai_tap_lon_spring_framework/delete-cart?id=${ca.id }"
												onclick=" return confirm('Are you sure you want to continue')"><i
													class="fa fa-trash-o"></i></a></td>
											<td class="product_thumb"><a
												href="/Bai_tap_lon_spring_framework/product-detail?proId=${ca.proOrderDetail.productDeatil.productId}&cateId=${ca.proOrderDetail.productDeatil.cate.cateId}"><img
													src="<c:url value='resources'/>/images/${ca.proOrderDetail.productDeatil.listImages.get(0).imgName}"
													alt=""></a></td>
											<td class="product_name"><a
												href="/Bai_tap_lon_spring_framework/product-detail?proId=${ca.proOrderDetail.productDeatil.productId}&cateId=${ca.proOrderDetail.productDeatil.cate.cateId}">${ca.proOrderDetail.productDeatil.productName}</a>
											</td>
											<td class="product-price"><c:choose>
													<c:when
														test="${ca.proOrderDetail.productDeatil.salePrice > '0'}">
														<span class="current_price"><fmt:formatNumber>${ca.proOrderDetail.productDeatil.salePrice}</fmt:formatNumber>VND
														</span>
														<span class="old_price"><s><fmt:formatNumber>${ca.proOrderDetail.productDeatil.price }</fmt:formatNumber></s>VND</span>
													</c:when>
													<c:otherwise>
														<span class="current_price"><fmt:formatNumber>${ca.proOrderDetail.productDeatil.price }</fmt:formatNumber>VND</span>
													</c:otherwise>
												</c:choose></td>


											<td class="product_quantity"><form:form
													action="updateCart" method="post"
													modelAttribute="updateCart1">
													<input name="id" value="${ca.id }" type="hidden" />
													<input name="proDetailId"
														value=${ca.proOrderDetail.proDetailId } type="hidden">
													<form:select class="niceselect_option" path="color">
														<c:forEach items="${ca.proOrderDetail.listColor }"
															var="color">
															<c:choose>
																<c:when test="${ca.color==color.color.colorId}">
																	<option selected value="${ca.color}">${color.color.colorName}</option>
																</c:when>
																<c:otherwise>
																	<form:option value="${color.color.colorId}">${color.color.colorName}</form:option>
																</c:otherwise>
															</c:choose>
														</c:forEach>
													</form:select>
													<form:select class="niceselect_option" path="size">
														<c:forEach items="${ca.proOrderDetail.listSize }"
															var="size">
															<c:choose>
																<c:when test="${ca.size == size.sizes.sizeId}">
																	<option selected value="${ca.size}">${size.sizes.sizeName}</option>
																</c:when>
																<c:otherwise>
																	<form:option value="${size.sizes.sizeId}">${size.sizes.sizeName}</form:option>
																</c:otherwise>
															</c:choose>
														</c:forEach>
													</form:select>
													<form:input min="1" max="100" value="${ca.quantity }"
														path="quantity" type="number" />
													<div class="cart_submit">
														<button type="submit">update cart</button>
													</div>
												</form:form></td>
											<td class="product_total"><c:choose>
													<c:when
														test="${ca.proOrderDetail.productDeatil.salePrice > '0'}">
														<span class="current_price"><fmt:formatNumber>${ca.proOrderDetail.productDeatil.salePrice * ca.quantity}</fmt:formatNumber>VND
														</span>
													</c:when>
													<c:otherwise>
														<span class="current_price"><fmt:formatNumber>${ca.proOrderDetail.productDeatil.price * ca.quantity}</fmt:formatNumber>VND</span>
													</c:otherwise>
												</c:choose></td>
										</tr>

									</c:forEach>

								</tbody>
							</table>
						</div>

					</div>
				</div>
			</div>

			<!--coupon code area start-->
			<div class="coupon_area">
				<div class="row">
					<div class="col-lg-6 col-md-6">
						<div class="coupon_code left">
							<h3>Coupon</h3>
							<div class="coupon_inner">
								<p>Enter your coupon code if you have one.</p>
								<input placeholder="Coupon code" type="text">
								<button type="submit">Apply coupon</button>
							</div>
						</div>
					</div>
					<div class="col-lg-6 col-md-6">
						<div class="coupon_code right">
							<h3>Cart Totals</h3>
							<div class="coupon_inner">
								<div class="cart_subtotal">
									<p>Subtotal</p>
									<p class="cart_amount">£215.00</p>
								</div>
								<div class="cart_subtotal ">
									<p>Shipping</p>
									<p class="cart_amount">
										<span>Flat Rate:</span> £255.00
									</p>
								</div>
								<a href="#">Calculate shipping</a>

								<div class="cart_subtotal">
									<p>Total</p>
									<p class="cart_amount">£215.00</p>
								</div>
								<div class="checkout_btn">
									<a href="#">Proceed to Checkout</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!--coupon code area end-->
		</div>
	</div>
	<!--shopping cart area end -->


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