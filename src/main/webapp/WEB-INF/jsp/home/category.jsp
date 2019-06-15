<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Aroma Shop - Category</title>
    <link rel="icon" href="img/Fevicon.png" type="image/png">
    <link rel="stylesheet" href="/assets/vendors/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/vendors/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="/assets/vendors/themify-icons/themify-icons.css">
    <link rel="stylesheet" href="/assets/vendors/linericon/style.css">
    <link rel="stylesheet" href="/assets/vendors/owl-carousel/owl.theme.default.min.css">
    <link rel="stylesheet" href="/assets/vendors/owl-carousel/owl.carousel.min.css">
    <link rel="stylesheet" href="/assets/vendors/nice-select/nice-select.css">
    <link rel="stylesheet" href="/assets/vendors/nouislider/nouislider.min.css">

    <link rel="stylesheet" href="/assets/css/style.css">
</head>
<body>
<!--================ Start Header Menu Area =================-->
<header class="header_area">
    <div class="main_menu">
        <nav class="navbar navbar-expand-lg navbar-light">
            <div class="container">
                <a class="navbar-brand logo_h" href="/home/"><img src="img/logo.png" alt=""></a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                    <div class="collapse navbar-collapse offset" id="navbarSupportedContent">
                        <ul class="nav navbar-nav menu_nav ml-auto mr-auto">
                            <li class="nav-item"><a class="nav-link" href="/home/">Home</a></li>
                            <li class="nav-item active"><a class="nav-link" href="category">Məhsullar</a></li>
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
                            </div>
                        </ul>
                </div>
            </div>
        </nav>
    </div>
</header>
<!--================ End Header Menu Area =================-->


<!-- ================ category section start ================= -->
<section class="section-margin--small mb-5">
    <div class="container">
        <div class="row">
            <div class="col-xl-3 col-lg-4 col-md-5">
                <div class="sidebar-categories">
                    <div class="head">Browse Categories</div>
                    <ul class="main-categories">
                        <li class="common-filter">
                                <ul id="type-list">

                                </ul>
                        </li>
                    </ul>
                </div>
                <div class="sidebar-filter">
                    <div class="top-filter-head">Product Filters</div>
                    <div class="common-filter">
                        <div class="head">Brands</div>
                            <ul id="mark-list">

                            </ul>
                    </div>

                    <div class="common-filter">
                        <div class="head">Price</div>
                        <div class="price-range-area">
                            <div id="price-range"></div>
                            <div class="value-wrapper d-flex">
                                <div class="price">Price:</div>
                                <span>₼</span>
                                <div id="lower-value"></div>
                                <div class="to">to</div>
                                <span>₼</span>
                                <div id="upper-value"></div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
            <div class="col-xl-9 col-lg-8 col-md-7">
                <!-- Start Filter Bar -->
                <div class="filter-bar d-flex flex-wrap align-items-center">
                    <div class="sorting">
                        <select>
                            <option value="1">Default sorting</option>
                            <option value="1">Default sorting</option>
                            <option value="1">Default sorting</option>
                        </select>
                    </div>
                    <div class="sorting mr-auto">
                        <select>
                            <option value="1">Show 12</option>
                            <option value="1">Show 12</option>
                            <option value="1">Show 12</option>
                        </select>
                    </div>
                    <div>
                        <div class="input-group filter-bar-search">
                            <input type="text" placeholder="Search">
                            <div class="input-group-append">
                                <button type="button"><i class="ti-search"></i></button>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End Filter Bar -->
                <!-- Start Best Seller -->
                <section class="lattest-product-area pb-40 category-list">
                    <div class="row" id="main">


                   </div>
                </section>

                <!-- End Best Seller -->
            </div>
        </div>
    </div>
</section>
<!-- ================ category section end ================= -->


<!--================ Start footer Area  =================-->
<footer>
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
                        <h4 class="footer_title">Quick Links</h4>
                        <ul class="list">
                            <li><a href="/home/">Ana səhifə</a></li>
                            <li><a href="category">Məhsullar</a></li>
                            <li><a href="about">Haqqimizda</a></li>
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
                                Head Office
                            </p>
                            <p>123, Main Street, Your City</p>

                            <p class="sm-head">
                                <span class="fa fa-phone"></span>
                                Phone Number
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

<!--================ End footer Area  =================-->

<script
        src="https://code.jquery.com/jquery-3.4.1.js"
        integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
        crossorigin="anonymous"></script>

<script type="text/javascript">
    $(document).ready(function () {
        getTypes();
        getMarks();
        getProducts();
       getProductByMark();
        getProductByType();

        // $("#type-list").change(function(){
        //     var type;
        //     $("#type-list input:checkbox").each(function(){
        //         if ($(this).is(":checked")) {
        //             type = $(this).val();
        //         }
        //     });
        //     console.log(type);
        // });

    });


    // $("#mark-list").change(function(){
    //     var mark;
    //     $("#mark-list input:checkbox").each(function(){
    //         if ($(this).is(":checked")) {
    //             mark = $(this).val();
    //             $.get("/home/category/productList",
    //                 function (data) {
    //
    //                     for (var i = 0; i < data.length; i++) {
    //                         $("#main").append(
    //                             "<div class='col-md-6 col-lg-4' >" +
    //                             "<div class='card text-center card-product' >" +
    //                             "<div align='center' style='height:200px' class='card-product__img' >" +
    //                             "<img style='overflow:hidden' height='100%' class='card-img' src = '/" + data[i].image + "' alt = '' >" +
    //                             "</div >" +
    //                             "<div class='card-body' >" +
    //                             "<p >" + data[i].type.typeName + " </p >" +
    //                             "<h4 class='card-product__title' >" + data[i].name + "</h4 >" +
    //                             "<p class='card-product__price' > " + data[i].price + " ₼ </p >" +
    //                             "<a class='button button-hero'  href='/home/productDetail?id=" + data[i].id + "'>Mehsulun Detallari</a>" +
    //                             "</div >" +
    //                             "</div >" +
    //                             "</div >")
    //                     }
    //
    //                 })
    //         }
    //     });
    //     alert(mark);
    // });

    function getProducts() {
        $.get("/home/category/productListByType?typeName=telefon",
            function (data) {
                $("#main").empty();

                for (var i = 0; i < data.length; i++) {
                    $("#main").append(
                        "<div class='col-md-6 col-lg-4' >" +
                        "<div class='card text-center card-product' >" +
                        "<div align='center' style='height:200px' class='card-product__img' >" +
                        "<img style='overflow:hidden' height='100%' class='card-img' src = '/" + data[i].image + "' alt = '' >" +
                        "</div >" +
                        "<div class='card-body' >" +
                        "<p >" + data[i].type.typeName + " </p >" +
                        "<h4 class='card-product__title' >" + data[i].name + "</h4 >" +
                        "<p class='card-product__price' > " + data[i].price + " ₼ </p >" +
                        "<a class='button button-hero'  href='/home/productDetail?id=" + data[i].id + "'>Mehsulun Detallari</a>" +
                        "</div >" +
                        "</div >" +
                        "</div >")
                }

            })
    }

    function getTypes() {
        $.get("/home/category/typeList",
            function (data) {
                for (var i = 0; i < data.length; i++) {
                    $("#type-list").append(
                        "<li class='filter-list'>" +
                        "<input class='pixel-radio' type='checkbox' name='type' value='" + data[i].typeName + "'/>" +
                        "<label> " +
                        data[i].typeName +
                        "<span> (" + data[i].count + ")</span>" +
                        "</label>" +
                        "</li>")
                }
               // onchange='getProductsByType(this)'
            });
    }

    function getMarks() {

        $.get("/home/category/markList",

            function (data) {
                for (var i = 0; i < data.length; i++) {

                    $("#mark-list").append(
                        "<li class='filter-list'>" +
                        "<input class='pixel-radio' type='checkbox' name='mark' value='" + data[i].markName + "'/>" +
                        "<label> " +
                        data[i].markName +
                        "<span> (" + data[i].count + ")</span>" +
                        "</label>" +
                        "</li>")
                }
            });
    }

    function getProductByType() {

        $("#type-list").change(function(){


            var typeCheck;
            $("#type-list input:checkbox").each(function(){
                if ($(this).is(":checked")) {
                    typeCheck = $(this).val();
                    $.get("/home/category/productListByType?typeName=" + typeCheck,
                        function (data) {

                            $("#main").empty();

                            for (var i = 0; i < data.length; i++) {
                                $("#main").append(
                                    "<div class='col-md-6 col-lg-4' >" +
                                    "<div class='card text-center card-product' >" +
                                    "<div align='center' style='height:200px' class='card-product__img' >" +
                                    "<img style='overflow:hidden' height='100%' class='card-img' src = '/" + data[i].image + "' alt = '' >" +
                                    "</div >" +
                                    "<div class='card-body' >" +
                                    "<p >" + data[i].type.typeName + " </p >" +
                                    "<h4 class='card-product__title' >" + data[i].name + "</h4 >" +
                                    "<p class='card-product__price' > " + data[i].price + " ₼ </p >" +
                                    "<a class='button button-hero'  href='/home/productDetail?id=" + data[i].id + "'>Mehsulun Detallari</a>" +
                                    "</div >" +
                                    "</div >" +
                                    "</div >")
                            }

                        })
                }
            });

        });




    }

    function getProductByMark() {

        $("#mark-list").change(function(){
            var markChecked;
            $("#mark-list input:checkbox").each(function(){
                if ($(this).is(":checked")) {
                    markChecked = $(this).val();
                    $.get("/home/category/productListByMark?markName=" + markChecked,
                        function (data) {

                            $("#main").empty();

                            for (var i = 0; i < data.length; i++) {
                                $("#main").append(
                                    "<div class='col-md-6 col-lg-4' >" +
                                    "<div class='card text-center card-product' >" +
                                    "<div align='center' style='height:200px' class='card-product__img' >" +
                                    "<img style='overflow:hidden' height='100%' class='card-img' src = '/" + data[i].image + "' alt = '' >" +
                                    "</div >" +
                                    "<div class='card-body' >" +
                                    "<p >" + data[i].type.typeName + " </p >" +
                                    "<h4 class='card-product__title' >" + data[i].name + "</h4 >" +
                                    "<p class='card-product__price' > " + data[i].price + " ₼ </p >" +
                                    "<a class='button button-hero'  href='/home/productDetail?id=" + data[i].id + "'>Mehsulun Detallari</a>" +
                                    "</div >" +
                                    "</div >" +
                                    "</div >")
                            }

                        })
                }
            });
        });
    }

</script>


<script src="/assets/vendors/jquery/jquery-3.2.1.min.js"></script>
<script src="/assets/vendors/bootstrap/bootstrap.bundle.min.js"></script>
<script src="/assets/vendors/skrollr.min.js"></script>
<script src="/assets/vendors/owl-carousel/owl.carousel.min.js"></script>
<script src="/assets/vendors/nice-select/jquery.nice-select.min.js"></script>
<script src="/assets/vendors/nouislider/nouislider.min.js"></script>
<script src="/assets/vendors/jquery.ajaxchimp.min.js"></script>
<script src="/assets/vendors/mail-script.js"></script>
<script src="/assets/js/main.js"></script>
</body>
</html>