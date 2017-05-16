<%@include file="adminhome.jsp" %>

<div class="container" ng-controller="myController">
	<div class="panel panel-default">
 		<div class="panel-heading text-center">
 			<h1>User Basic Details</h1>
 		</div>

 <div class="panel-body">

<table class="table table-bordered">
		
		<tr>		
			<td> Username </td>			
			<td> {{userdata.username}} </td>
		</tr>
		<tr>
			<td> Password </td>			
			<td> {{userdata.password}} </td>
		</tr>
		<tr>
			<td> Role </td>			
			<td> {{userdata.role}} </td>
		</tr>
		<tr>
			<td> First Name </td>			
			<td> {{userdata.fname}} </td>
		</tr>
		<tr>
			<td> Last Name </td>
			<td> {{userdata.lname}} </td>
		</tr>
		<tr>
			<td> Date of Birth </td>
			<td> {{userdata.DOB}} </td>
		</tr>
		<tr>
			<td> Contact Number </td>
			<td> {{userdata.contactNo}} </td>
		</tr>
		<tr>
			<td>Alternate Contact Number </td>
			<td> {{userdata.alternateContactNo}} </td>
		</tr>		
</table>
<div class="row">
	<div class="col-md-12 text-center">
		<a href="updateUserById-{{userId}}" role="button" class="btn btn-warning">Update Profile</a>
	</div>	
</div>
</div>
</div>
</div>

<script>
var a=angular.module('myApp',[]);
a.controller('myController', function($scope){
$scope.userdata= ${userdata};
});
</script>

<%@include file="footer.jsp" %>