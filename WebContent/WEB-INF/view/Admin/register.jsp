<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form" %>
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
                <h5 class="text-muted m-t-0 font-600">Admin Dashboard</h5>
            </div>
        	<div class="m-t-40 card-box">
                <div class="text-center">
                    <h4 class="text-uppercase font-bold m-b-0">Register</h4>
                </div>
                <div class="panel-body">
                    <f:form class="form-horizontal m-t-20" action="insertData.html" method="post" modelAttribute="REGISTER">
						
						<div class="form-group">
							<div class="col-xs-12">
                        		<f:input type="text" path="firstName" required="" placeholder="Enter first name" class="form-control" id="userName" />
                        	</div>
                        </div>
                        
                        <div class="form-group">
                        	<div class="col-xs-12">
                        		<f:input type="text" path="lastName" required="" placeholder="Enter last name" class="form-control" id="userName" />
                        	</div>
                        </div>
						
						<div class="form-group">
                        	<div class="col-xs-12">
                            	<f:input data-parsley-type="ContactNumber" type="text" path="contactNumber" class="form-control" required="" placeholder="Contact Number"/>
                            </div>
                   		</div>
                   		
                   		<div class="form-group">
                        	<div class="col-xs-12">
                        		<f:input type="text" path="address" required="" placeholder="Address" class="form-control" id="userName" />
                        	</div>
                        </div>

						<div class="form-group">
                        	<div class="col-xs-12">
                            	<div class="checkbox checkbox-pink">
                                	<f:radiobutton path="gender" value="M" data-parsley-multiple="groups" />Male
                               		<f:radiobutton path="gender" value="F" data-parsley-multiple="groups" />Female
                                </div>
                        	</div>
                        </div>
						
						<div class="form-group ">
							<div class="col-xs-12">
								<f:input class="form-control" type="email" path="loginVO.email" required="" placeholder="Email"/>
							</div>
						</div>

						<div class="form-group">
							<div class="col-xs-12">
								<f:input class="form-control" path="loginVO.password" type="password" required="" placeholder="Password" />
							</div>
						</div>

						<div class="form-group">
							<div class="col-xs-12">
								<div class="checkbox checkbox-custom">
									<input id="checkbox-signup" type="checkbox" checked="checked" />
									<label for="checkbox-signup">I accept <a href="#">Terms and Conditions</a></label>
								</div>
							</div>
						</div>

						<div class="form-group text-center m-t-40">
							<div class="col-xs-12">
								<button class="btn btn-custom btn-bordred btn-block waves-effect waves-light" type="submit">
									Register
								</button>
							</div>
						</div>

					</f:form>

                </div>
            </div>
            <!-- end card-box -->

			<div class="row">
				<div class="col-sm-12 text-center">
					<p class="text-muted">Already have account?<a href="index.html" class="text-primary m-l-5"><b>Sign In</b></a></p>
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