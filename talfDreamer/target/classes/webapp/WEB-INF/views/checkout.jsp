<%@include file="adminhome.jsp" %>
<style type="text/css">
body {
	padding-top: 140px;
}
</style>

<div class="container">
	<div ng-app="myApp" ng-controller="myController">
		
		
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
				
				<div class="col-md-2 text-center" style="font-size: 25px;">
					<strong>&#8377;{{ciList.cartTotalAmount}}</strong>
				</div>
				
				
				<%-- <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> --%>
				<%-- <fmt:formatNumber pattern="#,##0" value="${value}" /> --%>
				
				
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
		<div>
			<a href="placeOrders" class="btn btn-warning pull-right"
				style="height: 40px; width: 200px; padding-top: 10px;
				margin-left: 10px; margin-right: 10px;"> Place Order </a>
		</div>
	</div>
</div>



<script>
	var a = angular.module('myApp', []);
	a.controller('myController', function($scope) {
		$scope.myscope = ${display}
	});
</script>
<%@include file="footer.jsp" %>