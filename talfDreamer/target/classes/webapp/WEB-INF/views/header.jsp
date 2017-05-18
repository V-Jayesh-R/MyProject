<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>    
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
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
			      <a class="navbar-brand" href="#"><img class="animated infinite wobble tenpxtop" alt="Logo" src="./resources/DataFolder/logo3.jpg" width="50px" height="50px"></a>
			    </div>
			    <div class="collapse navbar-collapse" id="myNavbar">
			      <ul class="nav navbar-nav navbar-left masthead-nav">
			        <li class="active"><a href="#"></a></li>
			        
			     
              
                        <c:forEach items="${globalCategory}" var="category">
                        	<li class="dropdown">
                        		<a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        			${category.categoryName}
                        			<span class="caret"></span>
                        		</a>
                        		<ul class="dropdown-menu" role="menu">
                        		
                        		
                        			<c:forEach items="${globalSubCategory}" var="subCategory">
                        			<c:if test="${subCategory.categoryId eq category.categoryId}">
                        				<li><a href="clothing-${subCategory.subCategoryId}">
                        					${subCategory.subCategoryName}</a>
                        				</li>
                        			</c:if>
                        				
                        			</c:forEach>
                        		</ul>
                        	</li>
                        </c:forEach>
                        
                    </ul>

			  
			       
			       
		<form class="navbar-form navbar-left">
       <div class="input-group">
   <a href="clothing"> <input type="text" size="40" class="form-control" placeholder="Search For Products,Brands & More"></a>
    <div class="input-group-btn">
      <button class="btn btn-default" type="submit">
        <i class="glyphicon glyphicon-search"></i>
      </button>
    </div>
  </div>
    </form>




			<!-- Conditional Buttons -->
			<ul class="nav navbar-nav navbar-right">

				

					<li><a href="login"><span
							class="glyphicon glyphicon-log-in"></span> Login</a></li>
					<li><a href="registration"><span
							class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				

				<c:if test="${pageContext.request.userPrincipal.name!=null}">

					<sec:authorize access="hasRole('ROLE_ADMIN')">
						<li class="dropdown"><a href="#" class="dropdown-toggle"
							data-toggle="dropdown">
								${pageContext.request.userPrincipal.name} <span
								class="glyphicon glyphicon-user"></span> <span class="caret"></span>
						</a>
							<ul class="dropdown-menu" role="menu">
					
								<li><a href="category">Category Management</a></li>
								<li><a href="subCategory">Sub-Category Management</a></li>
								<li><a href="brand">Brand Management</a></li>
								<li><a href="supplier">Supplier Management</a></li>
								<li><a href="product">Product Management</a></li>
								<li><a href="#">User Management</a></li>
								<li class="divider"></li>
								<li><a href="logout">Logout <span
										class="glyphicon glyphicon-log-out"></span></a></li>
							</ul></li>
					</sec:authorize>

					<sec:authorize access="hasRole('ROLE_USER')">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								${pageContext.request.userPrincipal.name}
								<span class="glyphicon glyphicon-user"></span>
								<span class="caret"></span>
							</a>
							<ul class="dropdown-menu" role="menu">
								<li><a href="accountprofile">Profile</a></li>
								<li class="divider"></li>
								<li><a href="displayCart">Cart</a></li>
								<li><a href="displayWishList">Wish List</a></li>
								<li><a href="#">My Orders</a></li>
								<li class="divider"></li>
								<li><a href="logout">Logout <span
										class="glyphicon glyphicon-log-out"></span></a></li>
							</ul>
							
						</li>
					</sec:authorize>

				</c:if>
			</ul>
			
		</div>
	
	</div>
	</nav>

			
	

	
			</div>
		<!-- </header> -->




	
		

		
		<script>	
		
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
          <li data-target="#myCarousel" data-slide-to="0" class="active"><a href="#"><i class="fa fa-truck fa-2x col-sm-12"></i>Packing</a></li>
          <li data-target="#myCarousel" data-slide-to="1"><a href="#"><i class="fa fa-ship fa-2x col-sm-12"></i>Shipping</a></li>
          <li data-target="#myCarousel" data-slide-to="2"><a href="#"><i class="fa fa-building fa-2x col-sm-12"></i>Warehouse</a></li>
          <li data-target="#myCarousel" data-slide-to="3"><a href="#"><i class="fa fa-building fa-2x col-sm-12"></i>Transport</a></li>
        </ul>


 
      <!-- Wrapper for slides -->
      <div class="carousel-inner">
      
        <div class="item active">
          <img src="./resources/DataFolder/BEDS 1.jpg" width="1450" height="345"  >
           <div class="carousel-caption">
            <h3>HOME AND FURNITURE COLLECTIONS</h3>
                        <p><a href="http://sevenx.de/demo/bootstrap-carousel/" target="_blank" class="label label-danger">Home utensils</a></p>
          </div>
        </div><!-- End Item -->
 
         <div class="item">
          <img src="./resources/DataFolder/CASUAL SHIRT.jpg" width="1000" height="345" >
           <div class="carousel-caption">
            <h3>Mens</h3>
            <p><a href="http://sevenx.de/demo/bootstrap-carousel/" target="_blank" class="label label-danger">Mens Wear</a></p>
          </div>
        </div><!-- End Item -->
        
        <div class="item">
          <img src="./resources/DataFolder/KIDS WEAR.jpg" width="1450" height="345" >
           <div class="carousel-caption">
            <h3>KIDS </h3>
                        <p><a href="http://sevenx.de/demo/bootstrap-carousel/" target="_blank" class="label label-danger">Children Wear</a></p>
          </div>
         
        </div><!-- End Item -->
        
        <div class="item">
          <img src="./resources/DataFolder/PATIYALA SUIT.jpg" width="1450" height="345">
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

