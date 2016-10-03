<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
	<title>Kaushalyum | Registration</title>
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
	<style>
		.error {
			color: #ff0000;
			width:100%;
			
		}
		
		.errorblock {
			color: #000;
			background-color: #ffEEEE;
			border: 3px solid #ff0000;
			padding: 8px;
			margin: 16px;
		}
		
		.statusblock {
			color: #000;
			background-color: #ffffaa;
			border: 2px solid #000000;
			padding: 8px;
			margin: 16px;
		}
	</style>
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
							<li><a href="home.jsp">Home</a></li>
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

	<section class="container">
	<div class="login" align="center">
		<div class="login-page">
			<h5>Register To Kaushalyum</h5>
			<div class="form">
				<s:form modelAttribute="registration" action="signup" method="post"
					class="registration-form">

					<s:input path="firstName" placeholder="First Name" />
					<s:errors path="firstName" cssClass="error" />


					<s:input path="lastName" placeholder="Last Name" />
					<s:errors path="lastName" cssClass="error" />

					<s:password path="password" placeholder="Password" />
					<s:errors path="password" cssClass="error" />

					<s:password path="cpassword" placeholder="Confirm Password" />
					<s:errors path="cpassword" cssClass="error" />

					<s:input path="email" placeholder="Email Id" />
					<s:errors path="email" cssClass="error" />

					<s:input path="address" placeholder="Address" />
					<s:errors path="address" cssClass="error" />

					<s:input path="contactno" placeholder="Contact Number" />
					<s:errors path="contactno" cssClass="error" />

					<s:input path="age" placeholder="Age" />
					<button>create account</button>

					<p class="message">
						Already registered? <a href="login">Log In</a>
					</p>

				</s:form>
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