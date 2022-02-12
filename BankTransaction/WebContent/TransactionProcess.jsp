<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>



<script type="text/javascript">

	  function Redirect() {
          window.location="http://localhost:8080/ITJCC10-Users/transactionSucess.jsp";
       }
       setTimeout('Redirect()', 4000);
</script>
<script type="text/javascript">
window.history.forward(); 
    function noBack() { 
    	
    	window.history.forward(); 
    	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Welcome</title>




</head>

<body id="transactionbody" onload="noBack();" onpageshow="if (event.persisted) noBack();" onunload="">


<center>

<h4>Please wait....Don't Refresh page</h4>
Success
<center>
<img src="assets/loading.gif" alt="Mountain View">

</center>





</body>


</html>
