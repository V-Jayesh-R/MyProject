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
<title>Insert title here</title>
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

	</div>
	</div>
	<br>
	
	<h2 align="center">ADD SUBCATEGORY</h2>
	<form:form method="POST" path ="addsubcategory" modelAttribute="subCategory" action="addsubcategory" class="form" >
	<div class="container">
	<form:input type="hidden" path="subCategoryId" class="form-control"/>
	<form:input path="subCategoryName" placeholder="Sub Category Name" class="form-control"/>
						<form:errors path="subCategoryName" cssClass="error"/>
	<br>
	<form:input path="subCategoryDescription" placeholder=" Subcategory Description" class="form-control"/>
						<form:errors path="subCategoryDescription" cssClass="error"/>
	<br>
	<form:select path="categoryId" items="${categoryList}" itemValue="categoryId" itemLabel="categoryName" class="form-control">
	<br>
	</form:select>
	<br>
	<input class="btn btn-primary" type="Submit" name="addsubcategory">
	</div>

	</form:form>
		<table class="table table-hover">
           <tr>
           <th>Sub category Id</th>
           <th>Sub category Name</th>
           <th>Sub category Description</th>
	       <th>Edit Sub category</th>
           <th>Delete Sub category</th>
           </tr>
           
           
    	<c:forEach var="c" items="${subCategoryList}">
		   <tr> 
			<td>${c.subCategoryId}</td>
			<td>${c.subCategoryName}</td>
			<td>${c.subCategoryDescription}</td>
			<td><a href="editsubcategory-${c.subCategoryId}"><button type="button" class="btn btn-success">Edit</button></a></td>
			<td><a href="deletesubcategory-${c.subCategoryId}"><button type="button" class="btn btn-success">Delete</button></a></td>
			</tr>
		</c:forEach>
        </table>

</body>
</html>