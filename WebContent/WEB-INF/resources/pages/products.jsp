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
		}
		.navbar-toggle{
			background-color: gray!important;
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

	<div class="container-fluid text-center" ng-controller="productController">
				<nav class="navbar navbar-inverse navbar-fixed-top" align="center;" style="background-color: white;">
				  <div class="container" >
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						<span class="icon-bar" ng-nodel="abc"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>                        
					  </button>
					  <a class="navbar-brand visible-xs " style="font: 10px;letter-spacing: 0.1em;"><span style="color:#403b37 !important;">GAJALAKSHMI</span> <span style="color: #fa03bb;">HANDLOOMS</span></a></br>
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
					  <ul class="nav navbar-nav">
					  <li class="visible-sm visible-md visible-lg" style="letter-spacing: 0.3em;"><a class="navbar-brand" ><span style="color:#403b37 !important;">GAJALAKSHMI</span> <span style="color: #fa03bb;">HANDLOOMS</span></a> </li>
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
<style>
	
	
	.navbar {
      margin-bottom: 50px;
      border-radius: 0;
    }
    
    /* Remove the jumbotron's default bottom margin */ 
     .jumbotron {
      margin-bottom: 0;
    }
   
    /* Add a gray background color and some padding to the footer */
    
	.panel-footer{
		padding: 18px 25px;
		background-color: #303132;
		text-align: center;
		color: white;
		/* width:298px; */
		overflow: hidden;
	}
	
	.panel{
		/* width: 298px; */
		height: 410px;
		object-fit: cover;
		border: 0;
	}
	.panel-body{
		padding: 0px;
		object-fit: cover;
		position: relative;
		border: 1px solid #333;
		overflow: hidden;
		width: 100%;
		height: 353px;
		 
	}
	.panel-body img {
	  max-width: 100%;
	  height: 353px;
	  position: absolute;
		top: 0;
		bottom: 0;
		right: 0;
		left: 0;
	  -moz-transition: all 0.2s ease-in-out;
	  -webkit-transition: all 0.2s ease-in-out;
	  transition: all 0.2s ease-in-out;
	 
	}
	.panel-body:hover img {
	  -moz-transform: scale(1.3);
	  -webkit-transform: scale(1.3);
	  transform: scale(1.3);
	  
	}
	.img-hover img {
		-webkit-transition: all .2s ease-in-out; /* Safari and Chrome */
		-moz-transition: all .2s ease-in-out; /* Firefox */
		-o-transition: all .2s ease-in-out; /* IE 9 */
		-ms-transition: all .2s ease-in-out; /* Opera */
		transition: all .2s ease-in-out;
	}
	body { padding-top: 88px; 
		
	}
	.shipping{
		letter-spacing:0.3em;
		width: 100%;
		background-color: rgba(211, 211, 211, 0.6);
		font: normal normal normal 13px/1.4em raleway,sans-serif;
		height: 40px;
		display:-moz-box;
		-moz-box-pack:center;
		-moz-box-align:center;
	}
	@media (max-width: 767px) {
		body { 
			padding-top: 50px; 
		}
	}
	
	
	
	</style>
<!-- <div class="shipping "><span  style="letter-spacing:0.3em;"  align="center">SHIPPING WORLDWIDE</span></div> -->
<div class="container-fluid text-center" >
					
					<h6 style="letter-spacing: 10.8000001907349px;font-family: times new roman,times,serif;font-size: 30px;"><b>YEAR ROUND</b></h6>
					<span><hr width="5%" style="background-color: red; height: 1px; border: 0;"></span>
					<p style="letter-spacing: 5.69999980926514px;font-family: times new roman,times,serif;font-size: 19px;"><!-- Must Have Items -->Shipping Worldwide</p>
					</br>
				</div>

				<div class="container" align="center">    
				  <div class="row">
					<div class="col-lg-4 col-sm-12 col-md-6">
					  <div class="panel ">
						<!-- <div class="panel-heading">BLACK FRIDAY DEAL</div> -->
						<div class="panel-body img-hover"><img src="<c:url value="/resources/images/img1.jpg" />" class="img-responsive" style="width:100%;" alt="Image"></div>
						<div class="panel-footer">KASAVU SAREE</div>
					  </div>
					</div>
					<div class="col-lg-4 col-sm-12 col-md-6"> 
					  <div class="panel">
						<!-- <div class="panel-heading">BLACK FRIDAY DEAL</div> -->
						<div class="panel-body"><img src="<c:url value="/resources/images/img2.jpg" />" class="img-responsive" style="width:100%" alt="Image"></div>
						<div class="panel-footer">DHOTHI</div>
					  </div>
					</div>
					<div class="col-lg-4 col-sm-12 col-md-6"> 
					  <div class="panel">
						<!-- <div class="panel-heading">BLACK FRIDAY DEAL</div> -->
						<div class="panel-body"><img src="<c:url value="/resources/images/img1.jpg" />" class="img-responsive" style="width:100%" alt="Image"></div>
						<div class="panel-footer">SET MUNDU</div>
					  </div>
					</div>
				  </div>
				<!-- </div>

				<div class="container" align="center"> -->    
				  <div class="row ">
					<div class="col-lg-4 col-sm-12 col-md-6">
					  <div class="panel panel-primary">
						<!-- <div class="panel-heading">BLACK FRIDAY DEAL</div> -->
						<div class="panel-body"><img src="<c:url value="/resources/images/img2.jpg" />" class="img-responsive" style="width:100%" alt="Image"></div>
						<div class="panel-footer">TISSUE SAREE</div>
					  </div>
					</div>
					<div class="col-lg-4 col-sm-12 col-md-6"> 
					  <div class="panel panel-primary">
						<!-- <div class="panel-heading">BLACK FRIDAY DEAL</div> -->
						<div class="panel-body"><img src="<c:url value="/resources/images/img1.jpg" />" class="img-responsive" style="width:100%" alt="Image"></div>
						<div class="panel-footer">MURAL PAINTED</div>
					  </div>
					</div>
					<div class="col-lg-4 col-sm-12 col-md-6"> 
					  <div class="panel panel-primary">
						<!-- <div class="panel-heading">BLACK FRIDAY DEAL</div> -->
						<div class="panel-body"><img src="<c:url value="/resources/images/img2.jpg" />" class="img-responsive" style="width:100%" alt="Image"></div>
						<div class="panel-footer">COTTON SAREES</div>
					  </div>
					</div>
				  </div>
				</div><br><br>
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