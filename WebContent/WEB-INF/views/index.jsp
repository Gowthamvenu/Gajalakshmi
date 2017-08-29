<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">

<html ng-app="GLH">
<head>
    <meta charset="utf-8">
    
    <title>GLH-SHOP</title>
    <meta name="description" content="Attract the most stylish retail lovers with this beautiful and minimalist online store. Create an impression by adding your hottest products to the "Must Have Items" on the homepage and lure your shoppers with the stylish product gallery on the Shop page. Start editing now and create an online store that's as chic as your brand. ">
	<!-- css -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> 
	<!-- <link rel="/css/bootstrap.min.css"></link> -->
	<jsp:include page="css/bootstrap.min.css" />
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
			height:88px;
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
		}		
		
	}
	@media (max-width: 767px) {
		.nav{
			height:88px;
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
	}
	.active{
		 background-color: #333;
	}
	 .nav .active a { background:#222222!important; background-color:#222222!important;}
	footer {
      background-color: #333;
      padding: 25px;
	  color:#D3D3D3;
    }
	</style>
	
	
</head>
<body  >
		
		<!-- <nav class="navbar navbar-inverse navbar-fixed-top" style="background-color:#535151;height: 86px;top: 0px;padding-top: 1%;">
		    <div class="container" >
			<div class="navbar-header" >
			  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>                        
			  </button> 
			  <a class="navbar-brand visible-xs" href="#"><span id="brandText1" style="letter-spacing:0.3em;">GAJALAKSHMI </span>  </br> <span id="brandText2" style="letter-spacing:0.3em;">HANDLOOMS </span></a>
			  <a class="navbar-brand visible-lg visible-md visible-sm" href="#"><span id="brandText1" style="letter-spacing:0.3em;">GAJALAKSHMI HANDLOOMS </span></a>
			</div>  
			<div class="collapse navbar-collapse" id="myNavbar" style="padding-left:0%;">
			  <ul class="nav navbar-nav" style="color: #D3D3D3;transition: color 0.4s ease 0s;">
				
				<li >
				<a href="#">Home</a></li>
				 <li><a  href="#">Shop</span></a>
				</li>
				<li><a href="#">Sale</a></li>
				<li><a href="#">Customer Care</a></li>
			  </ul>
			</div>
		  </div>
		</nav> -->
		
			<!-- <div class="navbar navbar-inverse navbar-fixed-top">
			  <div class="container">
				<div class="navbar-header">
				  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				  </button>
				  <a class="navbar-brand" href="#">GAJALAKSHMI HANDLOOMS</a>
				</div>
				<div class="collapse navbar-collapse">
				  <ul class="nav navbar-nav">
					<li class="active"><a href="#">Home</a></li>
					<li><a href="#about">About</a></li>
					<li><a href="#contact">Contact</a></li>
				  </ul>
				</div><!--/.nav-collapse 
			  </div>
			</div> -->
			<div class="container-fluid text-center" ng-controller="mainController">
				<nav class="navbar navbar-inverse navbar-fixed-top" align="center;">
				  <div class="container" >
					<div class="navbar-header">
					  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
						<span class="icon-bar" ng-nodel="abc"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>                        
					  </button>
					  <a class="navbar-brand visible-xs " style="font: 10px;letter-spacing: 0.1em;">GAJALAKSHMI HANDLOOMS</a></br>
					</div>
					<div class="collapse navbar-collapse" id="myNavbar">
					  <ul class="nav navbar-nav">
					  <li class="visible-sm visible-md visible-lg" style="letter-spacing: 0.3em;"><a class="navbar-brand" >GAJALAKSHMI HANDLOOMS</a> </li>
						<li class="active" ng-class="{ active: isActive('') }"><a href="#home">Home</a></li>
						<li ng-class="{ active: isActive('Products') }"><a href="#products">Products</a></li>
						<li ng-class="{ active: isActive('Locate') }"><a href="#locate">Locate Us</a></li>
						<li ng-class="{ active: isActive('Contact') }"><a href="#contact">Contact Us</a></li>
					  </ul>
					   <!-- <ul class="nav navbar-nav navbar-right">
						<li><a href="#"><span class="glyphicon glyphicon-user"></span> Your Account</a></li>
						<li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span> Cart</a></li>
					  </ul>  -->
					</div>
				  </div>
				</nav>
			</div>
				<div ng-view >
				
				</div>

				<footer class="container-fluid text-center">
				<div class="row" align="center">
					<div class="col-sm-4">
						<span style="letter-spacing: 0.1em;font: normal normal normal 13px/1.4em raleway,sans-serif;font-size:12px;">STAY CONNECTED</span></br>
						<span ><a href="mailto:gajalakshmihandlooms.gmail.com?Subject=Hello%20GLH" target="_top"><img alt="Image" src="${pageContext.request.contextPath}/logo/gmail.jpg" height="20px;" width="20px;"></img></a></span>
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
  <!-- <script  src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.3/angular.min.js"></script> -->
  <!-- <script  src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.3/angular-route.js"></script> -->
  <!-- <script src="views/angular/app.js"></script> -->
  <jsp:include page="angular/angular.min.js" ></jsp:include>
  <jsp:include page="angular/angular-route.js" ></jsp:include>
  <jsp:include page="angular/app.js" ></jsp:include> 
  <jsp:include page="angular/jquery.min.js" ></jsp:include>
   <jsp:include page="angular/bootstrap.min.js" ></jsp:include>  
  <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script> -->
  <!-- <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> -->
</html>
