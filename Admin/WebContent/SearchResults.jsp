 <%@page import="com.Implementation.DaoImplement" %>
<%@page import="com.Interface.MyInterface" %>
<%@page import="com.DataBaseConnection.DBConnection" %>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.*"%>
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


            <div class="row main-low-margin">
                <div class="col-md-10 col-md-offset-1 col-sm-10 col-sm-offset-1">
                
<%--              <%=session.getAttribute("mtrno")%> --%>


<%
String MtrNo=request.getParameter("MeterNumber");

System.out.println("Values Comming..........");

DBConnection dbc=new DBConnection();

     Connection con=dbc.con();

     
     PreparedStatement ps=con.prepareStatement("SELECT * FROM `smartgrid`.`adminrecords`  where MeterNo='"+MtrNo+"'");
      ResultSet rs=ps.executeQuery();

%>







<table border="2" style="position:relative;left:10px; background-color:	#DA70D6">
			
                  <tr>

				<th>User Id</th>
				<th>User Name</th>
				<th>Email</th>
				<th>Area</th>
				<th> Date</th>
                <th>Mobile No</th>
                <th>Address</th>
                <th>Meter No</th>
                
                
                
                <th>Used Power</th>
                
                
                   </tr>



<%
while(rs.next())
{
	String userid=rs.getString(1);
	String username=rs.getString(2);
	String email=rs.getString(4);
	String area=rs.getString(5);
	String date=rs.getString(6);
	String mobileno=rs.getString(7);
	String address=rs.getString(8);
	String MeterNo=rs.getString(9);
	String MaxPwr=rs.getString(10);

			%>
			
			
			
			

 <tr>
                   <td height="50"><%=userid%></td> 

<td><%=username%></td> 
<td><%=email%></td> 
<td><%=area%></td> 
<td><%=date%></td> 
<td><%=mobileno%></td>
<td><%=address%></td>
<td><%=MeterNo%></td>
<td><%=MaxPwr%>-Units</td>
                   
       <%
}
%>	   
             

    <script src="assets/js/jquery.js"></script>
    <!-- CORE BOOTSTRAP LIBRARY -->
    <script src="assets/js/bootstrap.min.js"></script>
    

</body>
</html>