<%@ include file="adminhome.jsp" %>
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
<td><a href="updateCategoryById-{{clist.categoryId}}" class="btn btn-warning" data-toggle="tooltip" title="edit" role="button"><i class="fa fa-pencil-square" aria-hidden="true"></i></a>
	<a href="deleteCategoryById-{{clist.categoryId}}" class="btn btn-danger" data-toggle="tooltip" title="Delete" role="button"><i class="fa fa-trash fa-lg" aria-hidden="true"></i></a></td>
</tr>
</c:forEach>
 <%@ include file="footer.jsp" %>