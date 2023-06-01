<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="shortcut icon" type="image/x-icon" href="<c:url value='resources'/>/img/favicon.ico">
    
    <!-- CSS 
    ========================= -->


    <!-- Plugins CSS -->
    <link rel="stylesheet" href="<c:url value='resources'/>/css/plugins.css">
    
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="<c:url value='resources'/>/css/style.css">

</head>

<body>
<%@include file="header.jsp" %>
 <!--breadcrumbs area start-->
    <div class="breadcrumbs_area other_bread">
        <div class="container">   
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb_content">
                        <ul>
                            <li><a href="/Bai_tap_lon_spring_framework/">home</a></li>
                            <li>/</li>
                            <li>order detail</li>
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
            <form action="#"> 
                <div class="row">
                    <div class="col-12">
                        <div class="table_desc">
                            <div class="cart_page table-responsive">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="product_thumb">Image</th>
                                            <th class="product_name">Product</th>
                                            <th class="product-price">Price</th>
                                            <th class="product_quantity">Quantity</th>
                                            <th class="product_total">Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="product_thumb"><a href="#"><img src="<c:url value='resources'/>/img/s-product/product.jpg" alt=""></a></td>
                                            <td class="product_name"><a href="#">Handbag fringilla</a></td>
                                            <td class="product-price">£65.00</td>
                                            <td class="product_quantity"><input min="1" max="100" value="1" type="number"></td>
                                            <td class="product_total">£130.00</td>
                                        </tr>
                                        <tr>
                                            <td class="product_thumb"><a href="#"><img src="<c:url value='resources'/>/img/s-product/product2.jpg" alt=""></a></td>
                                            <td class="product_name"><a href="#">Handbags justo</a></td>
                                            <td class="product-price">£90.00</td>
                                            <td class="product_quantity"><input min="1" max="100" value="1" type="number"></td>
                                            <td class="product_total">£180.00</td>


                                        </tr>
                                        <tr>
                                            <td class="product_thumb"><a href="#"><img src="<c:url value='resources'/>/img/s-product/product3.jpg" alt=""></a></td>
                                            <td class="product_name"><a href="#">Handbag elit</a></td>
                                            <td class="product-price">£80.00</td>
                                            <td class="product_quantity"><input min="1" max="100" value="1" type="number"></td>
                                            <td class="product_total">£160.00</td>
                                        </tr>
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
                                       <p class="cart_amount"><span>Flat Rate:</span> £255.00</p>
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
                
            </form> 
        </div>     
    </div>
    <!--shopping cart area end -->
    

    <%@include file="footer.jsp" %>
   
<%@include file="Modal_Prodect_cart.jsp" %>

<!-- JS
============================================ -->

<!-- Plugins JS -->
<script src="<c:url value='resources'/>/js/plugins.js"></script>

<!-- Main JS -->
<script src="<c:url value='resources'/>/js/main.js"></script>



</body>


<!-- Mirrored from htmldemo.net/reid/reid/index-3.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 21 Apr 2023 07:39:26 GMT -->
</html>