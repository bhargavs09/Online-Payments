<%@page import="com.DataBaseConnection.DBConnection"%>
<%@page import="com.Interface.MyInterface"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
<%@page import="com.DaoImplemetation.DaoImpementsClass"%>



<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Moderna - Bootstrap 3 flat corporate template</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<meta name="description" content="" />
<meta name="author" content="http://bootstraptaste.com" />
<!-- css -->
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
<link href="css/jcarousel.css" rel="stylesheet" />
<link href="css/flexslider.css" rel="stylesheet" />
<link href="css/style.css" rel="stylesheet" />


<!-- Theme skin -->
<link href="skins/default.css" rel="stylesheet" />

<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body>
<div id="wrapper">

	<!-- start header -->
	<header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><span>M</span>oderna</a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li><a href="index.html">Home</a></li>
<!--                         <li class="dropdown "> -->
<!--                             <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">Features <b class=" icon-angle-down"></b></a> -->
<!--                             <ul class="dropdown-menu"> -->
<!--                                 <li><a href="typography.html">Typography</a></li> -->
<!--                                 <li><a href="components.html">Components</a></li> -->
<!-- 								<li><a href="pricingbox.html">Pricing box</a></li> -->
<!--                             </ul> -->
<!--                         </li> -->
                        <li class="active"><a href="UWellcomepage2.jsp">GO BACK</a></li>
                       
                        <li><a href="contact.html">Contact</a></li>
                         <li><a href="UserWellcomePage.jsp">LogOut</a></li>
                    </ul>
                </div>
            </div>
        </div>
	</header>
	<br><br>
	
	
		
				<%
				String Monumber=request.getParameter("Month");
				
				System.out.println("----------->All Values Comming"+Monumber);				
				
				DBConnection dd=new DBConnection();
				
				Connection c=dd.con();
				
				
				PreparedStatement ps=(PreparedStatement)c.prepareStatement("SELECT MeterNo, date, month, year, UsedPower, Amount FROM `smartgrid`.`readerdetails` where month='"+Monumber+"'");
				ResultSet rs=ps.executeQuery();
				
// 				PreparedStatement ps1=c.prepareStatement("SELECT username,Area,MaxPower FROM `smartgrid`.`adminrecords` where MeterNo='"+Monthnumber+"'");            
				
// 				ResultSet rs1=ps1.executeQuery();
				
			
				
				%>
				
				
				 <table border="2" style="position:relative;left:10px; background-color:#00ff00">
				
	                  <tr>
<!-- 	                  <th>User Name</th> -->
	                <th>  MeterNO</th>
                   <th>Month</th>
					<th>Used Power</th>
					<th>Amount</th>
					<th>ONLINE TRANSFERING</th>
	             
	                   </tr>
	                   
				
				
				
				
			<% 
	while(rs.next())
	{
		String MeterNo=rs.getString(1);
		String date=rs.getString(2);
		
		String month=rs.getString(3);
		String year=rs.getString(4);
		String usedpower=rs.getString(5);
		String Amount=rs.getString(6);
		

				%>

	               
	                   
	<!-- end header -->
	<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<ul class="breadcrumb">
					<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
					<li class="active">Portfolio</li>
				</ul>
			</div>
		</div>
	</div>
	</section>
	
	
			
	

			 <tr>
<%-- 	                    <td height="50"> <%=Username%></td> --%>
	                   <td><%=MeterNo%></td> 
	         <td height="50"> <%=month%></td>
                      
                         <td> <%=usedpower%></td>
                         
	                   <td><%=Amount%><td><a href="http://localhost:8080/BankTransaction//">Payment</a>	</td></td>

	                   
	                   </tr>
			
			
				
				<%
				} 
			%>

<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.fancybox.pack.js"></script>
<script src="js/jquery.fancybox-media.js"></script>
<script src="js/google-code-prettify/prettify.js"></script>
<script src="js/portfolio/jquery.quicksand.js"></script>
<script src="js/portfolio/setting.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/animate.js"></script>
<script src="js/custom.js"></script>
</body>
</html>