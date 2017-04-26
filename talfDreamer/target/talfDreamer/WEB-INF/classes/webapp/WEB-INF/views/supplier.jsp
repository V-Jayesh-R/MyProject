<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="Resources/css/styles.css" rel="stylesheet">
  <link rel="stylesheet" href="Resources/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>

	
	
		<div class="container">
	<div class="text-center">  		   
	 	 <a href="category" class="btn btn-info" type="button">Category</a>
		 <a href="subcategory" class="btn btn-info" type="button">SubCategory</a>
		 <a href="product" class="btn btn-info" type="button">Product</a>
	</div>
	</div>
	<br>
	<h2 align="center">ADD SUPPLIER</h2>
	
	<form:form method="POST" modelAttribute="supplier" action="addsupplier" class="form">
	<div class="container">
	<form:input type="hidden" path="supplierId" class="form-control"/>
	
	
	<form:input path="supplierName" placeholder="Supplier Name" class="form-control"/>
			<form:errors path="supplierName" cssClass="error" />
	<br>
	
	<form:input path="supplierContact" placeholder="Supplier Contact" class="form-control"/>
	<br>
	
	<form:input path="address" placeholder="Supplier Address" class="form-control"/>
			<form:errors path="address" cssClass="error" />
	<br>
	
	<form:input path="city" placeholder="Supplier City" class="form-control"/>
			<form:errors path="city" cssClass="error" />
	<br>
	<form:input path="country" placeholder="Supplier Country" class="form-control"/>
			<form:errors path="country" cssClass="error" />
	<br>
	<input class="btn btn-primary" type="Submit" name="Add supplier">
	</div>
	</form:form>		
<br>
<br>		

	<table class="table table-hover">
                
		              <tr>
                        <th>Supplier Id</th>
                        <th>Supplier Name</th>
                        <th>Supplier Contact</th>
                        <th>Supplier Address</th>
                        <th>Supplier City</th>
                        <th>Supplier Country</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                  <c:forEach items="${supplierList}" var="c">
                  <tr>  
                    <td>${c.supplierId}</td>
                    <td>${c.supplierName}</td>
                    <td>${c.supplierContact}</td>
                    <td>${c.address}</td>
                    <td>${c.city}</td>
                    <td>${c.country}</td>
                    <td><a href="editsupplier-${c.supplierId}"><button type="button" class="btn btn-success">Edit</button></a></td>
                    <td><a href="deletesupplier-${c.supplierId}"><button type="button" class="btn btn-success">Delete</button></a></td>
                    
                    </tr>
                </c:forEach>
            </table>

</body>
</html>