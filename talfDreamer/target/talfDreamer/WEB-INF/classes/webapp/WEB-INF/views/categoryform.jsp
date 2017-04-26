<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
     <%@ taglib prefix="c" 
           uri="http://java.sun.com/jsp/jstl/core" %>
            <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CATEGORYNAME</title>
</head>
<body>
<form:form action="addcategory" modelAttribute="category">
<br>
<div class="container" style="border: 2px solid blue; padding: 15px;">
<div class="row">
<div class="col-md-4 col-sm-6 col-md-12">
<form:input type="hidden" path="categoryId" class="form-control" placeholder="Category desc"/>
<form:input path="categoryName" class="form-control" placeholder="Category Name" />
</div>
<div class="col-md-4 col-sm-6 col-md-12">

<form:input path="categoryDescription" class="form-control" placeholder="Category desc"/>
</div>
<div class="text-center col-md-4 col-sm-12 col-md-12">
<input type="submit" value="Create Category" class="btn btn-success">
</div>
</div>
</div>
</form:form>

<hr>
<div class="table-responsive">
<table class="table table-bordered">
<tr>
<th>Category ID</th>
<th>Category Name</th>
<th>Category Desc</th>
<th>Category Action</th>

</tr>
<c:forEach items="${categoryList}" var="clist">
<tr>
<td>${clist.categoryId}</td>
<td>${clist.categoryName}</td>
<td>${clist.categoryDescription}</td>
<td><a href="updatecategory-${clist.categoryId}" class="btn btn-primary">Edit</a> | <a href="deletecategory-${clist.categoryId}" class="btn btn-default">Delete</a></td>
</tr>
</c:forEach>
</table>
</div>
</body>
</html>