<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>    
<%@taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<script src="./resources/js/jquery-3.2.1.min.js"></script>
<script src="./resources/js/bootstrap.min.js"></script>
<script src="./resources/js/angular.min.js" ></script>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css"/>
 <link rel="stylesheet" href="./resources/css/font-awesome.min.css"/>
<link rel="stylesheet" href= "./resources/css/header.css"/>
<link rel="stylesheet" href="./resources/css/slider.css"/>
</head>
<body>
 <div class="container header inner">
			<nav class="navbar navbar-default navbar-fixed-top" >
			  <div class="container-fluid">
			    <div class="navbar-header">
			      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar #bs-megadropdown-tabs" >
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>                        
			      </button>
			      <a class="navbar-brand" href="#"><img class="animated infinite wobble tenpxtop" alt="Logo" src="./resources/DataFolder/logo3.jpg" width="175" height="150"></a>
			    </div>
			    <div class="collapse navbar-collapse" id="myNavbar">
			      <ul class="nav navbar-nav navbar-left masthead-nav">
			        <li class="active"><a href="#"></a></li>
			        <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Clothing</a></li>
			        <li><a class="dropdown-toggle" data-toggle="dropdown" href="#">Electronics & Mobiles</a></li>
			        <li><a class="dropdown-toggle" data-toggle="dropdown" href="#">Home & Furniture</a></li>
			        <li><a class="dropdown-toggle" data-toggle="dropdown" href="#">Other Appliances</a></li>
			       </ul>
			    &nbsp;
			       
		<form class="navbar-form navbar-left">
       <div class="input-group">
    <input type="text" size="40" class="form-control" placeholder="Search For Products,Brands & More">
    <div class="input-group-btn">
      <button class="btn btn-default" type="submit">
        <i class="glyphicon glyphicon-search"></i>
      </button>
    </div>
  </div>
    </form>
 
    <ul class="nav navbar-nav navbar-right">
        <li class="dropdown">
                    
                    <ul style="background-color:white;" class="dropdown-menu">
                        <li>
                            <div class="navbar">
                                <div class="row">
                                    <div class="col-lg-4">
                                        <p class="text-center">
                                            <span class="glyphicon glyphicon-user icon-size"></span>
                                        </p>
                                    </div>
                                 </div>
                            </div>
                        </li>
                        <li class="divider"></li>
                        <li>
                            <div class="navbar- navbar-login-session">
                                <div class="row">
                                    <div class="col-lg-12">
                                        <p>
                                            <a href="#" class="btn btn-danger btn-block">Cerrar Sesion</a>
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </li>
                    </ul>
                </li>
            <li class="dropdown">
              <a href="login" class="dropdown-toggle" data-toggle="dropdown">SIGN IN <span class="caret"></span></a>
             <ul id="login-dp" class="dropdown-menu">
    			<li>
					 <div class="row">
							<div class="col-md-12">
								Login via
								<div class="social-buttons">
									<a href="#" class="btn btn-fb"><i class="fa fa-facebook"></i> Facebook</a>
									<a href="#" class="btn btn-tw"><i class="fa fa-twitter"></i> Twitter</a>
								</div>
                                or
								 <form class="form" role="form" method="post" action="login" accept-charset="UTF-8" id="login-nav">
										<div class="form-group">
											 <label class="sr-only" for="exampleInputEmail2">Email address</label>
											 <input type="email" class="form-control" id="exampleInputEmail2" placeholder="Email address" required="">
										</div>
										<div class="form-group">
											 <label class="sr-only" for="exampleInputPassword2">Password</label>
											 <input type="password" class="form-control" id="exampleInputPassword2" placeholder="Password" required="">
                                             <div class="help-block text-right"><a href="">Forget the password ?</a></div>
										</div>
										<div class="form-group">
											 <button type="submit" class="btn btn-primary btn-block">Sign in</button>
										</div>
										<div class="checkbox">
											 <label>
											 <input type="checkbox"> keep me logged-in
											 </label>
										</div>
								 </form>
							</div>
				
							
							<div class="bottom text-center">
								New here ? <a href="reg"><b>Join Us</b></a>
							</div>
					 </div>
				</li>
			</ul>
            </li>
        </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
			</div>
		<!-- </header> -->
		<div id="mySidenav" class="sidenav">
		  <a href="javascript:void(0)" class="closebtn" onclick="closeNav()">&times;</a>
		  <a href="#">About</a>
		  <a href="#">Services</a>
		  <a href="#">Clients</a>
		  <a href="#">Contact</a>
		</div>

		 <span style="font-size:30px;cursor:pointer" onclick="openNav()">&#9776; </span>

		<script>	/* Side slide menu */
		function openNav() {
		    document.getElementById("mySidenav").style.width = "250px";
		    document.getElementById("main").style.marginLeft = "250px";
		    document.body.style.backgroundColor = "rgba(0,0,0,0.4)";
		}

		function closeNav() {
		    document.getElementById("mySidenav").style.width = "0";
		    document.getElementById("main").style.marginLeft= "0";
		    document.body.style.backgroundColor = "white";
		}
		/* tab slider */
		$(document).ready( function() {
		    $('#myCarousel').carousel({
		      
		        interval:   4000
			});
			
			var clickEvent = false;
			$('#myCarousel').on('click', '.nav a', function() {
					clickEvent = true;
					$('.nav li').removeClass('active');
					$(this).parent().addClass('active');		
			}).on('slid.bs.carousel', function(e) {
				if(!clickEvent) {
					var count = $('.nav').children().length -1;
					var current = $('.nav li.active');
					current.removeClass('active').next().addClass('active');
					var id = parseInt(current.data('slide-to'));
					if(count == id) {
						$('.nav li').first().addClass('active');	
					}
				}
				clickEvent = false;
			});
		});</script>

		<!-- <div class="container-fluid tabStrip">
		  <ul class="nav nav-tabs text-center">
		    <li class="col-sm-3 grey"><a href="#"><i class="fa fa-truck fa-2x col-sm-12"></i><span class="col-sm-12">Packers and Movers</span></a></li>
		    <li class="col-sm-3 orange"><a href="#"><i class="fa fa-ship fa-2x col-sm-12"></i><span class="col-sm-12">Cargo</span></a></li>
		    <li class="col-sm-3 blue"><a href="#"><i class="fa fa-building fa-2x col-sm-12"></i><span class="col-sm-12">Warehouse</span></a></li>
		    <li class="col-sm-3 green"><a href="#"><i class="fa fa-building fa-2x col-sm-12"></i><span class="col-sm-12">Transport</span></a></li>
		  </ul>
		</div> -->

	<div class="container-fluid tabSlider">
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
    
        <ul class="nav nav-pills nav-justified">
          <li data-target="#myCarousel" data-slide-to="0" class="active"><a href="#"><i class="fa fa-truck fa-2x col-sm-12"></i>Packers and Movers</a></li>
          <li data-target="#myCarousel" data-slide-to="1"><a href="#"><i class="fa fa-ship fa-2x col-sm-12"></i>Cargo</a></li>
          <li data-target="#myCarousel" data-slide-to="2"><a href="#"><i class="fa fa-building fa-2x col-sm-12"></i>Warehouse</a></li>
          <li data-target="#myCarousel" data-slide-to="3"><a href="#"><i class="fa fa-building fa-2x col-sm-12"></i>Transport</a></li>
        </ul>


 
      <!-- Wrapper for slides -->
      <div class="carousel-inner">
      
        <div class="item active">
          <img src="./resources/DataFolder/BEDS 1.jpg" width="100%" height="440px" >
           <div class="carousel-caption">
            <h3>HOME AND FURNITURE COLLECTIONS</h3>
                        <p><a href="http://sevenx.de/demo/bootstrap-carousel/" target="_blank" class="label label-danger">Home utensils</a></p>
          </div>
        </div><!-- End Item -->
 
         <div class="item">
          <img src="./resources/DataFolder/CASUAL SHIRT.jpg" width="100%" height="440px" >
           <div class="carousel-caption">
            <h3>Mens</h3>
            <p><a href="http://sevenx.de/demo/bootstrap-carousel/" target="_blank" class="label label-danger">Mens Wear</a></p>
          </div>
        </div><!-- End Item -->
        
        <div class="item">
          <img src="./resources/DataFolder/KIDS WEAR.jpg" width="100%" height="440px" >
           <div class="carousel-caption">
            <h3>KIDS </h3>
                        <p><a href="http://sevenx.de/demo/bootstrap-carousel/" target="_blank" class="label label-danger">Children Wear</a></p>
          </div>
         
        </div><!-- End Item -->
        
        <div class="item">
          <img src="./resources/DataFolder/PATIYALA SUIT.jpg" width="100%" height="440px">
           <div class="carousel-caption">
            <h3>WOMEN</h3>
                       <p><a href="http://sevenx.de/demo/bootstrap-carousel/" target="_blank" class="label label-danger">Women Wear</a></p>
          </div>
        </div>
               <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="false"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>  
            </div>
               
             </div>
          
      </div>

