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
                    <a class="navbar-brand" href="index.html"><span>User</span>Full Details</a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li><a href="index.html">Home</a></li>

<!--                         <li><a href="MeterDetails.jsp">Meter Details</a></li> -->
<!--                         <li><a href="MeterUpdates.jsp">Meter Updates</a></li> -->
                        <li><a href="Decriptdata.jsp">LogOut</a></li>
                    </ul>
                </div>
            </div>
        </div>
	</header>
	<!-- end header -->
	<section id="inner-headline">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<ul class="breadcrumb">
					<li><a href="#"><i class="fa fa-home"></i></a><i class="icon-angle-right"></i></li>
					<li><a href="#">WELLCOME </a><i class="icon-angle-right"></i></li>
					<li class="active">USER</li>
				</ul>
			</div>
		</div>
	</div>
	</section>
	<section id="content">
	<div class="container">
		<div class="row demobtn">
			<div class="col-lg-12">
				<div class="row">
					<div class="col-lg-12">
					
					
					
		<%
				String mnumber=request.getParameter("MeterNumber");
				
				System.out.println("----------->All Values Comming"+mnumber);				
				
				DBConnection dd=new DBConnection();
				
				Connection c=dd.con();
				
				
				PreparedStatement ps=(PreparedStatement)c.prepareStatement("SELECT MeterNo, date, month, year, UsedPower, Amount FROM `smartgrid`.`encryptreaderdetails` where MeterNo='"+mnumber+"'");
				ResultSet rs=ps.executeQuery();
				
				System.out.println(rs);
			
				
				%>
				
				
				 <table border="2" style="margin-left: 50px; text-align: justify;">
				
	                  <tr>
	                <th id="th">  MeterNO</th>
                    
					
					<th id="th">Date</th>
					<th id="th">Month</th>
					<th id="th">Year</th>
					
					<th id="th">Used Power</th>
					<th id="th">Amount</th>
	             
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

	                 <tr><td id="td"> <%=MeterNo%></td> 
	                   <td id="td"><%=date %></td> 
	                   <td id="td"><%=month %></td> 
	                   <td id="td"><%=year%>	</td>

                         <td id="td"> <%=usedpower%></td>
                         
	                   <td id="td"><%=Amount%>	</td>

	                   
	                   </tr>
	                   <%
				} 
			%>
				    </table>

				
					
				</div>
				</div>
				<!-- divider -->

	<div id="sub-footer">
		<div class="container">
			<div class="row">
				<div class="col-lg-6">
					<div class="copyright">
						<p>
							<span>&copy; Moderna 2014 All right reserved. By </span><a href="http://bootstraptaste.com" target="_blank">Bootstraptaste</a>
						</p>
					</div>
				</div>
				<div class="col-lg-6">
					<ul class="social-network">
						<li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
						<li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
						<li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
						<li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
						<li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	</footer>
</div>
<a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
    ================================================== -->
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