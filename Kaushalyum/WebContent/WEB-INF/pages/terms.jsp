<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
	<title>Kaushalyum | Terms</title>
	<meta charset="utf-8">
	<meta name = "format-detection" content = "telephone=no" />
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/grid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/touchTouch.css">

	<script src="js/jquery.js"></script>
	<script src="js/jquery-migrate-1.2.1.js"></script>
	<script src="js/touchTouch.jquery.js"></script>
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
<body class="index-2">
<!--==============================header=================================-->
<header id="header">
	<div id="stuck_container">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<h1><a href="home.jsp">KAUSHALYUM</a><span>We care your baby</span></h1>
					<nav>
						<ul class="sf-menu">
						<li><a href="home.jsp">Home</a>
							<li><a href="aboutus">About</a></li>
							<li class="current"><a href="terms">Terms</a></li>
							<li><a href="services">Services</a></li>
							<li><a href="contacts">Contacts</a></li>
							<li><a href="login">Login</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</header>

<!--=======content================================-->

<section id="content">
		<div class="container">
		<div class="grid_12">
			<header>
				<h4>
				<span>Terms And Conditions</span>
			</h4>
			</header>
			<br/>
		</div>
		<div class="grid_4">
			<table>
				<tr>
					<td class="grid_5">
						<div class="img_container">
							<img src="images/index-2_img-1.jpg" alt="projects" height="200">
						</div>
					</td>
					<td></td>
					<td style="vertical-align:middle;">
						<p>I. As we provide the ayas for the child bath & massage. Our
							ayas are well trained & experienced.</p>
					</td>
				</tr>
				
				<tr>
					<td class="grid_5">
						<div class="img_container">
							<img src="images/index-2_img-2.jpg" alt="projects">
						</div>
					</td>
					<td></td>
					<td style="vertical-align:middle;">
						<p>II.As we provide the services to your home, you have the
							right to check the bags of ayas when they leave your home.</p>
					</td>
				</tr>
				
				<tr>
					<td class="grid_5">
						<div class="img_container">
							<img
								src="images/index-2_img-3.jpg" alt="projects">
						</div>
					</td>
					<td></td>
					<td style="vertical-align:middle;">
						<p>
							III. You can give your feed back & suggestions on our Facebook page or
							you can also mail it on <a
								href="mailto:http://kaushalyum@gmail.com">kaushalyum@gmail.com</a>
						</p>
					</td>
				</tr>
				
				<tr>
					<td class="grid_5">
						<div class="img_container">
							<img src="images/index-2_img-4.jpg" alt="projects" height="200">
						</div>
					</td>
					<td></td>
					<td style="vertical-align:middle;">
						<p>IV. As part of the registration process on the Site, Kaushalyum
							may collect the following personally identifiable information
							about you: Name including first and last name, email address,
							mobile phone number and contact details, Postal code, address
							etc.and information about the pages on the site you visit/access,
							the links you click on the site, the number of times you access
							the page and any such browsing information.</p>
					</td>
				</tr>
			</table>
		</div>
	</div>
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
	$(function(){
		$('#touch_gallery a').touchTouch();
	});
</script>
</body>
</html>