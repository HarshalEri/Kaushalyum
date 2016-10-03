<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
	<title>Kaushalyum | Welcome</title>
	<meta content="text/html; charset=UTF-8">
	<meta name = "format-detection" content = "telephone=no" />
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/grid.css">
	<link rel="stylesheet" href="css/style.css">

	<script src="js/jquery.js"></script>
	<script src="js/jquery-migrate-1.2.1.js"></script>
	<script src="js/jquery.stellar.js"></script>
	<script src="js/script.js"></script>
	<script src="js/wow.js"></script>
	<script>
		$(document).ready(function () {
			if ($('html').hasClass('desktop')) {
				new WOW().init();
			}
		});
	</script>
	</head>
<body class="index-1">

<header id="header">
	<div id="stuck_container">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<h1><a href="home.jsp">KAUSHALYUM</a><span>We care your baby</span></h1>
					<nav>
						<ul class="sf-menu">
							<li><a href="home.jsp">Home</a></li>
							<li><a href="login">Login</a></li>	
							<li><a href="terms">Terms</a></li>
							<li><a href="services">Services</a></li>
							<li><a href="contacts">Contacts</a></li>
							<li><a href="aboutus">AboutUs</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</header>
<section id="content">
	Welcome ${userModel.firstName},
 
</section>




<footer id="footer">
	<div class="container">
		<div class="row">
			<div class="grid_12 copyright">
				<h3><span>Follow Us</span></h3>
				<a href="https://www.facebook.com/Kaushalyum-550133541832807/?ref=settings" class="btn bd-ra"><span class="fa fa-facebook"></span></a>
				<a href="https://twitter.com/EriAmol" class="btn bd-ra"><span class="fa fa-google-plus"></span></a>
				<pre>© <span id="copyright-year"></span> |  Privacy Policy</pre>
				
			</div>
		</div>
	</div>
</footer>
<script>
	$(document).ready(function() { 
			if ($('html').hasClass('desktop')) {
				$.stellar({
					horizontalScrolling: false,
					verticalOffset: 20,
					resposive: true,
					hideDistantElements: true,
				});
			}
		});	
</script>
</body>
</html>