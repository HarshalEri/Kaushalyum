<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
	<title>Services</title>
	<meta charset="utf-8">
	<meta name = "format-detection" content = "telephone=no" />
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/grid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/contact-form.css">

	<script src="js/jquery.js"></script>
	<script src="js/jquery-migrate-1.2.1.js"></script>
	<script src="js/script.js"></script>
	<!--[if (gt IE 9)|!(IE)]><!-->
	<script src="js/wow.js"></script>
	<script>
		$(document).ready(function () {
			if ($('html').hasClass('desktop')) {
				new WOW().init();
			}
		});
	</script>
	<!--<![endif]-->
	<!--[if lt IE 8]>
	<div style=' clear: both; text-align:center; position: relative;'>
	 <a href="http://windows.microsoft.com/en-US/internet-explorer/products/ie/home?ocid=ie6_countdown_bannercode">
		 <img src="images/ie8-panel/warning_bar_0000_us.jpg" border="0" height="42" width="820" alt="You are using an outdated browser. For a faster, safer browsing experience, upgrade for free today." />
	 </a>
	</div>
	<![endif]-->
	<!--[if lt IE 9]>
		<script src="js/html5shiv.js"></script>
		<link rel="stylesheet" type="text/css" media="screen" href="css/ie.css">
	<![endif]-->
	</head>
<body class="index-4">
<!--==============================header=================================-->
<header id="header">
	<div id="stuck_container">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<h1><a href="index.html">KAUSHALYUM</a><span>We care your baby</span></h1>
					<nav>
						<ul class="sf-menu">
							<li class="current"><a href="home.jsp">Home</a></li>
							<li><a href="aboutus">About</a></li>
							<li><a href="terms">Terms</a></li>
							<li><a href="services">Services</a></li>
							<li><a href="contacts">Contacts</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</header>

<!--=======content================================-->
<br/><br/>
<section class="container">
<div class="login" align="center">
      <h3 ><font size="5" face="calibri">LOGIN TO KAUSHALYUM</font></h3>
     <table border="0" align="center">
	      <s:form modelAttribute="login" action="signin" method="post">
	        <tr><td>UserName :</td><td></td><td><s:input path="username"/></td></tr>
			<tr><td>Password :</td>&nbsp;<td></td><td><s:password path="password"/></td></tr>
	        <tr><td colspan="3" align="center"><input type="submit" name="commit" value="Log In"></td></tr>
	      </s:form>
      </table>
    </div>
    <div class="login-help" align="center">
      <p><a href="forgotpassword.jsp">Forgot your password?</a></p>
    </div>
</section>
<!-- <a href="newuser">Sign Up</a> -->

</body>
</html>