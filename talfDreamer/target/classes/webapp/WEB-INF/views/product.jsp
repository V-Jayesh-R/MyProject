<%@ include file="adminhome.jsp" %>
	
	<div class="container">
	<div class="text-center">  		   
	 	 <a href="category" class="btn btn-info" role="button">Category</a>
		 <a href="subcategory" class="btn btn-info" role="button">SubCategory</a>
		 <a href="supplier" class="btn btn-info" role="button">Supplier</a>
		 <a href="brand" class="btn btn-info" role="button">Brand</a>
		 
	</div>
	</div>
	<br>
	<h2 align="center">ADD PRODUCT</h2>
	
	<form:form method="POST" modelAttribute="product" action="addproduct" enctype="multipart/form-data" class="form" >
	
	<div class="container">
	
	<form:input type="hidden" path="productId" class="form-control"/>
	
	<form:input path="productName" placeholder="Product Name" class="form-control"/>
	<form:errors path="productName" cssClass="error" />
	<br>
	<form:input path="productDescription" placeholder="Product Description" class="form-control"/>
	<form:errors path="productDescription" cssClass="error" />
	<br>
	<form:input path="productQuantity" placeholder="Product Quantity" class="form-control"/>
	<br>
	<form:input path="productPrice" placeholder="Product Price" class="form-control"/>
	<br>
	<form:input path="productDiscount" placeholder="Product Discount" class="form-control"/>
	<br>
	<form:input path="productAmount" placeholder="Product Amount" class="form-control"/>
	<br>
	
	
	
			<form:select path="categoryId" items="${categoryList}" itemValue="categoryId" itemLabel="categoryName" class="form-control">
			</form:select>
			<br>
			<form:select path="subCategoryId" items="${subCategoryList}" itemValue="subCategoryId" itemLabel="subCategoryName" class="form-control">
			</form:select>
			<br>
			<form:select path="supplierId" items="${supplierList}" itemValue="supplierId" itemLabel="supplierName" class="form-control">
			</form:select>
			<form:select path="brandId" items="${brandList}" itemValue="brandId" itemLabel="brandName" class="form-control">
			</form:select>
			<div class="form-group">                         
    			<label class="custom-file">
    			<form:input path="productImg" type="file"></form:input>
    			<span class="custom-file-control"></span>
   				</label>
				</div><br>
	
	<br>
	<input class="btn btn-primary" type="Submit" name="addproduct">
	</div>
	</form:form>
	
	<table class="table table-hover">
                
		              <tr>
                        <th>Product Id</th>
                        <th>Product Name</th>
                        <th>Product Description</th>
                        <th>Product Quantity</th>
                        <th>Product Price</th>
                        <th>Product Discount</th>
                        <th>Product Amount</th>
                        <th>View Product</th>
                        <th>Edit Product</th>
                        <th>Delete Product</th>
                    </tr>
                  <c:forEach items="${productList}" var="c">
                  <tr>
                  	<td><img src="Resources/ProductImages/${c.productId}.jpg" width="100px" height="100px"></td>
                    <td>${c.productId}</td>
                    <td>${c.productName}</td>
                    <td>${c.productDescription}</td>
                    <td>${c.productQuantity}</td>
                    <td>${c.productPrice}</td>
                    <td>${c.productDiscount}</td>
                    <td>${c.productAmount}</td>
                    <td><a href="viewproduct-${c.productId}"><button type="button" class="btn btn-success">View</button></a></td>
                    <td><a href="editproduct-${c.productId}"><button type="button" class="btn btn-success">Edit</button></a></td>
                    <td><a href="deleteproduct-${c.productId}"><button type="button" class="btn btn-success">Delete</button></a></td>
                    </tr>
                </c:forEach>
            </table>
	
	

</body>
</html>