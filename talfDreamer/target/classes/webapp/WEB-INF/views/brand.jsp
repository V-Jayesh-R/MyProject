<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Brands</title>
<link href="Resources/css/styles.css" rel="stylesheet">
  <link rel="stylesheet" href="Resources/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>

	
	<div class="container" >
	<div class="text-center">  		   
	 	 <a href="category" class="btn btn-info" onclick="button" >Category</a>
	 	  <a href="subcategory" class="btn btn-info" onclick="button" >Sub Category</a>
	 	  <a href="product" class="btn btn-info" onclick="button" >Product</a>

	</div>
	</div>
	<br>
	
	<h2 align="center">ADD Brand</h2>
	<form:form method="POST" path ="addbrand" modelAttribute="brand" action="addbrand" class="form" >
	<div class="container">
	<form:input type="hidden" path="brandId" class="form-control"/>
	<form:input path="BrandName" placeholder="Brand Name" class="form-control"/>
						<form:errors path="brandName" cssClass="error"/>
	<br>
	<form:input path="brandDescription" placeholder=" Brand Description" class="form-control"/>
						<form:errors path="brandDescription" cssClass="error"/>
	<br>
	 <form:select path="subCategoryId" items="${subcategoryList}" itemValue="subCategoryId" itemLabel="subCategoryName" class="form-control" ></form:select>
    								<br>
  
	
	<br>
	<input class="btn btn-primary" type="Submit" name="addbrand">
	</div>

	</form:form>
		<table class="table table-hover">
           <tr>
           <th>Brand Id</th>
           <th>Brand Name</th>
           <th>Brand Description</th>
	       <th>Edit Brand</th>
           <th>Delete Brand</th>
           </tr>
           
           
    	<c:forEach var="c" items="${brandList}">
		   <tr> 
			<td>${c.brandId}</td>
			<td>${c.brandName}</td>
			<td>${c.brandDescription}</td>
			<td><a href="editsubsubCategory-${c.brandId}"><button type="button" class="btn btn-success">Edit</button></a></td>
			<td><a href="deletesubsubCategory-${c.brandId}"><button type="button" class="btn btn-success">Delete</button></a></td>
			</tr>
		</c:forEach>
        </table>

</body>
</html>