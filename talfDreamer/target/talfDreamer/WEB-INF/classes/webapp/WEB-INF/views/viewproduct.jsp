<%@include file="adminhome.jsp" %>


<div ng-app="myApp" ng-controller="myController">

View product page
<br><br><br>
<img src="./resources/ProductImages/productimage/{{myscope.productId}}.jpg"
			height="300px" width="400px" alt="img not uploaded" />
<br>
<pre>{{myscope.productName}}</pre>
<br>
<pre>{{myscope.productDescription}}</pre>
<br>
<br>
<a href="addToCartFromProduct/{{myscope.productId}}" class="btn btn-warning" >Add to Cart</a>
<a href="addToWishListFromProduct/{{myscope.productId}}" class="btn btn-danger" >Add to WishList</a>

</div>

<script>
var a = angular.module('myApp', []);
a.controller('myController', function($scope) {
	$scope.myscope = ${product}
});
</script>



<%@include file="footer.jsp" %>