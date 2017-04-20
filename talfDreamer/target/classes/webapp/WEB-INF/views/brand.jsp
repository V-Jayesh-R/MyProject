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
			<strong>Brand Form</strong>
		</h1>
	</div>
	<br>
	<div class="form">
		<form:form modelAttribute="brand" action="addBrand">
			<form:input path="brandId" type="hidden" />

			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="brandName">Enter Brand Name</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="brandName"
						placeholder="Brand Name" autofocus="true" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="brandName" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:label path="brandDescription">Enter Brand Description</form:label>
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:input class="form-control" path="brandDescription"
						placeholder="Brand Description" />
				</div>
				<div class="col-xs-12 col-sm-4 col-md-4">
					<form:errors cssClass="error" path="brandDescription" />
				</div>
			</div>
			<br>
			<div class="row">
				<div class="col-xs-12 col-sm-4  col-md-4">
					<form:label path="subCategoryId">Select SubCategory of Brand</form:label>
				</div>
				<div class="col-xs-12 col-sm-4  col-md-4">
					<form:select class="form-control" path="subCategoryId"
						items="${subCategoryList}" itemValue="subCategoryId"
						itemLabel="subCategoryName" />
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
			<h1>Brand List</h1>
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
			<table class="table table-bordered table-striped table-hover" ng-controller="myController">
				<thead>
					<tr>
						<th>Brand Name</th>
						<th>Brand Description</th>
						<th>Sub-Category Name</th>
						<th>Brand Edit</th>
						<th>Brand Delete</th>
					</tr>
				</thead>
				<tbody>
					<tr ng-repeat="bList in myscope | filter:search">
						<td>{{bList.brandName}}</td>
						<td>{{bList.brandDescription}}</td>
						<td>{{bList.subCategory.subCategoryName}}</td>
						<td><a href="editBrand-{{bList.brandId}}"
							class="btn btn-primary" role="button">EDIT</a></td>
						<td><a href="deleteBrand-{{bList.brandId}}"
							class="btn btn-warning" role="button">DELETE</a></td>
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
		$scope.myscope = ${brandListByJson}
	});
</script>