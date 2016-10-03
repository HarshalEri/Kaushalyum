<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
	<title>Kaushalyum | Services</title>
	<meta charset="utf-8">
	<meta name = "format-detection" content = "telephone=no" />
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
	<link rel="stylesheet" href="css/grid.css">
	<link rel="stylesheet" href="css/style.css">

	<script src="js/jquery.js"></script>
	<script src="js/jquery-migrate-1.2.1.js"></script>
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
<body class="index-3">
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
							<li class="current"><a href="services">Services</a></li>
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
		<div class="container">
			<div class="row">
						<h4><span> Main Services And Packages</span></h4>
				</div>
			</div>
			<div class="row">
				<div class="grid_8">
			<table>
				<tr>
					<td>
						<div class="grid_4_1">
							<div class="img_container">
								<img src="images/index-3_img-1.jpg" alt="img">
							</div>
						</div>
					</td>
					<td>
						<div class="grid_4_1">
							<p><h3><font size="18"> Child Bath</h3>
							<h3>
								<p><h3>
									DURATION-1 month
								</h3>
								</p>
							</h3>
							<h3>
								FARE- 5000.00/-
							</h3>
							<p>
								<i><b>* 10% Discount for Girl Child !.</b></I>
							</p>
							</p>
						</div>
					</td>
				</tr>
				<tr>
					<td>
						<div class="grid_4_1">
							<div class="img_container">
								<img src="images/index-3_img-2.jpg" alt="img">
							</div>
						</div>
					</td>
					<td>
						<div class="grid_4_1">
							<p>
							<h3>
								<font size="18">JOB- Child + Mother Massage 
							</h3>
							<h3>
								<p>
								<h3>
									DURATION-
									<h3>1 Month</h3>
								</h3>
								</p>
							</h3>
							<h3>
								FARE- 7500.00/-</font>
							</h3>
							</p>
							<p>
								<i><b>* 10% Discount for Girl Child !.</b></i>
							</p>
						</div>
					</td>
				</tr>
			</table>


			<div class="grid_4_1">
					<h5 class="h5__mod">Useful links</h5>
					<ul>
						<li><a href="http://www.firstcry.com/">First Cry</a></li>
						<li><a href="http://www.ima-india.org/ima/">Indian Medical Association</a></li>
						
						
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="full-width-container block-2">
		<div class="container">
			<div class="row">
					<div class="grid_12">
						<header>
							<h2><span>How to Bathe Your Baby</span></h2>
						</header>
					</div>
				<div class="grid_4_1">
					<div class="text_content"><p>Lay your baby in the tub feet first. Keep one hand supporting the baby's back, neck and head as you carefully lower him or her into the tub. ...
</p> </div>
					<h5>A</h5>
				</div>
				<div class="grid_4_1">
					<div class="text_content"><p>Begin washing the baby. Use a cup, or your cupped hand, to get the baby's body wet. ...</p> </div>
					<h5>B</h5>
				</div>
				<div class="grid_4_1">
					<div class="text_content"><p>Wash the hair. ...
Lift the baby from the tub.</p> </div>
					<h5>C</h5>
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
</body>
</html>