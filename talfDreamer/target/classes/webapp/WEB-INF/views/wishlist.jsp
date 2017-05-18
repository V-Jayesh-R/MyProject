<%@include file="adminhome.jsp" %>

<style type="text/css">
body {
	padding-top: 140px;
}
.pre1 {
	background-color: white;
	border-color: white;
	font-family: serif;
	font-size: 20px;
}
</style>

<div class="container">
	<div ng-app="myApp" ng-controller="myController">
		<div ng-repeat="wliList in myscope">
			<div class="row">
				<div class="col-md-1" style="font-size: 20px;">
					{{ $index + 1 }}
				</div>
				<div class="col-md-4">
					<img src="./resources/ProductImages/productimage/{{wliList.productId}}.jpg" 
						height="195" width="260" />
				</div>
				<div class="col-md-4">
					<pre class="pre1"><strong>{{wliList.productName}}</strong></pre>
				</div>
				<div class="col-md-2" style="font-size: 20px;">
					<strong>&#8377;{{wliList.newAmount}}</strong>
					<br><br><br>
					<del>&#8377;{{wliList.oldAmount}}</del>
				</div>
				<div class="col-md-1 text-right">
					<div class="tooltipright">
						<a href="deleteFromWishList/{{wliList.cartItemId}}" class="btn close" 
							style="margin-right: 20px;">&times;
						</a>
						<span class="tooltiptextright">Remove From<br>WishList</span>
					</div>
					<br>
					<br>
					<br>
					<br>
					<div class="tooltipright">
						<a href="addToCartFromWishList/{{wliList.productId}}"
							style="text-decoration: none!important" >
							<i class="fa fa-cart-plus" style="font-size: 30px; color: green;
								margin-right: 33px" ></i>
						</a>
						<span class="tooltiptextright">Add to<br>Cart</span>
					</div>
				</div>
			</div>
			<hr>
		</div>
	</div>
</div>

<script>
	var a = angular.module('myApp', []);
	a.controller('myController', function($scope) {
		$scope.myscope = ${wlitems}
	});
</script>
<%@include file="footer.jsp" %>