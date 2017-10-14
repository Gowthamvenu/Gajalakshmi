<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<html ng-app="GLH">
<head>
	<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap.min.css" />"></link>
</head>
<style>
		.swag-line{
			content: '';
			<!-- position: absolute; -->
			display: block;
			<!-- top: 0; -->
			<!-- padding-top:2px; -->
			left: 0;
			right: 0;
			height: 2px;
			z-index: 2;
			background-color: #ac2aa1;
			background: -webkit-linear-gradient(45deg, #6b15a1, #ac2aa1);
			background: linear-gradient(45deg, #6b15a1, #ac2aa1);
		}
		
		div.polaroid {
		  width: 250px;
		  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
		  text-align: center;
		}
		.parallax1 {
			/* The image used */

			/* Full height */
			min-height: 100%;

			/* Create the parallax scrolling effect */
			position:relative;
			background-attachment: fixed;
			background-position: center;
			background-repeat: no-repeat;
			background-size: cover;
			opacity: 0.65;
		}
		.parallax2 {
			/* The image used */
	background-image: url('Images/img2.jpg');
			/* Full height */
			height: 80%; 

			/* Create the parallax scrolling effect */
			
			background-attachment: fixed;
			background-position: center;
			background-repeat: no-repeat;
			background-size: cover;
			/* opacity: 0.65; */
		}
		.pbw{
			color: #ddd;
			background-color: #282E34;
			text-align: center;
			/* padding: 50px 80px; */
			text-align: justify;
		}
		
		.caption{
			position: absolute;
			left: 0;
			top: 50%;
			width: 100%;
			text-align: center;
			color: #6f2626;
		}
		.caption span.border {
		  background-color: #111;
		  color: #fff;
		  padding: 18px;
		  font-size: 25px;
		  letter-spacing: 10px;
		}
		@media (max-width: 767px) {
			.caption span.border {
			  background-color: #111;
			  color: #fff;
			  padding: 3px !important;
			  font-size: 25px;
			  letter-spacing: 10px;
			}
			
		}
		@media (max-width: 960px) {
		   .caption span.border {
				  background-color: #111;
				  color: #fff;
				  padding: 3px !important;
				  font-size: 25px;
				  letter-spacing: 10px;
			}
		}
		
		.panel-footer{
		padding: 18px 25px;
		background-color: #303132;
		text-align: center;
		color: white;
		/* width:298px; */
		overflow: hidden;
	}
	
	.pp{
		 width: 298px;
		height: 410px;
		object-fit: cover;
		border: 0;
	}
	.panel-body{
		padding: 0px;
		object-fit: cover;
		position: relative;
		/* border: 1px solid #333; */
		overflow: hidden;
		 width: 100%;
		height: 40%;
		 
	}
	/* .panel-body img {
	  max-width: 100%;
	  height: 100%;
	  position: absolute;
		top: 0;
		bottom: 0;
		right: 0;
		left: 0;
	  -moz-transition: all 0.2s ease-in-out;
	  -webkit-transition: all 0.2s ease-in-out;
	  transition: all 0.2s ease-in-out;
	 
	} */
	.parentimage { 
	width: 100%;
		height: 353px;
	object-fit: cover;
	overflow: hidden;
	-webkit-transition: all .5s ease-out;
	-moz-transition: all .5s ease-out;
	-o-transition: all .5s ease-out;
	transition: all .5s ease-out;
} 
.parentimage:hover {
	-moz-transform: scale(1.5);
	-webkit-transform: scale(1.5);
	-o-transform: scale(1.5);
	-ms-transform: scale(1.5);
	transform: scale(1.5);
} 
	
	.no-gutter > [class*='col-'] {
    padding-right:0;
    padding-left:0;
}

footer {
      background-color: #333;
      padding: 25px;
	  color:#D3D3D3;
    }
		
		</style>
		<body>
		
			<div class="parallax1" style="background-image: url(<c:url value='/resources/images/img1.jpg'/>)">
				<div class="caption">
					<span class="border"><a href="<c:url value="/products" />" style="color:#fff;">GAJALAKSHMI HANDLOOMS</a></span>
				</div>
			</div>
			<div class="container" align="center">
			
			<h3 style="text-align:center;color:#111;">KASAVU SAREE</h3>
			<p style="color:#777;">This div is just here to enable scrolling.
			Tip: Try to remove the background-attachment property to remove the scrolling effect.</p>
				
				<div class="container" align="center">    
				  <div class="row no-gutter" align="center">
					<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
						<div class="panel-body">
							<img src="<c:url value="/resources/images/img1.jpg" />" class="img-responsive parentimage" style="width:100%;height:100%;" alt="Image">
						</div>
					</div>
					<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
						<div class="panel-body"> 
							<img src="<c:url value="/resources/images/img2.jpg" />" class="img-responsive parentimage" style="width:100%;height:100%;" alt="Image">
						</div>
					</div>
					<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
						<div class="panel-body"> 
							<img src="<c:url value="/resources/images/img1.jpg" />" class="img-responsive parentimage" style="width:100%;height:100%;" alt="Image">
						</div>
					</div>
				  </div>
				<!-- </div>

				<div class="container" align="center"> -->    
				  <div class="row no-gutter">
					<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
						<div class="panel-body">
							<img src="<c:url value="/resources/images/img2.jpg" />" class="img-responsive parentimage" style="width:100%;height:100%;" alt="Image">
						</div>
					</div>
					<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12"> 
						<div class="panel-body">
							<img src="<c:url value="/resources/images/img1.jpg" />" class="img-responsive parentimage" style="width:100%;height:100%;" alt="Image">
						</div>
					</div>
					<div class="col-lg-4 col-sm-4 col-md-4 col-xs-12">
						<div class="panel-body"> 
							<img src="<c:url value="/resources/images/img2.jpg" />" class="img-responsive parentimage" style="width:100%;height:100%;" alt="Image">
						</div>
					</div>
				  </div>
				</div>
				
				
			</div>

			<!-- <div class="parallax2">
			
			
			
			</div> -->
			
			<div class="">
			</br>
			</br>
			</br>
				
			</div>
				  
				
				
			<!-- <h3 style="text-align:center;">SET MUNDU</h3>
			<p>This div is just here to enable scrolling.
			Tip: Try to remove the background-attachment property to remove the scrolling effect.</p>
			</div> -->
			
			<!-- <div class="parallax1" ></div>
			
			<div class="pbw">
			<h3 style="text-align:center;">DHOTHI</h3>
			<p>This div is just here to enable scrolling.
			Tip: Try to remove the background-attachment property to remove the scrolling effect.</p>
			</div> -->
			
			<%-- <div class="parallax1" style="background-image: url(<c:url value='/resources/images/img1.jpg'/>)"></div> --%>
			
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
</html>