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
    <title>LOCAME Multipurpose Template</title>
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
                <a class="navbar-brand" href="#"><i class="fa fa-tint"></i>SBI BANK</a>
            </div>
            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.jsp">HOME</a></li>
<!--                     <li><a href="#about-section">ABOUT</a></li> -->
<!--                     <li><a href="#services-section">SERVICES</a></li> -->
<!--                     <li><a href="Adminpage.jsp">ADMIN</a></li> -->
                     <li><a href="UserLogin.jsp">USER</a></li>
<!--                      <li><a href="deposit.jsp">DEPOSIT</a></li> -->
<!--                        <li><a href="Balancecheck.jsp">BALANCE CHECK</a></li> -->
<!--                         <li><a href="Transaction.jsp">TRANSFER AMOUNT</a></li> -->
                        
                    <li><a href="#price-section">PRICING</a></li>
                    
                    <li><a href="#contact-section">CONTACT</a></li>
                    <li><a href="index.jsp">LOGOUT</a></li>
                </ul>
            </div>
           
        </div>
    </div>
   
   <div id="services-section" >
        <div class="container" >
            <div class="row main-top-margin text-center">
                <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1" data-scrollreveal="enter top and move 100px, wait 0.5s">
                   <div class="main">
		       <div class="login hexagon_box">
			          <h2 class="h2-4">Account Creation:</h2>
               
                <form action="UserAccountServlet" method="post" >
            <fieldset>
           
                <div>
                    <input type="text" name="username" placeholder="User Name"/><br><br>
                </div>
                
                
                <div>
                    <input type="text" name="balance" placeholder="Balance"/><br><br>
                </div>
                
                 <div>
                    <input type="text" name="branch" placeholder="Branch Code"/><br><br>
                </div>
               
                   <div>
                    <input type="text" name="email" placeholder="Email"/><br><br>
                </div>
                
                <div>
                    <input type="text" name="mobile" placeholder="Phone Number"/><br><br>
                </div>
                 
                
                
                <div>
                    <input type="text" name="address" placeholder="Address"/><br><br>
                </div>
                
                <input type="submit" name="submit" value="Create"/>
             
                
            </fieldset>    
        </form>
			</div>
		</div>
                </div>
            </div>
            <!-- ./ Main Heading-->
           
            <div class="row main-low-margin text-center">
                <div class="col-md-4 col-sm-4" data-scrollreveal="enter left and move 100px, wait 0.8s">
                    <i class="fa fa-bolt fa-5x color-red"></i>
                    <h3>RESPONSIVE DESIGN</h3>
                    <p>
                        
                    </p>
                </div>               
                <div class="col-md-4 col-sm-4" data-scrollreveal="enter bottom and move 100px, wait 0.8s">
                    <i class="fa fa-comments fa-5x color-green"></i>
                    <h3>24x7 SUPPORT</h3>
                    <p>
                        
                    </p>
                </div>
                <div class="col-md-4 col-sm-4" data-scrollreveal="enter right and move 100px, wait 0.8s">
                    <i class="fa fa-desktop fa-5x color-light-blue"></i>
                    <h3>AWESOME DISPLAY </h3>
                    <p>
                        
                    </p>
                </div>
            </div>
            <!-- ./ Main Heading-->
            <div class="row">
                <div class="col-md-12  col-sm-12 ">
                    <div class="col-md-6  col-sm-12" data-scrollreveal="enter left and move 100px, wait 0.8s">
                        <h3><i class="fa fa-tint"></i> Reach Us Here</h3>
                        <hr />
                        <p>
                        323, Vit University,<br />
                        Vellore , India.<br />                          
                        Call: +23-00-89-009<br />
                        Email: demo@yourdomain.com<br />
                            </p>
                        <h3> Social Presence</h3>
                        <a href="#"><i class="fa fa-facebook-square fa-3x color-facebook"></i></a>
                        <a href="#"><i class="fa fa-twitter-square fa-3x color-twitter"></i></a>
                        <a href="#"><i class="fa fa-google-plus-square fa-3x color-google-plus"></i></a>
                        <a href="#"><i class="fa fa-linkedin-square fa-3x color-linkedin"></i></a>
                        <a href="#"><i class="fa fa-pinterest-square fa-3x color-pinterest"></i></a>
                    </div>
                    <div class="col-md-6  col-sm-12" data-scrollreveal="enter right and move 100px, wait 0.8s">
                        <h3>Need Help ? Write Us. </h3>
                        <hr />
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
                                        <textarea name="message" id="message" required="required" class="form-control" rows="8"  placeholder="Message"></textarea>
                                    </div>
                                    <div class="form-group">
                                        <button type="submit" class="btn btn-primary">Submit Request</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    
                </div>
            </div>
             <!-- ./ Row Content-->
        </div>
    </div>  
    <!--END CONTACT SECTION --> 
    <!--FOOTER SECTION -->
    <div id="footer">
        <div class="container">
            <div class="row ">
                &copy; 2014 www.yourdomain.com | All Right Reserved 				
		
            </div>
            
        </div>
       
    </div>  
    <!--END FOOTER SECTION --> 
    <!-- JAVASCRIPT FILES PLACED AT THE BOTTOM TO REDUCE THE LOADING TIME  -->
    <!-- CORE JQUERY LIBRARY -->
    <script src="assets/js/jquery.js"></script>
    <!-- CORE BOOTSTRAP LIBRARY -->
    <script src="assets/js/bootstrap.min.js"></script>
     <!-- SCROLL REVEL LIBRARY FOR SCROLLING ANIMATIONS-->
    <script src="assets/js/scrollReveal.js"></script>
       <!-- CUSTOM SCRIPT-->
    <script src="assets/js/custom.js"></script>
</body>
</html>
