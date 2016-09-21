<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
	<title>Projects</title>
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
					<h1><a href="index.html">KAUSHALYUM</a><span>We care your baby</span></h1>
					<nav>
						<ul class="sf-menu">
							<li><a href="index.html">Home</a>
							</li>
							<li><a href="index-1.html">About</a></li>
							<li class="current"><a href="index-2.html">Terms</a></li>
							<li><a href="index-3.html">Services</a></li>
							<li><a href="index-4.html">Contacts</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</div>
</header>

<!--=======content================================-->

<section id="content">
	<div class="full-width-container block-1">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>Terms And Conditions</span></h2>
					</header>
				</div>
				<div id="touch_gallery">
					<div class="grid_4">
						<div class="img_container"><a href="images/index-2_img-1-big.jpg"><img src="images/index-2_img-1.jpg" alt="projects" height="200"></a></div>
						<article>
							<h4>I</h4>
							<p>As we provide the ayas for the child bath & massage. Our ayas are well trained & experienced.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/index-2_img-2-big.jpg"><img src="images/index-2_img-2.jpg" alt="projects"></a></div>
						<article>
							<h4>II</h4>
							<p>As we provide the services to your home, you have the right to check the  bags of ayas when they leave your home.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/index-2_img-3-big.jpg"><img src="images/index-2_img-3.jpg" alt="projects"></a></div>
						<article>
							<h4>III</h4>
							<p>You can give your feed back & suggestions on our Facebook page or you can also mail it on <a href ="mailto:http://kaushalyum@gmail.com">kaushalyum@gmail.com</a></p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_container"><a href="images/index-2_img-4-big.jpg"><img src="images/index-2_img-4.jpg" alt="projects" height="200"></a></div>
						<article>
							<h4>IV</h4>
							<p>As part of the registration process on the Site, Kaushalyum may collect the following personally identifiable information about you: Name including first and last name, alternate email address, mobile phone number and contact details, Postal code, Demographic profile (like your age, gender, occupation,  address etc.) and information about the pages on the site you visit/access, the links you click on the site, the number of times you access the page and any such browsing information.</p>
						</article>
					</div>
					
					
					
			</div>
		</div>
	</div>
</section>

<!--=======footer=================================-->
<footer id="footer">
	<div class="container">
		<div class="row">
			<div class="grid_12 copyright">
				<h2><span>Follow Us</span></h2>
				<a href="https://www.facebook.com/Kaushalyum-550133541832807/?ref=settings" class="btn bd-ra"><span class="fa fa-facebook"><img src="C:\Users\vaibs\Desktop\new website\Kaushalyum\images/fb.png" class="img-circle" height="100" width="100"></span></a>
				<a href="https://twitter.com/EriAmol" class="btn bd-ra"><span class="fa fa-google-plus"><img src="C:\Users\vaibs\Desktop\new website\Kaushalyum\images/tw.jpg" height="100" width="100"></span></a>
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
<a href="http://www.freecounterstat.com" target="_Blank" title="hit counter">hit counter</a><br/> <script type="text/javascript" src="http://counter10.01counter.com/private/counter.js?c=7f3273a0fb6bae605244c32a7cdf07b5"></script> 
</body>
</html>