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
		<form:form action="updateCart" modelAttribute="cartItems">
		
		<div ng-repeat="ciList in myscope">
			<div class="row">
				<div class="col-md-3">
					<img src="./resources/ProductImages/productimage/{{ciList.productId}}.jpg" 
						height="150" width="200" />
				</div>
				<div class="col-md-4">
					<pre class="pre1"><strong>{{ciList.productName}}</strong></pre>
				</div>
				<div class="col-md-1" style="font-size: 20px;">
					<strong>&#8377;{{ciList.newAmount}}</strong>
					<br><br><br>
					<del><small>&#8377;{{ciList.oldAmount}}</small></del>
				</div>
				<div class="col-md-1">				
					<select name="{{ciList.productName}}"
						onmousedown="if(this.options.length>5){this.size=5;}" 
						onchange="this.size=0;">
						<option ng-repeat="n in range(1,ciList.product.productQuantity)"
							ng-selected="{{n == ciList.cartItemQuantity}}">{{n}}
						</option>
					</select>
					<br><br>
					<small> <b>{{ciList.product.productQuantity}}</b></small>
				</div>
				<div class="col-md-2 text-center" style="font-size: 25px;">
					<strong>&#8377;{{ciList.cartTotalAmount}}</strong>
				</div>
				
				
				<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> --%>
				<%-- <fmt:formatNumber pattern="#,##0" value="${value}" /> --%>
				
				
				<div class="col-md-1 text-right">
					<div class="tooltipright">
						<a href="deleteFromCart-{{ciList.cartItemId}}" class="btn close" 
							style="margin-right: 20px;">&times;
						</a>
						<span class="tooltiptextright">Remove</span>
					</div>
					<br>
					<br>
					<br>
					<div class="tooltipright">
						<a href="addToWishListFromCart/{{ciList.productId}}"
							style="text-decoration: none!important" >
							<i class="fa fa-heart" style="font-size: 20px; color: orange;
								margin-right: 33px" ></i>
						</a>
						<span class="tooltiptextright">Add to<br>WishList</span>
					</div>
				</div>
			</div>
			<hr>
		</div>
		<br>
		<br>
		<div class="row" style="border: 1px solid black; padding-top: 5px; padding-bottom: 5px;
				border-radius: 15px; margin-left: 200px; margin-right: 200px;">
			<div class="col-md-6 text-center" style="font-size: 30px;">
				CART TOTAL
			</div>
			<div class="col-md-6 text-center" style="font-size: 30px;">
				<strong>&#8377;${grandTotal}</strong>
			</div>
		</div>
		<br>
		<div class="text-center">
			<strong>** Please Update Your Cart Before Checkout **</strong>
		</div>
		<hr>
		<br>
		<div>
			<a href="checkout" class="btn btn-warning pull-right"
				style="height: 40px; width: 200px; padding-top: 10px;
				margin-left: 10px; margin-right: 10px;"> CheckOut </a>
			<a href="updateCart"> 
				<input type="submit" value="Update Cart" class="btn btn-primary pull-right"
					style="height: 40px; width: 200px; padding-top: 8px;
					margin-left: 10px; margin-right: 10px;" />
			</a>
		</div>
		</form:form>
	</div>
</div>

<script>
	var a = angular.module('myApp', []);
	a.controller('myController', function($scope) {
		$scope.myscope = ${citems};
		
		$scope.range = function(min, max, step){
	        step = step || 1;
	        var input = [];
	        for (var i = min; i <= max; i += step) input.push(i);
	        return input;
	      };
	});
</script>

<%@include file="footer.jsp" %>