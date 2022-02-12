<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!DOCTYPE html>
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<!-- HEAD SECTION -->
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <!--[if IE]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <![endif]-->
    <title>Bootstrap Mutipager Template - Maxop</title>
    <!--GOOGLE FONT -->
    <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
    <!--BOOTSTRAP MAIN STYLES -->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
    <!--FONTAWESOME MAIN STYLE -->
    <link href="assets/css/font-awesome.min.css" rel="stylesheet" />
    <!--CUSTOM STYLE -->
    <link href="assets/css/style.css" rel="stylesheet" />
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
</head>
<!--END HEAD SECTION -->
<body>
    <!-- NAV SECTION -->
    
    <div class="navbar navbar-inverse navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">POWER MANAGEMENT</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.jsp">HOME</a></li>
<!--                     <li><a href="about.jsp">ABOUT</a></li> -->
                    <li><a href="AdminSearch.jsp">SEARCH</a></li>
                     <li><a href="NewUser.jsp">NEW USER</a></li>
                    <li><a href="services.jsp">SERVICES</a></li>
                    <li><a href="pricing.jsp">PRICING</a></li>
                    <li><a href="gallery.jsp">GALLERY</a></li>
                    <li><a href="contact.jsp">CONTACT</a></li>
                </ul>
            </div>

        </div>
    </div>
    
    <div id="slides">

        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <img src="assets/img/slider/images/pw6.jpg" alt="" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         <img src="assets/img/slider/images/pw5.jpg" alt="" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          <img src="assets/img/slider/images/pw8.jpg" alt="" />
    </div>
    <!--END NAV SECTION -->
    <!-- SERVICES SECTION -->
    <div class="section">
        <div class="container">

 <center> 
            <div class="row main-low-margin">
                <div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1">
                    <h1>WELLCOME ::: ADMIN </h1>
<!--                   <h4> New User Register?</h4> -->
                 
                <form action="SearchResults.jsp" method="post">
                 <h4><a href="#" style="color:#FF0000;">ENTER METER NUMBER:<input type="text" name="MeterNumber" ></h4></a><br>
                
<!--                 HttpSession session=request.getSession(); -->
<!--                 session.setAttribute("mtrno", MeterNumber); -->
                
             <input type="submit" value="SUBMIT"></center>
                
                </form>
                   
                   
                </div>
            </div>


        </div>
    </div><br><br>

    <div class="container">
        <div class="row main-low-margin text-center">
            <div class="col-md-4 col-sm-4">
                <div class="circle-body"><i class="fa fa-flask fa-5x  icon-set"></i></div>
                <h3>TESTED DESIGN</h3>
                <p>
                    
                </p>
            </div>
            <div class="col-md-4 col-sm-4">
                <div class="circle-body"><i class="fa fa-bell-o fa-5x  icon-set"></i></div>
                <h3>EASY TO CUSTOMIZE</h3>
                <p>
                    
                </p>
            </div>
            <div class="col-md-4 col-sm-4">
                <div class="circle-body"><i class="fa fa-edit fa-5x  icon-set"></i></div>
                <h3>WELL DOCUMENTED</h3>
                <p>
                    
                </p>
            </div>

        </div>
        <div class="row main-low-margin ">

            <div class="col-md-8 col-sm-8">
                <h3> </h3>
                <p>
                    
                </p>
                <p>
                    
                </p>
            </div>

            <div class="col-md-4 col-sm-4 text-center">
                <div class="circle-body"><i class="fa fa-desktop fa-5x  icon-set"></i></div>
                <h3>TESTED DESIGN</h3>
                <p>
                    
                </p>
            </div>
        </div>


    </div>
    <div class="space-bottom"></div>
    <!--END SERVICES SECTION -->
    <!--FOOTER SECTION -->

    <div id="footer">
        <div class="row">
            <div class="col-md-4">
                <h4>Quick Information :</h4>
                <p>
                    
                </p>
                <button type="submit" class="btn btn-primary">Get Quote</button>
            </div>
            <div class="col-md-4">
                <h4>Need Help ? Write Us. </h4>
                <hr>
                <form>
                    <div class="row">
                        <div class="col-md-6 col-sm-6">
                            <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Name">
                            </div>
                        </div>
                        <div class="col-md-6 col-sm-6">
                            <div class="form-group">
                                <input type="text" class="form-control" required="required" placeholder="Email address">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 col-sm-12">
                            <div class="form-group">
                                <textarea name="message" id="message" required="required" class="form-control" rows="3" placeholder="Message"></textarea>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Submit Request</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="col-md-4">
                <a href="#"><i class="fa fa-facebook-square fa-3x color-facebook"></i></a>
                <a href="#"><i class="fa fa-twitter-square fa-3x color-twitter"></i></a>
                <a href="#"><i class="fa fa-google-plus-square fa-3x color-google-plus"></i></a>
                <a href="#"><i class="fa fa-linkedin-square fa-3x color-linkedin"></i></a>
                <a href="#"><i class="fa fa-pinterest-square fa-3x color-pinterest"></i></a>
                <hr>
                <p>
                    323, Vit University,<br>
                    Vellore , India.<br>
                    Call: +23-00-89-009<br>
                    Email: demo@yourdomain.com<br>
                </p>

                2019 www.yourdomain.com | All Right Reserved
            </div>
        </div>


    </div>

    <!--END FOOTER SECTION -->
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY LIBRARY -->
    <script src="assets/js/jquery.js"></script>
    <!-- CORE BOOTSTRAP LIBRARY -->
    <script src="assets/js/bootstrap.min.js"></script>
    
</body>
</html>

</body>
</html>