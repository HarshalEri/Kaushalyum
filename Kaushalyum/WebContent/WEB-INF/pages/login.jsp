<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
	<head>
	<title>Kaushalyum</title>
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
    <div class="login-page">
    <h5>Login To Kaushalyum</h5>
  <div class="form">
     <s:form modelAttribute="login" action="signin" method="post" class="login-form">
	    <s:input placeholder="username" path="username"/>
	    <s:password placeholder="password" path="password"/>
	    <button>login</button>
      	<p class="message">Not registered? <a href="#">Create an account</a></p>
    </s:form>
  </div>
</div><!-- http://codepen.io/colorlib/pen/rxddKy -->
    </div>
</section>
</body>
</html>