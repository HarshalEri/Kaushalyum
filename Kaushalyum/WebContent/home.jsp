<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Kaushalyum | Home </title>
	<meta charset=utf-8">
	<meta name = "format-detection" content = "telephone=no" />
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/grid.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/camera.css">
	<link rel="stylesheet" href="css/owl.carousel.css">

	<script src="js/jquery.js"></script>
	<script src="js/jquery-migrate-1.2.1.js"></script>
	<script src='js/camera.js'></script>
	<script src="js/owl.carousel.js"></script>
	<script src="js/jquery.stellar.js"></script>
	<script src="js/script.js"></script>
	<!--[if (gt IE 9)|!(IE)]><!-->
	<script src="js/jquery.mobile.customized.min.js"></script>
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
<body class="index">
<!--==============================header=================================-->
<header id="header">
	<div id="stuck_container">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<h1><a href="home.jsp">KAUSHALYUM</a><span>WE CARE YOUR BABY</span></h1>
					<nav>
						<ul class="sf-menu">
							<li class="current"><a href="home.jsp">Home</a></li>
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

<!--=======content================================-->

<section id="content">
	<div class="full-width-container block-1">
		<div class="camera_container">
			<div id="camera_wrap">
				<div class="item" data-src="images/index_img_slider-1.jpg">
					<div class="camera_caption fadeIn">
						<h3>A Place where we owe values</h3>
						<p> </p>
						<a href="#" class="btn bd-ra"><span class="fa fa-envelope-o"></span></a>
						<a href="#" class="btn bd-ra"><span class="fa fa-phone"></span></a>
						<a href="#" class="btn bd-ra"><span class="fa fa-map-marker"></span></a>
					</div>
				</div>
				<div class="item" data-src="images/index_img_slider-2.jpg">
					<div class="camera_caption fadeIn">
						<h3>Where we expand relations</h3>
						<p> </p>
						<a href="#" class="btn bd-ra"><span class="fa fa-envelope-o"></span></a>
						<a href="#" class="btn bd-ra"><span class="fa fa-phone"></span></a>
						<a href="#" class="btn bd-ra"><span class="fa fa-map-marker"></span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="full-width-container block-2">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>Welcome to Our Agency</span></h2>
					</header>
					<h4>KAUSHALYUM</h4>
					<p>Here's a novel Idea where we meet requirements .We all are aware of todays stressfull life ,We hardly get any time to look after our dear newly born babies.But now worry is over ! . Because Kaushalyum provides an interactive platform and we provide all the child care facilities.Where needy parents meet needy but skillfull women who would take care of your child as her own. And we do guarantee that.Staff will be skilled and you can order or place your services online using  our website.We are glad to serve you !.</p>
					
				</div>
			</div>
		</div>
	</div>
	<div class="full-width-container block-3 parallax-block" data-stellar-background-ratio="0.5">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>Services</span></h2>
					</header>
				</div>
				<div class="grid_4">
					<div class="element"><h3>Child Bath</h3></div>
				</div>
				<div class="grid_4">
					<div class="element"><h3>Massaging</h3></div>
				</div>
				<div class="grid_4">
					<div class="element"><h3>Washing Clothes</h3></div>
				</div>
				<div class="grid_4">
					<div class="element"><h3>Applying Oil</h3></div>
				</div>
				<div class="grid_4">
					<div class="element"><h3>Child Hygene</h3></div>
				</div>
			</div>
		</div>
	</div>
	<div class="full-width-container block-4">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>Projects</span></h2>
					</header>
				</div>
			</div>
			<div class="row">
				<div id="owl-carousel" class="owl-carousel">
					
					<div class="grid_4">
						<div class="">
							<div class="img_container"><img src="images/child.jpg" alt="img" height="200"></div>
							<div class="owl-text">Save Girl Child</div>
						</div>
					</div>
					<div class="grid_4">
						<div class="">
							<div class="img_container"><img src="images/pri.jpg" alt="img" height="200"></div>
							<div class="owl-text">Hygiene</div>
						</div>
					</div>
					<div class="grid_4">
						<div class="">
							<div class="img_container"><img src="images/index_img-2.jpg" alt=""></div>
							<div class="owl-text">Child Care</div>
						</div>
					</div>
					<div class="grid_4">
						<div class="">
							<div class="img_container"><img src="images/wel.jpg" alt="" height="200"></div>
							<div class="owl-text">Social welfare</div>
						</div>
					</div>
					<div class="grid_4">
						<div class="">
							<div class="img_container"><img src="images/dc.jpg" alt="" height="200"></div>
							<div class="owl-text">Training</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="full-width-container block-5">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>WHO Guidelines</span></h2>
					</header>
				</div>
				<div class="grid_4">
					<article>
						<h3>2009</h3>
						<p>The Baby-friendly Hospital Initiative (BFHI) is a global effort launched by WHO and UNICEF to implement practices that protect, promote and support breastfeeding.</p>
						
					</article>
				</div>
				<div class="grid_4">
					<article>
						<h3>2009</h3>
						<p>A list of acceptable medical reasons for supplementation was originally developed by WHO and UNICEF as an annex to the Baby-friendly Hospital Initiative (BFHI) package of tools in 1992.</p>
						
					</article>
				</div>
				<div class="grid_4">
					<article>
						<h3>2016</h3>
						<p>This guideline provides global, evidence-informed recommendations on daily iron supplementation in infants and children, as a public-health intervention for the prevention of anaemia and iron deficiency.</p>
						
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
				<a href="https://www.facebook.com/Kaushalyum-550133541832807/?ref=settings" class="btn bd-ra"><span class="fa fa-facebook"><img src="C:\Users\vaibs\Desktop\new website\Kaushalyum\images/fb.png"  height="100" width="100"></span></a>
				<a href="https://twitter.com/EriAmol" class="btn bd-ra"><span class="fa fa-google-plus"><img src="C:\Users\vaibs\Desktop\new website\Kaushalyum\images/tw.jpg" height="100" width="100"></span></a>
				<pre>© <span id="copyright-year"></span> |  Privacy Policy</pre>
				
			</div>
		</div>
	</div>
	
</footer>
<script>
	jQuery(function(){
		jQuery('#camera_wrap').camera({
			height: '34.58333333333333%',
			thumbnails: false,
			pagination: true,
			fx: 'simpleFade',
			loader: 'none',
			hover: false,
			navigation: false,
			playPause: false,
			minHeight: "139px",
		});
	});
</script>
<script>
	$(document).ready(function() {
		$(".owl-carousel").owlCarousel({
			navigation: true,
			pagination: false,
			items : 3,
			itemsDesktop : [1199,3],
			itemsDesktopSmall : [979,3],
			itemsTablet: [750,1],
			itemsMobile : [479,1],
			navigationText: false
		});
	});
</script>
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
<a href="http://www.freecounterstat.com" target="_Blank" title="hit counter">hit counter</a><br/> <script type="text/javascript" src="http://counter10.01counter.com/private/counter.js?c=7f3273a0fb6bae605244c32a7cdf07b5"></script> 
</body>
</html>