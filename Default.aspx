<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    
    <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        <meta name="description" />
        <meta name="author" />
        <title>
            AKGEC Training & Placement
        </title><!-- Bootstrap core CSS -->
    <%--Bootstrap CSS--%>
    <link rel="stylesheet" href="assets/bootstrap-3.3.7-dist/css/bootstrap.css" />
    <link rel="stylesheet" href="assets/bootstrap-3.3.7-dist/css/bootstrap-theme.min.css"/>
    <script src="assets/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
    <script src="assets/bootstrap-3.3.7-dist/jquery-1.12.4.min.js"></script>
    <script src="assets/bootstrap-3.3.7-dist/bootstrapjs.js"></script>

    <%--<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>--%>
        
    
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
        <!-- HTML5 shiv and Respond.js IE8 support of HTML5 elements and media queries --><!--[if lt IE 9]>
      <script type="text/javascript" src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script type="text/javascript" src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]--><!-- Custom styles for this template -->

        <link href="assets/css/carousel.css" rel="stylesheet" type="text/css"/>
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!--<link href="assets/css/sh-default.css" rel="stylesheet" default-stylesheet="true" type="text/css">-->
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
    </form>
    <div class="navbar-wrapper">
            <div class="container">
                <div class="navbar navbar-inverse navbar-fixed-top" role="navigation" style="background-color:black;">
                    <div class="container">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                                <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span>
                            </button><a class="navbar-brand" href="#" style="color:yellow;">Training & Placement</a>
                        </div>
                        <div class="navbar-collapse collapse">
                            <ul class="nav navbar-nav">
                                <li class="active">
                                    <a href="#">Home</a>
                                </li>
                                <li>
                                    <a href="#about">About</a>
                                </li>
                                <li>
                                    <a href="SignUp.aspx">Students</a>
                                </li>
                                <li>
                                    <a href="CompanyRegister.aspx">Company</a>
                                </li>
                                <li>
                                    <a href="#contact">Contact</a>
                                </li>                                
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- Carousel
    ================================================== -->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#myCarousel" data-slide-to="0" class="active">
                    <li data-target="#myCarousel" data-slide-to="1">
                        <li data-target="#myCarousel" data-slide-to="2"></li>
                    </li>
                </li>
            </ol>
            <div class="carousel-inner">
                <div class="item active"><img src="assets/images/akg1.jpg" alt="First slide"/></div>
                <div class="item"><img src="assets/images/akg2.jpg" alt="Second slide"/></div>
                <div class="item"><img src="assets/images/akg3.jpg" alt="Third slide"/></div>
            </div>
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev"><span class="fa fa-chevron-left glyphicon glyphicon-chevron-left"></span></a> <a class=
            "right carousel-control" href="#myCarousel" role="button" data-slide="next"><span class="fa fa-chevron-right glyphicon glyphicon-chevron-right"></span></a>
        </div><!-- /.carousel -->
        <!-- Marketing messaging and featurettes
    ================================================== -->
        <!-- Wrap the rest of the page in another container to center all the content. -->
        <div class="container marketing">
            <!-- Three columns of text below the carousel -->
            <div class="row">
                <div class="col-lg-4">
                    <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" style=
                    "width: 140px; height: 140px;"/>
                    <h2>
                        Students
                    </h2>
                    <p>
                        Students can register for a new account and login. They can then enter their details.
                    </p>
                    <p>
                        <a class="btn btn-default" href="SignUp.aspx" role="button">Login or SignUp&raquo;</a>
                    </p>
                </div><!-- /.col-lg-6 -->
                <div class="col-lg-4">
                    <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" style=
                    "width: 140px; height: 140px;">
                    <h2>
                        Companies
                    </h2>
                    <p>
                        Companies have to register for providing job openings.
                    </p>
                    <p>
                        <a class="btn btn-default" href="CompanyRegister.aspx" role="button">Company Registration &raquo;</a>
                    </p>
                </div><!-- /.col-lg-6 -->
                <div class="col-lg-4">
                    <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" style=
                    "width: 140px; height: 140px;">
                    <h2>
                        Admin
                    </h2>
                    <p>
                        Admin Login
                    </p>
                    <p>
                        <a class="btn btn-default" href="AdminLogin.aspx" role="button">Admin Login&raquo;</a>
                    </p>
                </div><!-- /.col-lg-6 -->
                <%--<div class="col-lg-4">
                    <img class="img-circle" src="data:image/gif;base64,R0lGODlhAQABAIAAAHd3dwAAACH5BAAAAAAALAAAAAABAAEAAAICRAEAOw==" alt="Generic placeholder image" style=
                    "width: 140px; height: 140px;">
                    <h2>
                        Heading
                    </h2>
                    <p>
                        Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo,
                        tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.
                    </p>
                    <p>
                        <a class="btn btn-default" href="#" role="button">View details &raquo;</a>
                    </p>
                </div><!-- /.col-lg-4 -->--%>
            </div><!-- /.row -->
            <!-- START THE FEATURETTES -->
            <hr class="featurette-divider">
            <div class="row featurette">
                <div class="col-md-7">
                    <h3 class="featurette-heading">
                        Job Opening News Section <span class="text-muted"></span>
                    </h3><br />
                    <%--<p class="lead">--%>
                        <h4><a href="ViewAd.aspx" style="text-decoration:none;">View New Job Ads</a></h4>
                    <%--</p>--%>
                </div>
                <div class="col-md-5">
                    <img class="featurette-image img-responsive" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
                </div>
            </div>
            <hr class="featurette-divider"/>
            <%--<div class="row featurette">
                <div class="col-md-5">
                    <img class="featurette-image img-responsive" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
                </div>
                <div class="col-md-7">
                    <h2 class="featurette-heading">
                        Resume Builder<span class="text-muted"></span>
                    </h2>
                    <p class="lead">
                        Student can build their resumes and download it.    
                    </p>
                </div>
            </div>--%>
            <hr class="featurette-divider"/>
            <div class="row featurette">
                <div class="col-md-7">
                    <h2 class="featurette-heading">
                        Placement Statistics <span class="text-muted"></span>
                    </h2>
                    <p class="lead">
                        Past year placement statistics will be displayed here.
                    </p>
                </div>
                <div class="col-md-5">
                    <img class="featurette-image img-responsive" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
                </div>
            </div>
            <hr class="featurette-divider"/>
            <div class="row featurette" id="contact">
                <div class="col-md-7">
                    <h2 class="featurette-heading">
                        Contact Us <span class="text-muted"></span>
                    </h2>
                    <p class="lead">
                        <b>Ajay Kumar Garg Engineering College,</b> <br />
                        27th Km Milestone, Delhi - Hapur Bypass Road, P.O. Adhyatmik Nagar Ghaziabad - 201009 <br />
                        Phone No :- 0120-2762841 to 2762851 <br />
                        Fax No:-(0120) 2761844, 2761845 , 2762170 ( Registrar office ), 2761846 ( T&P Cell ) <br />
                        Email:- akgecor@akgec.org <br />
                    </p>
                </div>
                <div class="col-md-5">
                    <img class="featurette-image img-responsive" data-src="holder.js/500x500/auto" alt="Generic placeholder image">
                </div>
            </div>
            <hr class="featurette-divider"/>
            <!-- /END THE FEATURETTES --><!-- FOOTER -->
            <footer>
                <p class="pull-right">
                    <a href="#">Back to top</a>
                </p>
                <p>
                    &copy; 2017 | Ajay kumar garg Engineering College, Ghaziabad &middot; <a href="#">Privacy</a>&middot; <a href="#">Terms</a>
                </p>
            </footer>
        </div><!-- /.container -->
        <!-- Bootstrap core JavaScript
    ================================================== -->
        <!-- Placed at the end of the document so the pages load faster -->
        <script type="text/javascript" src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
</body>
</html>