<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Aroma Shop - Product Details</title>
    <link rel="icon" href="/assets/img/Fevicon.png" type="image/png">
    <link rel="stylesheet" href="/assets/vendors/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/vendors/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="/assets/vendors/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="/assets/vendors/linericon/style.css">
    <link rel="stylesheet" href="/assets/vendors/nice-select/nice-select.css">
    <link rel="stylesheet" href="/assets/vendors/owl-carousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="/assets/vendors/owl-carousel/owl.carousel.min.css">

    <link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
<!--================ Start Header Menu Area =================-->
<header class="header_area">
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">
                <a class="navbar-brand logo_h" href="/home/"><img src="/assets/img/logo.png" alt=""></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                    <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
                        <li class="nav-item"><a class="nav-link" href="/home/">Home</a></li>
                        <li class="nav-item "><a class="nav-link" href="category">Məhsullar</a></li>
                        <li class="nav-item "><a class="nav-link" href="about">Haqqimizda</a></li>
                        <li class="nav-item"><a class="nav-link" href="contact">Contact</a></li>
                    </ul>

                    <ul class="nav-shop">
                        <div class="row no-gutters">
                            <div class="col">
                                <input class="form-control border-secondary border-right-0 rounded-0" type="search" value="search" id="example-search-input4">
                            </div>
                            <div class="col-auto">
                                <button class="btn btn-outline-secondary border-left-0 rounded-0 rounded-right" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </div>

                            <li class="nav-item"><a class="button button-header" href="login">Admin</a></li>
                        </div>
                    </ul>

                </div>
            </div>
        </nav>
    </div>
</header>
<!--================ End Header Menu Area =================-->


<!--================Single Product Area =================-->
<div class="product_image_area">
    <div class="container">
        <div class="row s_product_inner">
            <div class="col-lg-6">
                <div class="owl-carousel owl-theme s_Product_carousel">
                    <div class="single-prd-item">
                        <img class="img-fluid" src="/${product.image}" alt="">
                    </div>
                </div>
            </div>
            <div class="col-lg-5 offset-lg-1">
                <div class="s_product_text">
                    <h3>${product.name}</h3>
                    <h2>${product.price} ₼</h2>
                    <ul class="list">
                        <li><span>Type</span> : ${product.type}</li>
                        <li><span>Mark</span> : ${product.mark}</li>
                    </ul>
                    <p>Mill Oil is an innovative oil filled radiator with the most modern technology. If you are looking for
                        something that can make your interior look awesome, and at the same time give you the pleasant warm feeling
                        during the winter.</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!--================End Single Product Area =================-->


<!--================ Start footer Area  =================-->
<br>
<br>
<br>
<br>
<br>
<footer class="footer">
    <div class="footer-area">
        <div class="container">
            <div class="row section_gap">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="single-footer-widget tp_widgets">
                        <h4 class="footer_title large_title">Our Mission</h4>
                        <p>
                            So seed seed green that winged cattle in. Gathering thing made fly you're no
                            divided deep moved us lan Gathering thing us land years living.
                        </p>
                        <p>
                            So seed seed green that winged cattle in. Gathering thing made fly you're no divided deep moved
                        </p>
                    </div>
                </div>
                <div class="offset-lg-1 col-lg-2 col-md-6 col-sm-6">
                    <div class="single-footer-widget tp_widgets">
                        <ul class="list">
                            <li><a href="/home/">Ana Səhifə</a></li>
                            <li><a href="category">Məhsullar</a></li>
                            <li><a href="about">Haqqımızda</a></li>
                            <li><a href="contact">Əlaqə</a></li>
                        </ul>
                    </div>
                </div>
                <div class="offset-lg-1 col-lg-3 col-md-6 col-sm-6">
                    <div class="single-footer-widget tp_widgets">
                        <h4 class="footer_title">Contact Us</h4>
                        <div class="ml-40">
                            <p class="sm-head">
                                <span class="fa fa-location-arrow"></span>
                                Baş Ofis
                            </p>
                            <p>123, Main Street, Your City</p>

                            <p class="sm-head">
                                <span class="fa fa-phone"></span>
                                Telefon nömrəsi
                            </p>
                            <p>
                                +123 456 7890 <br>
                                +123 456 7890
                            </p>

                            <p class="sm-head">
                                <span class="fa fa-envelope"></span>
                                Email
                            </p>
                            <p>
                                free@infoexample.com <br>
                                www.infoexample.com
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer-bottom">
        <div class="container">
            <div class="row d-flex">
                <p class="col-lg-12 footer-text text-center">
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
                    Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
                    <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. --></p>
            </div>
        </div>
    </div>
</footer>
<!--================ End footer Area  =================-->



<script src="/assets/vendors/jquery/jquery-3.2.1.min.js"></script>
<script src="/assets/vendors/bootstrap/bootstrap.bundle.min.js"></script>
<script src="/assets/vendors/skrollr.min.js"></script>
<script src="/assets/vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="/assets/vendors/nice-select/jquery.nice-select.min.js"></script>
<script src="/assets/vendors/jquery.ajaxchimp.min.js"></script>
<script src="/assets/vendors/mail-script.js"></script>
<script src="/assets/js/main.js"></script>
</body>
</html>