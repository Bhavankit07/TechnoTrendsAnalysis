<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <!-- App Favicon -->
        <link rel="shortcut icon" href="AdminResources/images/favicon.ico">

        <!-- App title -->
        <title>Techno_Trendz_Analysis</title>

        <!-- DataTables -->
        <link href="AdminResources/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css" />
        <link href="AdminResources/css/buttons.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="AdminResources/css/fixedHeader.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="AdminResources/css/responsive.bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="AdminResources/css/scroller.bootstrap.min.css" rel="stylesheet" type="text/css" />

        <!-- App CSS -->
        <link href="AdminResources/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link href="AdminResources/css/core.css" rel="stylesheet" type="text/css" />
        <link href="AdminResources/css/components.css" rel="stylesheet" type="text/css" />
        <link href="AdminResources/css/icons.css" rel="stylesheet" type="text/css" />
        <link href="AdminResources/css/pages.css" rel="stylesheet" type="text/css" />
        <link href="AdminResources/css/menu.css" rel="stylesheet" type="text/css" />
        <link href="AdminResources/css/responsive.css" rel="stylesheet" type="text/css" />

        <!-- HTML5 Shiv and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
        <![endif]-->

        <script src="AdminResources/js/modernizr.min.js"></script>
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-74137680-1', 'auto');
  ga('send', 'pageview');

</script>

    </head>


    <body class="fixed-left">

        <!-- Begin page -->
        <div id="wrapper">

            <!-- Top Bar Start -->
            
            <jsp:include page="header.jsp"></jsp:include>
            
                        <!-- Top Bar End -->
                    
            <jsp:include page="sidebar.jsp"></jsp:include>


            <!-- ============================================================== -->
            <!-- Start right Content here -->
            <!-- ============================================================== -->
            <div class="content-page">
                <!-- Start content -->
                <div class="content">
                    <div class="container">

                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card-box table-responsive">
                                    <div class="dropdown pull-right">
                                        <a href="#" class="dropdown-toggle card-drop" data-toggle="dropdown" aria-expanded="false">
                                            <i class="zmdi zmdi-more-vert"></i>
                                        </a>
                                        <ul class="dropdown-menu" role="menu">
                                            <li><a href="#">Action</a></li>
                                            <li><a href="#">Another action</a></li>
                                            <li><a href="#">Something else here</a></li>
                                            <li class="divider"></li>
                                            <li><a href="#">Separated link</a></li>
                                        </ul>
                                    </div>

                                    <table id="datatable" class="table table-striped table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Dictionary Name</th>
                                                <th>Dictionary Description</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${dictionaryList}" var="d">
                                            <tr>
                                                <td>${d.dictionaryDescription}</td>
                                                <td>${d.dictionaryName}</td>
                                                <td><a href ="dictionaryDelete.html?x=${d.dictionaryId}"> Delete </a>
													<a href ="dictionaryEdit.html?x=${d.dictionaryId}"> Edit </a>
												</td>
                                            </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div><!-- end col -->
                        </div>
                        <!-- end row -->

                    </div> <!-- container -->

                </div> <!-- content -->

				<jsp:include page="footer.jsp"></jsp:include>

            </div>


            <!-- ============================================================== -->
            <!-- End Right content here -->
            <!-- ============================================================== -->


            <!-- Right Sidebar -->
            <div class="side-bar right-bar">
                <a href="javascript:void(0);" class="right-bar-toggle">
                    <i class="zmdi zmdi-close-circle-o"></i>
                </a>
                <h4 class="">Notifications</h4>
                <div class="notification-list nicescroll">
                    <ul class="list-group list-no-border user-list">
                        <li class="list-group-item">
                            <a href="#" class="user-list-item">
                                <div class="avatar">
                                    <img src="AdminResources/images/avatar-2.jpg" alt="">
                                </div>
                                <div class="user-desc">
                                    <span class="name">Michael Zenaty</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">2 hours ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="#" class="user-list-item">
                                <div class="icon bg-info">
                                    <i class="zmdi zmdi-account"></i>
                                </div>
                                <div class="user-desc">
                                    <span class="name">New Signup</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">5 hours ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item">
                            <a href="#" class="user-list-item">
                                <div class="icon bg-pink">
                                    <i class="zmdi zmdi-comment"></i>
                                </div>
                                <div class="user-desc">
                                    <span class="name">New Message received</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">1 day ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item active">
                            <a href="#" class="user-list-item">
                                <div class="avatar">
                                    <img src="AdminResources/images/avatar-3.jpg" alt="">
                                </div>
                                <div class="user-desc">
                                    <span class="name">James Anderson</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">2 days ago</span>
                                </div>
                            </a>
                        </li>
                        <li class="list-group-item active">
                            <a href="#" class="user-list-item">
                                <div class="icon bg-warning">
                                    <i class="zmdi zmdi-settings"></i>
                                </div>
                                <div class="user-desc">
                                    <span class="name">Settings</span>
                                    <span class="desc">There are new settings available</span>
                                    <span class="time">1 day ago</span>
                                </div>
                            </a>
                        </li>

                    </ul>
                </div>
            </div>
            <!-- /Right-bar -->

        </div>
        <!-- END wrapper -->



        <script>
            var resizefunc = [];
        </script>

        <!-- jQuery  -->
        <script src="AdminResources/js/jquery.min.js"></script>
        <script src="AdminResources/js/bootstrap.min.js"></script>
        <script src="AdminResources/js/detect.js"></script>
        <script src="AdminResources/js/fastclick.js"></script>
        <script src="AdminResources/js/jquery.slimscroll.js"></script>
        <script src="AdminResources/js/jquery.blockUI.js"></script>
        <script src="AdminResources/js/waves.js"></script>
        <script src="AdminResources/js/jquery.nicescroll.js"></script>
        <script src="AdminResources/js/jquery.scrollTo.min.js"></script>

        <!-- Datatables-->
        <script src="AdminResources/js/jquery.dataTables.min.js"></script>
        <script src="AdminResources/js/dataTables.bootstrap.js"></script>
        <script src="AdminResources/js/dataTables.buttons.min.js"></script>
        <script src="AdminResources/js/buttons.bootstrap.min.js"></script>
        <script src="AdminResources/js/jszip.min.js"></script>
        <script src="AdminResources/js/pdfmake.min.js"></script>
        <script src="AdminResources/js/vfs_fonts.js"></script>
        <script src="AdminResources/js/buttons.html5.min.js"></script>
        <script src="AdminResources/js/buttons.print.min.js"></script>
        <script src="AdminResources/js/dataTables.fixedHeader.min.js"></script>
        <script src="AdminResources/js/dataTables.keyTable.min.js"></script>
        <script src="AdminResources/js/dataTables.responsive.min.js"></script>
        <script src="AdminResources/js/responsive.bootstrap.min.js"></script>
        <script src="AdminResources/js/dataTables.scroller.min.js"></script>

        <!-- Datatable init js -->
        <script src="AdminResources/js/datatables.init.js"></script>

        <!-- App js -->
        <script src="AdminResources/js/jquery.core.js"></script>
        <script src="AdminResources/js/jquery.app.js"></script>

        <script type="text/javascript">
            $(document).ready(function() {
                $('#datatable').dataTable();
                $('#datatable-keytable').DataTable( { keys: true } );
                $('#datatable-responsive').DataTable();
                $('#datatable-scroller').DataTable( { ajax: "assets/plugins/datatables/json/scroller-demo.json", deferRender: true, scrollY: 380, scrollCollapse: true, scroller: true } );
                var table = $('#datatable-fixed-header').DataTable( { fixedHeader: true } );
            } );
            TableManageButtons.init();

        </script>

    </body>
</html>