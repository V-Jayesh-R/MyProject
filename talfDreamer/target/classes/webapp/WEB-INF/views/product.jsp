<%@ include file="header.jsp"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<style type="text/css">
body {
	padding-top: 140px;
}
</style>

<script>
	$(document).ready(function() {
		$("tbody").hide();
		$("button").click(function() {
			$("tbody").toggle(500);
		});
	});
	$(document).ready(function() {
		$('.search1').hide();
		$('button').click(function() {
			$('.search1').toggle(500);
		});
	});
</script>

<div class="container">

	<div class="text-center">
		<h1>
			<strong>Product Form</strong>
		</h1>
	</div>
	<br>
	<div class="form">
		<form:form modelAttribute="product" action="addProduct"
			enctype="multipart/form-data">
			<form:input path="productId" type="hidden" />

			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="productName">Enter Product Name</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:textarea class="form-control" path="productName"
						placeholder="Product Name" autofocus="true" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="productName" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="productDescription">Enter Product Description</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:textarea class="form-control" path="productDescription"
						placeholder="Product Description" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="productDescription" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="productActualPrice">Enter Product Actual Price</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="productActualPrice"
						placeholder="Product Actual Price" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="productActualPrice" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="productDiscount">Enter Product Discount</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="productDiscount"
						placeholder="Product Discount" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="productDiscount" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="productFinalPrice">Enter Product Final Price</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="productFinalPrice"
						placeholder="Product Final Price" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="productFinalPrice" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="productStock">Enter Product Stock</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="productStock"
						placeholder="Product Stock" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="productStock" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="productReturnDays">Enter Product Return Days</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="productReturnDays"
						placeholder="Product Return Days" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="productReturnDays" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="productMadeCountry">Enter Product Made Country</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="productMadeCountry"
						placeholder="Product Final Price" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="productMadeCountry" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4  col-md-4">
					<form:label path="categoryId">Select Category of Product</form:label>
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4">
					<form:select class="form-control" path="categoryId"
						items="${categoryList}" itemValue="categoryId"
						itemLabel="categoryName" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4  col-md-4">
					<form:label path="subCategoryId">Select Sub-Category of Product</form:label>
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4">
					<form:select class="form-control" path="subCategoryId"
						items="${subCategoryList}" itemValue="subCategoryId"
						itemLabel="subCategoryName" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4  col-md-4">
					<form:label path="brandId">Select Brand of Product</form:label>
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4">
					<form:select class="form-control" path="brandId"
						items="${brandList}" itemValue="brandId" itemLabel="brandName" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4  col-md-4">
					<form:label path="supplierId">Select Supplier of Product</form:label>
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4">
					<form:select class="form-control" path="supplierId"
						items="${supplierList}" itemValue="supplierId"
						itemLabel="supplierName" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="productImage">Upload Product Image</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input type="file" accept=".jpg,.jpeg,.png"
						class="btn btn-default form-control	" path="productImage" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="productImage" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-sm-12 col-md-12">
					<div class="text-center">
						<button class="btn btn-success" type="submit">${btnLabel}
							<span class="glyphicon glyphicon-plus"></span>
						</button>
						<button class="btn btn-danger" type="reset">
							Reset <span class="glyphicon glyphicon-repeat"></span>
						</button>
					</div>
				</div>
			</div>
		</form:form>
	</div>

	<br>
	<hr
		style="height: 2px; border-width: 0; color: gray; background-color: gray">
	<br>

	<div ng-app="myApp">
		<div class="text-center">
			<h1>Product List</h1>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-4 col-md-4 col-sm-4"></div>
			<div class="col-xs-4 col-md-4 col-sm-4">
				<button type="button" class="btn btn-primary btn-block">Show/Hide
					Table</button>
			</div>
			<div class="col-xs-4 col-md-4 col-sm-4"></div>
		</div>
		<br>
		<div class="search1 row">
			<div class="col-xs-3 col-md-3 col-sm-3"></div>
			<div class="col-xs-6 col-md-6 col-sm-6">
				<input class="form-control" type="text" ng-model="search"
					placeholder="Search for keywords.." />
			</div>
			<div class="col-xs-3 col-md-3 col-sm-3"></div>
		</div>
		<br>

		<div class="table-responsive">
			<table class="table table-bordered table-hover" ng-controller="myController">
				<thead>
					<tr>
						<th>Product Name</th>
						<th>Product Description</th>
						<th>Product Actual Price</th>
						<th>Product Discount</th>
						<th>Product Final Price</th>
						<th>Product Stock</th>
						<th>Product Return Days</th>
						<th>Product Made Country</th>
						<th>Category Name</th>
						<th>Sub-Category Name</th>
						<th>Brand Name</th>
						<th>Supplier Name</th>
						<th>Product Image</th>
						<th>Product Edit/Delete/View</th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="pList in myscope | filter:search">
						<td>{{pList.productName}}</td>
						<td>{{pList.productDescription}}</td>
						<td>{{pList.productActualPrice}}</td>
						<td>{{pList.productDiscount}}</td>
						<td>{{pList.productFinalPrice}}</td>
						<td>{{pList.productStock}}</td>
						<td>{{pList.productReturnDays}}</td>
						<td>{{pList.productMadeCountry}}</td>						
						<td>{{pList.category.categoryName}}</td>
						<td>{{pList.subCategory.subCategoryName}}</td>
						<td>{{pList.brand.brandName}}</td>
						<td>{{pList.supplier.supplierName}}</td>	
						<td><img
							src="resources/productImages/productImage-{{pList.productId}}.jpg"
							height="80px" width="80px" alt="img not uploaded" /></td>
						<td><a href="editProduct-{{pList.productId}}"
							class="btn btn-primary" role="button">EDIT</a>
							<a href="deleteProduct-{{pList.productId}}"
							class="btn btn-warning" role="button">DELETE</a>
							<a href="viewProduct-{{pList.productId}}"
							class="btn btn-info	" role="button">VIEW</a></td>
							
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<br> <br>

	<div class="row">
		<div class="col-xs-4 col-md-4 col-sm-4"></div>
		<div class="col-xs-4 col-md-4 col-sm-4">
			<a href="/talfDreamer/" class="btn btn-primary btn-block"
				role="button">Return to home</a>
		</div>
		<div class="col-xs-4 col-md-4 col-sm-4"></div>
	</div>
</div>
<br>

<script>
	var a = angular.module('myApp', []);
	a.controller('myController', function($scope) {
		$scope.myscope = ${productListByJson}
	});
</script>








