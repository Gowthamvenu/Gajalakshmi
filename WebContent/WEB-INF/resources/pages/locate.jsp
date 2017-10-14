<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<html ng-app="GLH">

<head>
    <meta charset="utf-8">
    <img src="">
    <title>GLH-SHOP</title>
    <meta name="description" content="Attract the most stylish retail lovers with this beautiful and minimalist online store. Create an impression by adding your hottest products to the "Must Have Items" on the homepage and lure your shoppers with the stylish product gallery on the Shop page. Start editing now and create an online store that's as chic as your brand. ">
	<!-- css -->
<!-- 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">  -->
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />"></link>
	<%-- <jsp:include page="css/bootstrap.min.css" /> --%>
	<!-- js -->
  
	<!-- @media (min-width: 767px) {
		.navbar-nav{
			margin: 0 auto;
			display: table;
			table-layout: fixed;
			float:none;
			background-color:#535151;
			color:white;
		}	
		.nav{
			background-color:#535151;
		}
		#myNavbar{
			height: 86px;
			font: 15px/1.4em raleway,sans-serif;
		}
		.container{
			margin-left:5%;
		}
	}
	@media (max-width: 960px) {
			.nav{
				background-color:#535151;
			}
			.navbar .navbar-collapse {
			  text-align: left;
			  background-color:#535151;
			  color:white;
			}
	}
	@media (max-width: 767px) {
			#brandText1{
				color:white;
				float: left;
			}
			#brandText2{
				color:white;
				float: left;
			}
	} -->
	
	<style> 
	@media (min-width: 767px) {
		.nav{
			padding-top: 1%;
			/* height: 11%; */
			/* height:88px; */
		}
		.navbar-nav{
			margin: 0 auto;
			<!-- display: table; -->
			table-layout: fixed; 
			display:-moz-box;
		-moz-box-pack:center;
		-moz-box-align:center;
			float:none;
			color:white;
			font: 15px/1.4em raleway,sans-serif;
		}
		.navbar{
			align:center;
			height: 10%;
		}		
		
		.container{
			width:75% !important;
		}
		
	}
	@media(max-width:427px){
	.navbar-brand br{
			display:block !important;
		}
		.navbar-brand{
			font-size: 16px;
			padding: 0px 15px;
		}
		.navbar-toggle{
			background-color: gray!important;
			padding: 9px 10px;
   		    margin-top: 17px;
		}
	}
	@media (min-width: 427px) {
	.navbar-brand br{
			display:none !important;
		}
	}
	@media (max-width: 767px) {
		.nav{
			height: 11%;
		}
		.navbar-nav{
			margin: 0 auto;
			display: table; 
			table-layout: fixed; 
			float:none;
			color:white;
			font: 15px/1.4em raleway,sans-serif;
		}
		.navbar{
			align:center;
		}	
		.navbar-brand{
			font-size: 16px;
			padding: 0px 15px;
		}
	}
	.active{
		 background-color: whitesmoke;
		 color:gray;
	}
	 .nav .active a { background:gray!important; background-color: gray!important;color:black;}
	footer {
      background-color: #333;
      padding: 25px;
	  color:#D3D3D3;
    }
	</style>
	
	
</head>

<body>

	<div class="container-fluid text-center" ng-controller="locateController">
				<nav class="navbar navbar-inverse navbar-fixed-top" align="center;" style="background-color: white;">
				  <div class="container" >
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						<span class="icon-bar" ng-nodel="abc"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>                        
					  </button>
					  <a class="navbar-brand visible-md  visible-lg" style="font: 10px;letter-spacing: 0.1em;padding-top:25px;"><span style="color:#403b37 !important;">GAJALAKSHMI</span> <span style="color: #fa03bb;">HANDLOOMS</span></a></br>
					  <a class="navbar-brand visible-xs" style="letter-spacing: 0.3em;"><span style="color:#403b37 !important;">GAJALAKSHMI</span><br> <span style="color: #fa03bb;">HANDLOOMS</span></a>
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
					  <ul class="nav navbar-nav">
						<li ng-class="{ active: isActive('Home') }"><a href="<c:url value="/home" />" style=" color: gray;" >Home</a></li>
						<li ng-class="{ active: isActive('Products') }"><a href="<c:url value="/products" />">Products</a></li>
						<li ng-class="{ active: isActive('Locate') }"><a href="<c:url value="/locate" />">Locate Us</a></li>
						<li ng-class="{ active: isActive('Contact') }"><a href="<c:url value="/contact" />">Contact Us</a></li>
					  </ul>
					   <!-- <ul class="nav navbar-nav navbar-right">
						<li><a href="#"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
					  </ul>  -->
					</div>
				  </div>
				</nav>
			</div>
	
			<!-- <div ng-view >
				
				</div> 

<br><br><br><br><br> -->

<!-- view goes here -->
<div class="container-fluid text-center visible-sm visible-md visible-lg" style="margin-top:8%;">
	<div class="panel panel-default" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); ">
		<div class="panel-body">
		<!-- <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d1959.9470987282662!2d76.39765441222318!3d10.742637120300525!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1485457221923" width="100%" height="300" frameborder="0" style="border:0" allowfullscreen></iframe> -->
		<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d979.974088416095!2d76.398022!3d10.74247100000002!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf6016a4593e2d332!2sGajalakshmi+Handlooms!5e0!3m2!1sen!2sin!4v1491655265765" width="100%" height="500" frameborder="0" style="border:0" allowfullscreen></iframe>
		</div>
	</div>
</div>
<div class="container-fluid text-center visible-xs" style="margin-top:18%;">
	<div class="panel panel-default" style="box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); ">
		<div class="panel-body ">
		<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d979.974088416095!2d76.398022!3d10.74247100000002!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0xf6016a4593e2d332!2sGajalakshmi+Handlooms!5e0!3m2!1sen!2sin!4v1491655265765" width="100%" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
		</div>
	</div>
</div>
</br>
<!-- view ends here -->

	<footer class="container-fluid text-center">
				<div class="row" align="center">
					<div class="col-sm-4">
						<span style="letter-spacing: 0.1em;font: normal normal normal 13px/1.4em raleway,sans-serif;font-size:12px;">STAY CONNECTED</span></br>
						<span ><a href="mailto:gajalakshmihandlooms.gmail.com?Subject=Hello%20GLH" target="_top"><img src="<c:url value="/resources/logo/gmail.png" />" width="20px;" height="20px;"></img></a></span>
					</div>
					<div class="col-sm-4">
						<span style="letter-spacing: 0.1em;font: normal normal normal 13px/1.4em raleway,sans-serif;font-size:12px;">STORE COPYRIGHT</span> </br></br>
						<span>© 2018 by GAJALAKSHMI HANDLOOMS.</span>
					</div>
					<div class="col-sm-4">
						<span style="letter-spacing: 0.1em;font: normal normal normal 13px/1.4em raleway,sans-serif;font-size:12px;">NEED ASSISTANCE?</span></br>
						<span style="font: normal normal normal 13px/1.4em raleway,sans-serif;letter-spacing: 0.1em;">123-456-7890</span>
					</div>
				</div>
				  <!-- <p>Online Store Copyright</p>  
				  <form class="form-inline">Get deals:
					<input type="email" class="form-control" size="50" placeholder="Email Address">
					<button type="button" class="btn btn-danger">Sign Up</button>
				  </form> -->
				</footer>

</body>
<script src="<c:url value="/resources/angular/angular.min.js" />"></script>
<script src="<c:url value="/resources/angular/angular-route.js" />"></script>
<script src="<c:url value="/resources/angular/app.js" />"></script>
<script src="<c:url value="/resources/angular/jquery.min.js" />"></script>
<script src="<c:url value="/resources/angular/bootstrap.min.js" />"></script>

<%-- <script src="${pageContext.request.contextPath}/views/angular/angular-route.js" />
<script src="${pageContext.request.contextPath}/views/angular/app.js" />
<script src="${pageContext.request.contextPath}/views/angular/jquery.min.js" />
<script src="${pageContext.request.contextPath}/views/angular/bootstrap.min.js" /> --%>

</html>








