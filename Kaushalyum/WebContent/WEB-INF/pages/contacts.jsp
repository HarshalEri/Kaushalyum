<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
	<title>Kaushalyum | Contacts</title>
	<meta charset="utf-8">
	<meta name = "format-detection" content = "telephone=no" />
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/grid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/contact-form.css">

	<script src="js/jquery.js"></script>
	<script src="js/jquery-migrate-1.2.1.js"></script>
	<script src="js/script.js"></script>
	<script src='//maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false'></script>
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
					<h1><a href="home.jsp">KAUSHALYUM</a><span>We care your baby</span></h1>
					<nav>
						<ul class="sf-menu">
							<li><a href="home.jsp">Home</a>
							<li><a href="login">Login</a></li>
							<li><a href="terms">Terms</a></li>
							<li><a href="services">Services</a></li>
							<li class="current"><a href="contacts">Contacts</a></li>
							<li><a href="aboutus">AboutUs</a></li>
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
						<h2><span>Our Locations</span></h2>
					</header>
					<div class="content_map">
						<div class="google-map-api"> 
							<div id="map-canvas" class="gmap"></div> 
						</div> 
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="full-width-container block-2">
		<div class="container">
			<div class="row">
				<div class="grid_6 preffix_1">
					<div>
						<hader>
							<h2 align="center"><span >Contact Information</span></h2>
						</hader>
						<p class="el-1">
						
						</p>
						<p class="el-2">
						               Please do visit our Facebook page ! <a href="https://www.facebook.com/Kaushalyum-550133541832807/?ref=settings"><img src="C:\Users\vaibs\Desktop\new website\build-up\images/asbf.png" height="25" width="50"></a> 
						</p>
					</div>
					<div class="grid_3 alpha">
						<div class="address">
							<p>Address: <br>B 12 Safalya Urban Bank Colony ,Ghulmohar Road Corner<br>Ahmednagar-414003</p>
						</div>
					</div>
					<div class="grid_3">
						<div class="address">
							<p>Telephone:+91 7249509775<br>E-mail: <a href="mailto:kaushalyum@gmail.com" class="mail">kaushalyum@gmail.com</a></p>
						</div>
					</div>

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
				<h3><span>Follow Us</span></h3>
				<a href="https://www.facebook.com/Kaushalyum-550133541832807/?ref=settings" class="btn bd-ra"><span class="fa fa-facebook"></span></a>
				<a href="https://twitter.com/EriAmol" class="btn bd-ra"><span class="fa fa-google-plus"></span></a>
				<pre>© <span id="copyright-year"></span> |  Privacy Policy</pre>
				
			</div>
		</div>
	</div>
</footer>
<script type="text/javascript">
	google_api_map_init();
	function google_api_map_init(){
		var map;
		var coordData = new google.maps.LatLng(parseFloat(40.650408), parseFloat(-73.950030,12));
		var markCoord1 = new google.maps.LatLng(parseFloat(40.650408), parseFloat(-73.950030));
		var marker;
		
		function initialize() {
			var mapOptions = {
				zoom: 14,
				center: coordData,
				scrollwheel: false,
			}

			var map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);
			
			marker = new google.maps.Marker({
				map:map,
				position: markCoord1,
			});

			google.maps.event.addDomListener(window, 'resize', function() {
				map.setCenter(coordData);
				var center = map.getCenter();
			});
		}

		google.maps.event.addDomListener(window, "load", initialize); 

	}
	<a href="http://www.freecounterstat.com" target="_Blank" title="hit counter">hit counter</a><br/> <script type="text/javascript" src="http://counter10.01counter.com/private/counter.js?c=7f3273a0fb6bae605244c32a7cdf07b5"</script> 
</script>
</body>
</html>