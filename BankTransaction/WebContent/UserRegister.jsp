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
<!--                      <li><a href="User.jsp">USER</a></li> -->
<!--                      <li><a href="deposit.jsp">DEPOSIT</a></li> -->
<!--                        <li><a href="Balancecheck.jsp">BALANCE CHECK</a></li> -->
<!--                         <li><a href="Transaction.jsp">TRANSFER AMOUNT</a></li> -->
                        
<!--                     <li><a href="#price-section">PRICING</a></li> -->
<!--                     <li><a href="#products-section">PRODUCTS</a></li> -->
<!--                     <li><a href="#contact-section">CONTACT</a></li> -->
<li><a href="index.jsp">LOGOUT</a></li>
                </ul>
            </div>
           
        </div>
    </div>
     <!--END NAV SECTION -->
     <!-- HEADER SECTION -->
    <div id="price-section">
       <div class="container" >
            <div class="row main-top-margin text-center" data-scrollreveal="enter top and move 100px, wait 0.5s">
                <div class="col-md-8 col-md-offset-2 col-sm-10 col-sm-offset-1">
                    <h1>WELCOME USER !!! Register Here</h1>
                   
                   
                   <form action="UserRegister" method="post">
                   AccountNumber:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="Accno" ><br><br>
                   UserName:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="username"><br><br>
                   User password:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password" name="userpwd"><br><br>
                   Present Address:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="presentaddress"><br><br>
                     Permanent Address:<input type="text" name="permanentaddress"><br><br>
                    Mobile Number:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="number" name="mobileno"><br><br>
                    <input type="submit" value="Submit">
                   
                   </form>
                   
                   
                   
                   
                   
                   
                   
                </div>
            </div>
           <!-- ./ Main Heading-->
            <div class="row row main-low-margin">
               <div class="col-md-4 col-sm-4" data-scrollreveal="enter left and move 100px, wait 0.8s">                 
                    <div class="pricing">
                        <div class="pricing-head">
                            <span class="price">
                                <sup>$</sup>
                                <span class="price-amount">12</span>
                                <small>/month</small>
                            </span>
                        </div>
                        <ul>
                            <li><strong>BASIC PLAN</strong></li>
                            <li><strong>1 GB </strong> Data</li>
                            <li>10 <strong>Emails</strong></li>
                            <li>Limit Of<strong>10</strong> Users</li>
                            <li><strong>24x7</strong> Support</li>
                            <li><strong>Online</strong> Access Available</li>
                             <li><strong>Online</strong> Management Tool</li>
                        </ul>
                        <a href="#" class="pricing-grab">GET TI NOW</a>
                    </div>
                   
                </div>
                <div class="col-md-4 col-sm-4" data-scrollreveal="enter bottom and move 100px, wait 0.8s">                 
                    <div class="pricing">
                        <div class="pricing-head">
                            <span class="price">
                                <sup>$</sup>
                                <span class="price-amount">15</span>
                                <small>/month</small>
                            </span>
                        </div>
                        <ul>
                            <li class="backcolor-li"><strong>MEDIUM PLAN</strong></li>
                            <li><strong>1 GB </strong> Data</li>
                            <li>10 <strong>Emails</strong></li>
                            <li>Limit Of<strong>10</strong> Users</li>
                            <li><strong>24x7</strong> Support</li>
                            <li><strong>Online</strong> Access Available</li>
                             <li><strong>Online</strong> Management Tool</li>
                        </ul>
                        <a href="#" class="pricing-grab">GET TI NOW</a>
                    </div>
                   
                </div>               
 <div class="col-md-4 col-sm-4" data-scrollreveal="enter right and move 100px, wait 0.8s">                 
                    <div class="pricing">
                        <div class="pricing-head">
                            <span class="price">
                                <sup>$</sup>
                                <span class="price-amount">18</span>
                                <small>/month</small>
                            </span>
                        </div>
                        <ul>
                            <li><strong>ADVANCE PLAN</strong></li>
                            <li><strong>1 GB </strong> Data</li>
                            <li>10 <strong>Emails</strong></li>
                            <li>Limit Of<strong>10</strong> Users</li>
                            <li><strong>24x7</strong> Support</li>
                            <li><strong>Online</strong> Access Available</li>
                             <li><strong>Online</strong> Management Tool</li>
                        </ul>
                        <a href="#" class="pricing-grab">GET TI NOW</a>
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
