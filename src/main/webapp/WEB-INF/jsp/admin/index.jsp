<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!doctype html>
<html class="fixed">
<head>

    <!-- Basic -->
    <meta charset="UTF-8">

    <title>Admin</title>
    <meta name="keywords" content="HTML5 Admin Template" />
    <meta name="description" content="Porto Admin - Responsive HTML5 Template">
    <meta name="author" content="okler.net">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

    <!-- Web Fonts  -->
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

    <!-- Vendor CSS -->
    <link rel="stylesheet" href="/assets/vendor/bootstrap/css/bootstrap.css" />
    <link rel="stylesheet" href="/assets/vendor/font-awesome/css/font-awesome.css" />
    <link rel="stylesheet" href="/assets/vendor/magnific-popup/magnific-popup.css" />
    <link rel="stylesheet" href="/assets/vendor/bootstrap-datepicker/css/datepicker3.css" />

    <!-- Specific Page Vendor CSS -->
    <link rel="stylesheet" href="/assets/vendor/select2/select2.css" />
    <link rel="stylesheet" href="/assets/vendor/jquery-datatables-bs3/assets/css/datatables.css" />

    <!-- Theme CSS -->
    <link rel="stylesheet" href="/assets/stylesheets/theme.css" />

    <!-- Skin CSS -->
    <link rel="stylesheet" href="/assets/stylesheets/skins/default.css" />
    <link rel="stylesheet" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css"/>

    <!-- Theme Custom CSS -->
    <link rel="stylesheet" href="/assets/stylesheets/theme-custom.css">
    <!-- Head Libs -->
    <script src="/assets/vendor/modernizr/modernizr.js"></script>


</head>
<body>
<section class="body">


    <div class="inner-wrapper">
        <aside id="sidebar-left" class="sidebar-left">

            <div class="sidebar-header">
                <div class="sidebar-title">
                    Navigation
                </div>
                <div class="sidebar-toggle hidden-xs" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
                    <i class="fa fa-bars" aria-label="Toggle sidebar"></i>
                </div>
            </div>

            <div class="nano">
                <div class="nano-content">
                    <nav id="menu" class="nav-main" role="navigation">
                        <ul class="nav nav-main">
                            <li class="nav-active">
                                <a href="/admin/">
                                    <i class="fa fa-home" aria-hidden="true"></i>
                                    <span>Ana Səhifə</span>
                                </a>
                            </li>
                            <li>

                                <a href="addProduct">
                                    <i class="fa fa-envelope" aria-hidden="true"></i>
                                    <span>Məhsul Əlavə et</span>
                                </a>

                            </li>
                            <li>
                                <a href="admin?action=enterDeleteProduct">
                                    <i class="fa fa-copy" aria-hidden="true"></i>
                                    <span>Delete Product</span>
                                </a>
                            </li>
                            <li>
                                <a>
                                    <i class="fa fa-tasks" aria-hidden="true"></i>
                                    <span>Edit Product</span>
                                </a>
                            </li>
                        </ul>
                    </nav>

                    <hr class="separator" />

                </div>

            </div>

        </aside>

        <section role="main" class="content-body">
            <header class="page-header">
                <h2>Ana Səhifə</h2>

                <div class="right-wrapper pull-right">
                    <ol style="margin-left: -130px;" class="breadcrumbs">
                        <li>
                            <a href="admin?action=viewProduct">
                                <i class="fa fa-home"></i>
                            </a>
                        </li>
                        <li><span>Ana Səhifə</span></li>
                    </ol>

                </div>
            </header>
            <section class="panel">
                <header class="panel-heading">
                    <h2 class="panel-title">Məhsulların siyahısı</h2>
                </header>
                <div class="panel-body">
                    <div class="row">
                        <div class="col-sm-6">
                            <a href="addProduct" >Add Product</a>
                        </div>
                    </div>
                    <table class="table table-bordered table-striped mb-none" id="datatable-editable">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>Məhsulun adı</th>
                                <th>Məhsulun qiyməti</th>
                                <th>Məhsulun növü</th>
                                <th>Məhsulun markası</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                    </table>
                </div>
            </section>
            <!-- end: page -->
        </section>
    </div>

</section>

<!-- Vendor -->
<script src="/assets/vendor/jquery/jquery.js"></script>
<script src="/assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
<script src="/assets/vendor/bootstrap/js/bootstrap.js"></script>
<script src="/assets/vendor/nanoscroller/nanoscroller.js"></script>
<script src="/assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script src="/assets/vendor/magnific-popup/magnific-popup.js"></script>
<script src="/assets/vendor/jquery-placeholder/jquery.placeholder.js"></script>

<!-- Specific Page Vendor -->
<script src="/assets/vendor/select2/select2.js"></script>
<script src="/assets/vendor/jquery-datatables/media/js/jquery.dataTables.js"></script>
<script src="/assets/vendor/jquery-datatables-bs3/assets/js/datatables.js"></script>

<!-- Theme Base, Components and Settings -->
<script src="/assets/javascripts/theme.js"></script>

<!-- Theme Custom -->
<script src="/assets/javascripts/theme.custom.js"></script>

<!-- Theme Initialization Files -->
<script src="assets/javascripts/theme.init.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"/>
<!-- Examples -->
<script src="/assets/javascripts/tables/examples.datatables.editable.js"></script>
<script type="text/javascript">
    $(document).ready(

    $("#datatable-editable").DataTable({
        "processing": true,
        "serverSide": true,
        "ordering": true,
        "ajax": "/admin/getProductList"
    })
    );

</script>


</body>
</html>