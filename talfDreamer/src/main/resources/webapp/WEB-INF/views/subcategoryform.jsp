<%@ include file="adminhome.jsp" %>

	
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
			<td><a href="updatesubcategory-${c.subCategoryId}"><button type="button" class="btn btn-success">Update</button></a></td>
			<td><a href="deletesubcategory-${c.subCategoryId}"><button type="button" class="btn btn-success">Delete</button></a></td>
			</tr>
		</c:forEach>
        </table>

</body>
</html>