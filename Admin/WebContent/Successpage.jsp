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
<!--                     <li><a href="services.jsp">SERVICES</a></li> -->
<!--                     <li><a href="pricing.jsp">PRICING</a></li> -->
                   
                    <li><a href="contact.jsp">CONTACT</a></li>
                    
                     <li><a href="NewUser.jsp">LOGOUT</a></li>
                     
                </ul>
            </div>

        </div>
    </div>
    
    <!--END NAV SECTION -->
    <!-- CONTACT SECTION -->
    <div class="section">
        <div class="container">


            <div class="row main-low-margin">
          
                <div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1">
                 
                   <legend> <marquee scrollamount="5" width="40">&lt;&lt;&lt;</marquee> Success Details<marquee scrollamount="5" direction="right" width="40">&gt;&gt;&gt;</marquee>
            
             </legend>
                    
                
                    
                    <h4>WELLCOME ::  <%=session.getAttribute("Username") %> &nbsp;&nbsp;&nbsp; YOU GOT NEW METER </h4><br>
                      <h3>METER NUMBER IS::: <td style="position:relative;background-color:#ADFF2F"> <%=session.getAttribute("MeterNo") %></td></h3>
                     <div id="slides">
<!--         <img src="assets/img/slider/images/pw10.jpg" alt="" /> -->
       <img src="assets/img/slider/images/pw12.jpg" alt="" />
    </div>
    
    
                  
                    
                    <h5>
                    
                    </h5>
                </div>
            </div>


        </div>
    </div>

    <div class="container">
        <div class="row main-low-margin text-center">
            <div class="col-md-5 col-sm-5">
                <div class="circle-body"><i class="fa fa-flask fa-5x  icon-set"></i></div>
                <h3>TESTED DESIGN</h3>
                <p>
                    
                </p>
            </div>

            <div class="col-md-7 col-sm-7">
                <h3>SEND A QUICK QUERY</h3>
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
                                <textarea name="message" id="Textarea1" required="required" class="form-control" rows="7" placeholder="Message"></textarea>
                            </div>
                            <div class="form-group">
                                <button type="submit" class="btn btn-primary">Submit Request</button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <div class="row main-low-margin ">


            <div class="col-md-7 col-sm-7">
                <h3> </h3>
                <hr>
                <p>
                    
                </p>
                <p>
                    
                </p>
            </div>
            <div class="col-md-5 col-sm-5 text-center">
                <div class="circle-body"><i class="fa fa-tint fa-5x  icon-set"></i></div>
                <h3>OUR LOCATION </h3>
                <p>
                    <p>
                        323, Vit University,<br>
                        Vellore , India.<br>
                        Call: +23-00-89-009<br>
                        Email: demo@yourdomain.com<br>
                    </p>

                </p>
            </div>
        </div>


    </div>
    <div class="space-bottom"></div>
    <!--END CONTACT SECTION -->
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
                    Email: demo@.powermainagement.com<br>
                </p>

                2019 www.powermainagement.com | All Right Reserved
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
