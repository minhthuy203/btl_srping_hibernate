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
               <!--login area start-->
               <div class="col-lg-3 col-md-3 "></div>
                <div class="col-lg-6 col-md-6">
                    <div class="account_form">
                        <h2>login</h2>
                        <h4 style="color: red">${mess}</h4>
                        <form name="loginForm" action="<c:url value='j_spring_security_login' />" method='POST'>
                            <p>   
                                <label>Username or email <span>*</span></label>
                                <input type="text" name='username'>
                             </p>
                             <p>   
                                <label>Passwords <span>*</span></label>
                                <input type="password" name='password'>
                             </p>   
                            <div class="login_submit">
                               <a href="#">Lost your password? </a> 
                               <a href="/Bai_tap_lon_spring_framework/register">Creat account</a>
                                <label for="remember">
                                    <input id="remember" type="checkbox">
                                    Remember me
                                </label>
                                <button name="submit" type="submit" value="login" >login</button>
                                <input type="hidden" name="${_csrf.parameterName}"value="${_csrf.token}" />
                            </div>

                        </form>
                     </div>    
                </div>
                <!--login area start-->

          
            </div>
        </div>    
    </div>
    <!-- customer login end -->
    

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