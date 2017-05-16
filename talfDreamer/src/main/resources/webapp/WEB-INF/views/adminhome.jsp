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
			<nav class="navbar navbar-inverse">
			  <div class="container-fluid">
			    <div class="navbar-header">
			      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar #bs-megadropdown-tabs" >
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>                        
			      </button>
			      <a class="navbar-brand" href="#">TalfDreamer</a>
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
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">SIGN IN <span class="caret"></span></a>
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
								New here ? <a href="#"><b>Join Us</b></a>
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