<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Best Telecom</title>
    <link rel="icon" href="/asssets/img/Fevicon.png" type="image/png">
    <link rel="stylesheet" href="/assets/vendors/bootstrap/bootstrap.min.css">
    <link rel="stylesheet" href="/assets/vendors/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="/assets/vendors/themify-icons/themify-icons.css">
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
                        <li class="nav-item "><a class="nav-link" href="/home/">Home</a></li>
                        <li class="nav-item "><a class="nav-link" href="category">Məhsullar</a></li>
                        <li class="nav-item "><a class="nav-link" href="about">Haqqimizda</a></li>
                        <li class="nav-item active"><a class="nav-link" href="contact">Contact</a></li>
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




<!-- ================ contact section start ================= -->
<section class="section-margin--small">
    <div class="container">
        <div class="d-none d-sm-block mb-5 pb-4">
            <div id="map" style="height: 420px;"></div>
            <script>
                function initMap() {
                    var uluru = {lat: -25.363, lng: 131.044};
                    var grayStyles = [
                        {
                            featureType: "all",
                            stylers: [
                                { saturation: -90 },
                                { lightness: 50 }
                            ]
                        },
                        {elementType: 'labels.text.fill', stylers: [{color: '#A3A3A3'}]}
                    ];
                    var map = new google.maps.Map(document.getElementById('map'), {
                        center: {lat: -31.197, lng: 150.744},
                        zoom: 9,
                        styles: grayStyles,
                        scrollwheel:  false
                    });
                }

            </script>
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDpfS1oRGreGSBU5HHjMmQ3o5NLw7VdJ6I&callback=initMap"></script>

        </div>


        <div class="row">
            <div class="col-md-4 col-lg-3 mb-4 mb-md-0">
                <div class="media contact-info">
                    <span class="contact-info__icon"><i class="ti-home"></i></span>
                    <div class="media-body">
                        <h3>California United States</h3>
                        <p>Santa monica bullevard</p>
                    </div>
                </div>
                <div class="media contact-info">
                    <span class="contact-info__icon"><i class="ti-headphone"></i></span>
                    <div class="media-body">
                        <h3><a href="tel:454545654">00 (440) 9865 562</a></h3>
                        <p>Mon to Fri 9am to 6pm</p>
                    </div>
                </div>
                <div class="media contact-info">
                    <span class="contact-info__icon"><i class="ti-email"></i></span>
                    <div class="media-body">
                        <h3><a href="mailto:support@colorlib.com">support@colorlib.com</a></h3>
                        <p>Send us your query anytime!</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</section>
<!-- ================ contact section end ================= -->



<!--================ Start footer Area  =================-->
<footer>
    <div class="footer-area footer-only">
        <div class="container">
            <div class="row section_gap">
                <div class="col-lg-3 col-md-6 col-sm-6">
                    <div class="single-footer-widget tp_widgets ">
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
                                Telefon Nömrəsi
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
<script src="/assets/vendors/jquery.form.js"></script>
<script src="/assets/vendors/jquery.validate.min.js"></script>
<script src="/assets/vendors/contact.js"></script>
<script src="/assets/vendors/jquery.ajaxchimp.min.js"></script>
<script src="/assets/vendors/mail-script.js"></script>
<script src="/assets/js/main.js"></script>
</body>
</html>
