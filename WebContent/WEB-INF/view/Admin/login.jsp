<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
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
    <body>

        <div class="account-pages"></div>
        <div class="clearfix"></div>
        <div class="wrapper-page">
            <div class="text-center">
                <a href="index.html" class="logo"><span>Techno_Trendz_<span>Analysis</span></span></a>
                <h5 class="text-muted m-t-0 font-600">Login</h5>
            </div>
        	<div class="m-t-40 card-box">
                <div class="text-center">
                    <h4 class="text-uppercase font-bold m-b-0">Sign In</h4>
                </div>
                <div class="panel-body">
                    <form class="form-horizontal m-t-20" action="j_spring_security_check" method="post">

                        <div class="form-group ">
                            <div class="col-xs-12">
                                <input class="form-control" type="text" name="username" required placeholder="Email">
                            </div>
                        </div>

                        <div class="form-group">
                            <div class="col-xs-12">
                                <input class="form-control" type="password" name="password" required placeholder="Password">
                            </div>
                        </div>
                        
                        
						<input type="hidden" name="${_csrf.parameterName}"
						value="${_csrf.token}" />

                        <div class="form-group ">
                            <div class="col-xs-12">
                                <div class="checkbox checkbox-custom">
                                    <input id="checkbox-signup" type="checkbox">
                                    <label for="checkbox-signup">
                                        Remember me
                                    </label>
                                </div>

                            </div>
                        </div>

                        <div class="form-group text-center m-t-30">
                            <div class="col-xs-12">
                                <button class="btn btn-custom btn-bordred btn-block waves-effect waves-light" type="submit">Log In</button>
                            </div>
                        </div>

                        <div class="form-group m-t-30 m-b-0">
                            <div class="col-sm-12">
                                <a href="forgotPassword.html" class="text-muted"><i class="fa fa-lock m-r-5"></i> Forgot your password?</a>
                            </div>
                        </div>
                    </form>

                </div>
            </div>
            <!-- end card-box-->

            <div class="row">
                <div class="col-sm-12 text-center">
                    <p class="text-muted">Don't have an account? <a href="register.html" class="text-primary m-l-5"><b>Sign Up</b></a></p>
                </div>
            </div>
            
        </div>
        <!-- end wrapper page -->
        

        
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
        <script src="AdminResources/js/wow.min.js"></script>
        <script src="AdminResources/js/jquery.nicescroll.js"></script>
        <script src="AdminResources/js/jquery.scrollTo.min.js"></script>

        <!-- App js -->
        <script src="AdminResources/js/jquery.core.js"></script>
        <script src="AdminResources/js/jquery.app.js"></script>
	
	</body>
</html>