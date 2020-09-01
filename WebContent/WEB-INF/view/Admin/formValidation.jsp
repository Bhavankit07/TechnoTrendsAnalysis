<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
    <head>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="A fully featured admin theme which can be used to build CRM, CMS, etc.">
        <meta name="author" content="Coderthemes">

        <!-- App Favicon -->
        <link rel="shortcut icon" href="AdminResources/images/favicon.ico">

        <!-- App title -->
        <title>Techno_Trendz_Analysis</title>

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
                            <div class="col-lg-6">
                                <div class="card-box">
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

                        			<h4 class="header-title m-t-0 m-b-30">Basic Form</h4>

                                    <form action="#" data-parsley-validate novalidate>
                                        <div class="form-group">
                                            <label for="userName">User Name*</label>
                                            <input type="text" name="nick" parsley-trigger="change" required
                                                   placeholder="Enter user name" class="form-control" id="userName">
                                        </div>
                                        <div class="form-group">
                                            <label for="emailAddress">Email address*</label>
                                            <input type="email" name="email" parsley-trigger="change" required
                                                   placeholder="Enter email" class="form-control" id="emailAddress">
                                        </div>
                                        <div class="form-group">
                                            <label for="pass1">Password*</label>
                                            <input id="pass1" type="password" placeholder="Password" required
                                                   class="form-control">
                                        </div>
                                        <div class="form-group">
                                            <label for="passWord2">Confirm Password *</label>
                                            <input data-parsley-equalto="#pass1" type="password" required
                                                   placeholder="Password" class="form-control" id="passWord2">
                                        </div>
                                        <div class="form-group">
                                            <div class="checkbox">
                                                <input id="remember-1" type="checkbox">
                                                <label for="remember-1"> Remember me </label>
                                            </div>
                                        </div>

                                        <div class="form-group text-right m-b-0">
                                            <button class="btn btn-primary waves-effect waves-light" type="submit">
                                                Submit
                                            </button>
                                            <button type="reset" class="btn btn-default waves-effect waves-light m-l-5">
                                                Cancel
                                            </button>
                                        </div>

                                    </form>
                                </div>
                            </div><!-- end col -->

                            <div class="col-lg-6">
                                <div class="card-box">
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

                        			<h4 class="header-title m-t-0 m-b-30">Horizontal Form</h4>

                                    <form class="form-horizontal" role="form" data-parsley-validate novalidate>
                                        <div class="form-group">
                                            <label for="inputEmail3" class="col-sm-4 control-label">Email*</label>
                                            <div class="col-sm-7">
                                                <input type="email" required parsley-type="email" class="form-control"
                                                       id="inputEmail3" placeholder="Email">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="hori-pass1" class="col-sm-4 control-label">Password*</label>
                                            <div class="col-sm-7">
                                                <input id="hori-pass1" type="password" placeholder="Password" required
                                                       class="form-control">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <label for="hori-pass2" class="col-sm-4 control-label">Confirm Password
                                                *</label>
                                            <div class="col-sm-7">
                                                <input data-parsley-equalto="#hori-pass1" type="password" required
                                                       placeholder="Password" class="form-control" id="hori-pass2">
                                            </div>
                                        </div>

                                        <div class="form-group">
                                            <label for="webSite" class="col-sm-4 control-label">Web Site*</label>
                                            <div class="col-sm-7">
                                                <input type="url" required parsley-type="url" class="form-control"
                                                       id="webSite" placeholder="URL">
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-4 col-sm-8">
                                                <div class="checkbox">
                                                    <input id="remember-2" type="checkbox">
                                                    <label for="remember-2"> Remember me </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="form-group">
                                            <div class="col-sm-offset-4 col-sm-8">
                                                <button type="submit" class="btn btn-primary waves-effect waves-light">
                                                    Registrer
                                                </button>
                                                <button type="reset"
                                                        class="btn btn-default waves-effect waves-light m-l-5">
                                                    Cancel
                                                </button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div><!-- end col -->
                        </div>
                        <!-- end row -->


                        <div class="row">
                            <div class="col-sm-12">
                                <div class="card-box">
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

                        			<h4 class="header-title m-t-0 m-b-30">Fields validation</h4>

                                    <div class="row">
                                        <div class="col-lg-6">
                                            <h5 class="m-b-5"><b>Validation type</b></h5>
                                            <p class="text-muted font-13 m-b-30">
                                                Your awesome text goes here.
                                            </p>

                                            <form class="form-horizontal group-border-dashed" action="#">
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">Required</label>
                                                    <div class="col-sm-6">
                                                        <input type="text" class="form-control" required
                                                               placeholder="Type something"/>
                                                    </div>
                                                </div>


                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">Equal To</label>
                                                    <div class="col-sm-3">
                                                        <input type="password" id="pass2" class="form-control" required
                                                               placeholder="Password"/>
                                                    </div>
                                                    <div class="col-sm-3">
                                                        <input type="password" class="form-control" required
                                                               data-parsley-equalto="#pass2"
                                                               placeholder="Re-Type Password"/>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">E-Mail</label>
                                                    <div class="col-sm-6">
                                                        <input type="email" class="form-control" required
                                                               parsley-type="email" placeholder="Enter a valid e-mail"/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">URL</label>
                                                    <div class="col-sm-6">
                                                        <input parsley-type="url" type="url" class="form-control"
                                                               required placeholder="URL"/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">Digits</label>
                                                    <div class="col-sm-6">
                                                        <input data-parsley-type="digits" type="text"
                                                               class="form-control" required
                                                               placeholder="Enter only digits"/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">Number</label>
                                                    <div class="col-sm-6">
                                                        <input data-parsley-type="number" type="text"
                                                               class="form-control" required
                                                               placeholder="Enter only numbers"/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">Alphanumeric</label>
                                                    <div class="col-sm-6">
                                                        <input data-parsley-type="alphanum" type="text"
                                                               class="form-control" required
                                                               placeholder="Enter alphanumeric value"/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">Textarea</label>
                                                    <div class="col-sm-6">
                                                        <textarea required class="form-control"></textarea>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <div class="col-sm-offset-3 col-sm-9 m-t-15">
                                                        <button type="submit" class="btn btn-primary waves-effect waves-light">
                                                            Submit
                                                        </button>
                                                        <button type="reset" class="btn btn-default waves-effect m-l-5">
                                                            Cancel
                                                        </button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div><!-- end col -->

                                        <div class="col-lg-6">
                                            <h5 class="m-b-5"><b>Range validation</b></h5>
                                            <p class="text-muted font-13 m-b-30">
                                                Your awesome text goes here.
                                            </p>

                                            <form class="form-horizontal group-border-dashed" action="#">

                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">Min Length</label>
                                                    <div class="col-sm-6">
                                                        <input type="text" class="form-control" required
                                                               data-parsley-minlength="6" placeholder="Min 6 chars."/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">Max Length</label>
                                                    <div class="col-sm-6">
                                                        <input type="text" class="form-control" required
                                                               data-parsley-maxlength="6" placeholder="Max 6 chars."/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">Range Length</label>
                                                    <div class="col-sm-6">
                                                        <input type="text" class="form-control" required
                                                               data-parsley-length="[5,10]"
                                                               placeholder="Text between 5 - 10 chars length"/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">Min Value</label>
                                                    <div class="col-sm-6">
                                                        <input type="text" class="form-control" required
                                                               data-parsley-min="6" placeholder="Min value is 6"/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">Max Value</label>
                                                    <div class="col-sm-6">
                                                        <input type="text" class="form-control" required
                                                               data-parsley-max="6" placeholder="Max value is 6"/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">Range Value</label>
                                                    <div class="col-sm-6">
                                                        <input class="form-control" required type="text range" min="6"
                                                               max="100" placeholder="Number between 6 - 100"/>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">Regular Exp</label>
                                                    <div class="col-sm-6">
                                                        <input type="text" class="form-control" required
                                                               data-parsley-pattern="#[A-Fa-f0-9]{6}"
                                                               placeholder="Hex. Color"/>
                                                    </div>
                                                </div>

                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">Min check</label>
                                                    <div class="col-sm-6">
                                                        <div class="checkbox checkbox-pink">
                                                            <input id="checkbox1" type="checkbox"
                                                                   data-parsley-multiple="groups"
                                                                   data-parsley-mincheck="2">
                                                            <label for="checkbox1"> And this </label>
                                                        </div>
                                                        <div class="checkbox checkbox-pink">
                                                            <input id="checkbox2" type="checkbox"
                                                                   data-parsley-multiple="groups"
                                                                   data-parsley-mincheck="2">
                                                            <label for="checkbox2"> Can't check this </label>
                                                        </div>
                                                        <div class="checkbox checkbox-pink">
                                                            <input id="checkbox3" type="checkbox"
                                                                   data-parsley-multiple="groups"
                                                                   data-parsley-mincheck="2" required>
                                                            <label for="checkbox3"> This too </label>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label class="col-sm-3 control-label">Max check</label>
                                                    <div class="col-sm-6">
                                                        <div class="checkbox checkbox-pink">
                                                            <input id="checkbox4" type="checkbox"
                                                                   data-parsley-multiple="group1">
                                                            <label for="checkbox4"> And this </label>
                                                        </div>
                                                        <div class="checkbox checkbox-pink">
                                                            <input id="checkbox5" type="checkbox"
                                                                   data-parsley-multiple="group1">
                                                            <label for="checkbox5"> Can't check this </label>
                                                        </div>
                                                        <div class="checkbox checkbox-pink">
                                                            <input id="checkbox6" type="checkbox"
                                                                   data-parsley-multiple="group1"
                                                                   data-parsley-maxcheck="1">
                                                            <label for="checkbox6"> This too </label>
                                                        </div>

                                                    </div>
                                                </div>

                                                <div class="form-group m-b-0">
                                                    <div class="col-sm-offset-3 col-sm-9 m-t-15">
                                                        <button type="submit" class="btn btn-primary waves-effect waves-light">
                                                            Submit
                                                        </button>
                                                        <button type="reset" class="btn btn-default waves-effect m-l-5">
                                                            Cancel
                                                        </button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div><!-- end col -->
                                    </div><!-- end row -->
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

        <!-- Validation js (Parsleyjs) -->
        <script type="text/javascript" src="AdminResources/js/parsley.min.js"></script>

        <!-- App js -->
        <script src="AdminResources/js/jquery.core.js"></script>
        <script src="AdminResources/js/jquery.app.js"></script>

        <script type="text/javascript">
			$(document).ready(function() {
				$('form').parsley();
			});
		</script>

    </body>
</html>