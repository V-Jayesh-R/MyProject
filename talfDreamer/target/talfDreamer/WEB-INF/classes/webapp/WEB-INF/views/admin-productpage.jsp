<%@ include file="adminhome.jsp" %>

<div class="container" style="margin-top: 20px">

<div class="panel panel-default">
    <div class="panel-heading text-center">
 		<h1>Product Form</h1>
 	</div>
 	<br>
 	<div class="panel-body form">	
		<form:form modelAttribute="product" action="addProduct" enctype="multipart/form-data">
				<form:input type="hidden" path="productId" placeholder="Product Id" /> 
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:label path="productName">Enter the Name of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:input class="form-control" path="productName" placeholder="Product Name" autofocus="true" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productName" cssClass="error" />
			</div>	
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productColor">Enter the Colour of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productColor" placeholder="Product Colour" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productColor" cssClass="error" />
			</div>
		</div>
		<br>
		<br>			
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productImage">Choose the Image for Product </form:label>
			</div>
			<div class="form-group col-xs-12 col-sm-4 col-md-4">                         
    			<label class="custom-file">
    				<form:input path="productImage" accept=".jpg,.jpeg,.png" type="file" name="file" class="custom-file-input" ></form:input>    				
    				<span class="custom-file-control"></span>
   				</label>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productPrice">Enter the Price of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productPrice" placeholder="Product Actual Price" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productDiscount">Enter the Discount for Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productDiscount" placeholder="Product Discount" />
			</div>	
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productMadeCountry">Enter the Country Name Where Product Made </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productMadeCountry" placeholder="Product MadeCountry" />
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">	
				<form:errors path="productMadeCountry" cssClass="error" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="productQuantity">Enter the Stock of Product </form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:input class="form-control" path="productQuantity" placeholder="Product Quantity" />
			</div>	
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="categoryId">Select Category of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:select class="form-control" path="categoryId" items="${categoryList}" itemValue="categoryId" itemLabel="categoryName" />
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="subCategoryId">Select SubCategory of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:select class="form-control" path="subCategoryId" items="${subCategoryList}" itemValue="subCategoryId" itemLabel="subCategoryName"/>
			</div>	
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="brandId">Select Brand of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:select class="form-control" path="brandId" items="${brandList}" itemValue="brandId" itemLabel="brandName"/>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:label path="supplierId">Select Supplier of Product</form:label>
			</div>
			<div class="col-xs-12 col-sm-4 col-md-4">
				<form:select class="form-control" path="supplierId" items="${supplierList}" itemValue="supplierId" itemLabel="supplierName"/>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="text-center col-sm-12 col-xs-12 col-md-12">
				<button class="btn btn-success" type="submit"  >${btnLabel} <span class="glyphicon glyphicon-plus"></span></button>
				<button class="btn btn-danger" type="reset" >Reset <span class="glyphicon glyphicon-repeat"></span></button>
			</div>	
		</div>
</form:form>
 	</div>
 	</div>

<hr>

<!-- Product List -->

 <div ng-app="myApp">
 <div class="panel panel-default">
 <div class="panel-heading text-center">
 	<h1>Product List</h1>
 </div>
 
 <div class="panel-body table-responsive">
 <div class="row">	
 	<div class=" col-xs-12 col-md-4 col-sm-4">	
 		<input class="form-control" type="text" ng-model="search" placeholder="search..." /> 		
 	</div>
 </div>
 <br>
 <table class="table" ng-controller="myController">
<thead>
<tr>
<th role="button" ng-click="orderByMe('productName')"><center>Name</center></th>
<th role="button" ng-click="orderByMe('productDescription')">Description</th>
<th role="button" ng-click="orderByMe('productQuantity')">Quantity</th>
<th role="button" ng-click="orderByMe('productPrice')"> Price</th>
<th role="button" ng-click="orderByMe('productDiscount')">Discount</th>
<th role="button" ng-click="orderByMe('productAmount')">Amount</th>
<th role="button" ng-click="orderByMe('categoryName')">Category</th>
<th role="button" ng-click="orderByMe('subCategoryName')">SubCategory</th>
<th role="button" ng-click="orderByMe('brandName')">Brand</th>
<th role="button" ng-click="orderByMe('supplierName')">Supplier</th>
<th>Product Image</th>
<th>Operations</th>
</tr>
</thead>
<tbody>
<tr ng-repeat="productlist in myscope | filter:search | orderBy:myOrderBy">
<td>{{productlist.productName}}</td>
<td>{{productlist.productDescription}} <i class="fa fa-inr" aria-hidden="true"></i></td>
<td>{{productlist.productQuantity}}</td>
<td>{{productlist.productPrice}}</td>
<td>{{productlist.productDiscount}}</td>
<td>{{productlist.category.categoryName}}</td>
<td>{{productlist.subCategory.subCategoryName}}</td>
<td>{{productlist.brand.brandName}}</td>
<td>{{productlist.supplier.supplierName}}</td>
<td><img src="./resources/productImages/productImage-{{productlist.productId}}.jpg" height="80px" width="80px" alt="img not uploaded"/></td>
<td><a href="updateProductById-{{productlist.productId}}" class="btn btn-warning" data-toggle="tooltip" title="edit" role="button"><i class="fa fa-pencil-square" aria-hidden="true"></i></a>
	<a href="deleteProductById-{{productlist.productId}}" class="btn btn-danger" data-toggle="tooltip" title="Delete" role="button"><i class="fa fa-trash fa-lg" aria-hidden="true"></i></a></td>  
</tr>
</tbody>
</table>
</div>
 </div>
</div>
</div>

<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${productListByJson}
$scope.orderByMe = function(x) {
    $scope.myOrderBy = x;
}
});
</script>

<%@include file="footer.jsp" %>