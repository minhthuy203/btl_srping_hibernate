<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- modal area start-->
<c:forEach items="${listPro}" var="p">
	<div class="modal fade" id="modal_box${p.productId }" tabindex="-1"
		role="dialog" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<button type="button" class="close" data-bs-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<div class="modal_body">
					<div class="container">
						<div class="row">
							<div class="col-lg-5 col-md-5 col-sm-12">
								<div class="modal_tab">
									<div class="tab-content product-details-large">
										<div class="tab-pane fade show active"
											id="${p.productId}" role="tabpanel">
											<div class="modal_tab_img">
												<a href="#"><img
													src="<c:url value='resources'/>/images/${p.listImages.get(0).imgName}"
													alt=""></a>
											</div>
										</div>
										<c:forEach items="${p.listImages}" var="img">
											<div class="tab-pane fade show" id="${p.productId}"
												role="tabpanel">
												<div class="modal_tab_img">
													<a href="#"><img
														src="<c:url value='resources'/>/images/${img.imgName}"
														alt=""></a>
												</div>
											</div>
										</c:forEach>
									</div>
									<div class="modal_tab_button">
										<ul class="nav product_navactive owl-carousel" role="tablist">
										<li><a class="nav-link active" data-bs-toggle="tab"
													href="#${p.productId}" role="tab"
													aria-controls="${p.productId}" aria-selected="false"><img
														src="<c:url value='resources'/>/images/${p.listImages.get(0).imgName}"></a>
												</li>
											<c:forEach items="${p.listImages}" var="img">
												<li><a class="nav-link active" data-bs-toggle="tab"
													href="#${p.productId}" role="tab"
													aria-controls="${p.productId}" aria-selected="false"><img
														src="<c:url value='resources'/>/images/${img.imgName}"></a>
												</li>
											</c:forEach>
										</ul>
									</div>
								</div>
							</div>
							<div class="col-lg-7 col-md-7 col-sm-12">
								<div class="modal_right">
									<div class="modal_title mb-10">
										<h2>${p.productName}</h2>
									</div>
									<div class="modal_price mb-10">

										<c:choose>
											<c:when test="${p.salePrice > '0'}">
												<span class="current_price">${p.salePrice} </span>
												<span class="old_price">${p.price }</span>
											</c:when>
											<c:otherwise>
												<span class="current_price">${p.price }</span>
											</c:otherwise>
										</c:choose>
									</div>

								</div>
								<div class="modal_description mb-15">
									<p>${p.discription }</p>
								</div>
								<div class="variants_selects">
									<div class="variants_size">
										<h2>size</h2>
										<select class="select_option">
										
										</select>
									</div>
									<div class="variants_color">
										<h2>color</h2>
										<select class="select_option">
											
										</select>
									</div>
									<div class="modal_add_to_cart">
										<form action="#">
											<input min="0" max="100" step="2" value="1" type="number">
											<button type="submit">add to cart</button>
										</form>
									</div>
								</div>
								<div class="modal_social">
									<h2>Share this product</h2>
									<ul>
										<li class="facebook"><a href="#"><i
												class="fa fa-facebook"></i></a></li>
										<li class="twitter"><a href="#"><i
												class="fa fa-twitter"></i></a></li>
										<li class="pinterest"><a href="#"><i
												class="fa fa-pinterest"></i></a></li>
										<li class="google-plus"><a href="#"><i
												class="fa fa-google-plus"></i></a></li>
										<li class="linkedin"><a href="#"><i
												class="fa fa-linkedin"></i></a></li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	
	<!-- modal area start-->
</c:forEach>
<!-- modal area start-->