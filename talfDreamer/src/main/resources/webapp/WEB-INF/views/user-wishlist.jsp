<%@include file="adminhome.jsp" %>

<!-- Cart List Form is starting from here -->
<div class="container">
<div>
<div class="panel panel-default">
    <div class="panel-heading text-center">
 		<h1>Your WishList</h1>
 	</div>
 
 <div class="panel-body table-responsive">
 <div class="row">	
 	<div class="col-xs-12 col-md-4 col-sm-4">	
 		<input class="form-control" type="text" ng-model="search" placeholder="Search..." /> 	
 	</div>
 </div>
 <br>
<table class="table" ng-controller="myController">
<thead>	
	<tr>
		<th>Product Image</th>
		<th>Product Name</th>
		<th>Price</th>		
		<th>Discount</th>
		<th>Operations</th>
	</tr>
</thead>
<tbody>	
	<tr ng-repeat="wishlist in myscope | filter:search">		
		<td><img src="resources/productImages/productImage-{{wishlist.productId}}.jpg" height="150px" width="150px" alt="img not uploaded"/></td>		
		<td>{{wishlist.productName}}</td>
		<td>{{wishlist.productPrice}} <i class="fa fa-inr" aria-hidden="true"></i></td>
		<td>{{wishlist.productDiscount}} <i class="fa fa-percent" aria-hidden="true"></i></td>
		<td>
			<a href="addtocart-{{wishlist.productId}}" class="btn btn-warning" data-toggle="tooltip" title="Add To Cart" role="button"><i class="fa fa-cart-plus " aria-hidden="true"></i></a>
			<a href="deleteFromWishList-{{wishlist.wishId}}" class="btn btn-danger" data-toggle="tooltip" title="Remove item" role="button"><i class="fa fa-trash " aria-hidden="true"></i></a>
		</td>
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
$scope.myscope= ${wishListByJSON}
});
</script> 

<%@include file="footer.jsp" %>