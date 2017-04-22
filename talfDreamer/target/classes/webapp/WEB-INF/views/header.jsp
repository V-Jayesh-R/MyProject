<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="Resources/css/bootstrap.min.css">
  
  

  <link rel="stylesheet" href="Resources/css/button.css" >


  
  <script src="Resources/boostrap-4.0.0-alpha.6-dist/js/jquery-1.10.2.min.js"></script>
  <script src="Resources/boostrap-4.0.0-alpha.6-dist/js/bootstrap.min.js"></script>
  
  
    <script src="Resources/boostrap-4.0.0-alpha.6-dist/js/angular.js" ></script>
</head>
<body>

	<nav class="navbar navbar-default">
  		<div class="container-fluid">
  		
    		<div class="navbar-header">
      			<a class="navbar-brand" href="/talfDreamer/">TALFDREAMER</a>
    		</div>
    
   		<ul class="nav navbar-nav">
     		<li> <!-- class="active" --><a href="/talfDreamer/">Home</a></li>
      			<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Admin Panel <span class="caret"></span></a>
        			<ul class="dropdown-menu">
          				<li><a href="category">Manage Category</a></li>
          				<li><a href="subcategory">Manage SubCategory</a></li>
          				<li><a href="supplier">Manage Supplier</a></li>
           				<li><a href="product">Manage Product</a></li>
        			</ul>
      			</li>
      		<li><a href="">About</a></li>
      		<li><a href="">Contact Us</a></li>
    	</ul>
       
  
    
  </div>
</nav>

</body>
</html>