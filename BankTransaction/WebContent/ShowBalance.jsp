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
<!--                     <li><a href="#header-section">HOME</a></li> -->
                      <li><a href="index.jsp">HOME</a></li>
<!--                     <li><a href="#about-section">ABOUT</a></li> -->
<!--                     <li><a href="#services-section">SERVICES</a></li> -->
<!--                     <li><a href="Adminpage.jsp">ADMIN</a></li> -->
<!--                      <li><a href="User.jsp">USER</a></li> -->
                     <li><a href="deposit.jsp">DEPOSIT</a></li>
                       <li><a href="Balancecheck.jsp">BALANCE CHECK</a></li>
                        <li><a href="Transaction.jsp">TRANSFER AMOUNT</a></li>
                         <li><a href="index.jsp">LOGOUT</a></li>
<!--                     <li><a href="#price-section">PRICING</a></li> -->
<!--                     <li><a href="#products-section">PRODUCTS</a></li> -->
<!--                     <li><a href="#contact-section">CONTACT</a></li> -->
                </ul>
            </div>
           
        </div>
    </div>
   <div class="grid_16 prefix_1">
            <%
               
    String balance=(String) session.getAttribute("bal");
              
               %>
               
               
               
             
    
                 
            </div>
                 
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
<!--                     <div class="col-md-6  col-sm-12" data-scrollreveal="enter right and move 100px, wait 0.8s"> -->
<!--                         <h3>Need Help ? Write Us. </h3> -->
                        <hr />
                        
                        
                         <h2 class="h2-4">YOUR CURRENT BALANCE IS : <%=balance %></h2>
                         
                         
                         
                         
<!--                         <form> -->
<!--                             <div class="row"> -->
<!--                                 <div class="col-md-6 col-sm-6"> -->
<!--                                     <div class="form-group"> -->
<!--                                         <input type="text" class="form-control" required="required" placeholder="Name"> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                                 <div class="col-md-6 col-sm-6"> -->
<!--                                     <div class="form-group"> -->
<!--                                         <input type="text" class="form-control" required="required" placeholder="Email address"> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                             <div class="row"> -->
<!--                                 <div class="col-md-12 col-sm-12"> -->
<!--                                     <div class="form-group"> -->
<!--                                         <textarea name="message" id="message" required="required" class="form-control" rows="8"  placeholder="Message"></textarea> -->
<!--                                     </div> -->
<!--                                     <div class="form-group"> -->
<!--                                         <button type="submit" class="btn btn-primary">Submit Request</button> -->
<!--                                     </div> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </form> -->
<!--                     </div> -->
                    
<!--                 </div> -->
<!--             </div> -->
<!--              ./ Row Content -->
<!--         </div> -->
<!--     </div>   -->
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
