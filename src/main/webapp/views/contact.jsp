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
                            <li>contact us</li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>         
    </div>
    <!--breadcrumbs area end-->
    
    
    <!--contact area start-->
    <div class="contact_area">
        <div class="container">   
            <div class="row">
                <div class="col-lg-6 col-md-12">
                   <div class="contact_message content">
                        <h3>contact us</h3>    
                         <p>Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram anteposuerit litterarum formas human. qui sequitur mutationem consuetudium lectorum. Mirum est notare quam</p>
                        <ul>
                            <li><i class="fa fa-fax"></i>  Address : Your address goes here.</li>
                            <li><i class="fa fa-phone"></i> <a href="#">demo@example.com</a></li>
                            <li><i class="fa fa-envelope-o"></i> 0(1234) 567 890</li>
                        </ul>             
                    </div> 
                </div>
                <div class="col-lg-6 col-md-12">
                   <div class="contact_message form">
                        <h3>Tell us your project</h3>   
                        <form id="contact-form" method="POST"  action="https://whizthemes.com/mail-php/jaber/contact.php">
                            <p>  
                               <label> Your Name (required)</label>
                                <input name="name" placeholder="Name *" type="text"> 
                            </p>
                            <p>       
                               <label>  Your Email (required)</label>
                                <input name="email" placeholder="Email *" type="email">
                            </p>
                            <p>          
                               <label>  Subject</label>
                                <input name="subject" placeholder="Subject *" type="text">
                            </p>    
                            <div class="contact_textarea">
                                <label>  Your Message</label>
                                <textarea placeholder="Message *" name="message"  class="form-control2" ></textarea>     
                            </div>   
                            <button type="submit"> Send</button>  
                            <p class="form-messege"></p>
                        </form> 

                    </div> 
                </div>
            </div>
        </div>    
    </div>

    <!--contact area end-->

     <!--contact map start-->
    <div class="contact_map">
       <div class="container-fluid">
            <div class="row">
                <div class="col-12">
                   <div class="map-area">
                      <iframe id="googleMap"  style="border: none;" src="https://maps.google.com/maps?q=121%20King%20St%2C%20Melbourne%20VIC%203000%2C%20Australia&amp;t=&amp;z=13&amp;ie=UTF8&amp;iwloc=&amp;output=embed"></iframe>
                   </div>
                </div>
            </div>
        </div>
    </div>
    <!--contact map end-->
    

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