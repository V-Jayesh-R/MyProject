<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ include file="adminhome.jsp" %>

<div style="margin-bottom: 15px">

<div class="container" ng-controller="myController">

<ul class="breadcrumb sns-breadcrumb">
  <li><a class="sns-crumb newpager noUnderLineInAnchor" style="font-size: large;color:Blue;text-shadow: 1px 1px 1px white" href="/MobilesEra/">Home</a></li>
  <li><a class="sns-crumb current-page noUnderLineInAnchor" href="userProductPage">Products</a></li>
  <li class="sns-current-crumb">{{browseWord}}</li>
</ul>


<div id="wrapper" >
    <div id="page-content-wrapper">
        <div class="page-content">
            <div class="container" style="padding-top:10px; padding-bottom: 10px">
				<div class="row">
                    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
                        <!-- content of page -->
                         <span class="">Filters:</span>
                         
						 <span ng-click="sort('productPrice')" style="margin-left:100px">
						 	<button class="btn btn-default">Product Price 
								<span class="glyphicon sort-icon" ng-show="sortkey=='productPrice'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
							</button>	
						</span>


						<span ng-click="sort('productId')" style="margin-left:50px">
							<button class="btn btn-default">Latest Products 
								<span class="glyphicon sort-icon" ng-show="sortkey=='productId'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
							</button>
						</span>

						<span ng-click="sort('brandName')" style="margin-left:50px">
							<button class="btn btn-default">Brand 
								<span class="glyphicon sort-icon" ng-show="sortkey=='brandName'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
							</button>	
						</span>

						<span ng-click="sort('categoryName')" style="margin-left:50px">
							<button class="btn btn-default">Categories 
								<span class="glyphicon sort-icon" ng-show="sortkey=='categoryName'" ng-class="{'glyphicon-chevron-up':reverse,'glyphicon-chevron-down':!reverse}"></span>
							</button>	
						</span>
                  </div>
                </div>
</div>
</div>
</div>
</div>

	<div class="row">       
        
        <div style=" max-height:400px; min-height: 400px" ng-repeat="productlist in myscope | filter:search || browseWord | orderBy:orderkeyword : orderflag | filter : searchkeyword | orderBy:sortkey:reverse | filter:nextFilter" class="col-md-4 col-sm-6 col-xs12 ">
            <article class="col-item">
        		<div class="photo">
        			<div class="options">
        				<a href="addtowishlist-{{productlist.productId}}" class="btn btn-default" title="Add to wish list">
        					<i style="color: red" class="fa fa-heart"></i>
        				</a>
        			</div>
        			<div class="options-cart">
        				<a href="addtocart-{{productlist.productId}}" class="btn btn-default" title="Add to cart">
        					<span class="fa fa-shopping-cart"></span>
        				</a>
        			</div>
        			<a><img src="resources/productImages/productImage-{{productlist.productId}}.jpg" style=" max-height:250px; min-height: 250px" class="img-responsive" data-toggle="modal" data-target="#myModal-{{productlist.productId}}" alt="Product Image" /> </a>
        			 <div class="modal fade" id="myModal-{{productlist.productId}}" role="dialog">
    					<div class="modal-dialog">
    
 	 					    <!-- Modal content-->
      						<div class="modal-content">
        						<div class="modal-body">
          							<img src="resources/productImages/productImage-{{productlist.productId}}.jpg" class="img-responsive" alt="Product Image" />
        						</div>
      						</div>
      					</div>
  					</div>
  
        		</div>
        		<div class="info">
        			<div class="row">
        				<div class="price-details col-md-6">
        					<p class="details">
        						<a href="viewProductById-{{productlist.productId}}">{{productlist.productName}}</a>
        					</p>
        					<a href="#" class="btn btn-warning"><i class="fa fa-bolt" aria-hidden="true"></i> Buy Now</a>
        					<span class="price-new">{{productlist.productPrice}} <i class="fa fa-inr" aria-hidden="true"></i></span>
        					<!-- <span class="price-old">{{productlist.productPrice}} <i class="fa fa-inr" aria-hidden="true"></i></span> -->
        				</div>
        			</div>
        		</div>
        	</article>
        </div>
       
	</div>

</div>
</div>
<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.myscope= ${productListByJson};
$scope.subCategoryList=${subCategoryListByJson};
$scope.brandList=${brandListByJson};
var getUrlParameter = function getUrlParameter(sParam) {
    var sPageURL = decodeURIComponent(window.location.search.substring(1)),
        sURLVariables = sPageURL.split('&'),
        sParameterName,
        i;
    for (i = 0; i < sURLVariables.length; i++) {
        sParameterName = sURLVariables[i].split('=');
        if (sParameterName[0] === sParam) {
            return sParameterName[1] === undefined ? true : sParameterName[1];
        }
    }
};
$scope.browseWord = getUrlParameter('browse');
$scope.sort=function(keyname){
    //Now you can set a debugger here and check the data    
		$scope.sortkey=keyname;
    	$scope.reverse=!$scope.reverse;
}
$scope.myFilter = [];
 
 $scope.myNewFilter = function(brandName) {
     var i = $.inArray(brandName, $scope.myFilter);
     if (i > -1) {
         $scope.myFilter.splice(i, 1);
     } else {
         $scope.myFilter.push(brandName);
     }
 }
 
 $scope.nextFilter = function(brandList) {
     if ($scope.myFilter.length > 0) {
         if ($.inArray(brandList.brandName, $scope.myFilter) < 0)
             return;
     }
     
     return brandList;
 }
});
/*Tooltip*/
$(function () {
  $('[data-toggle="tooltip"]').tooltip();
});
</script>

<%@include file="footer.jsp" %>