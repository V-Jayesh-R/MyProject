<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ include file="adminhome.jsp" %>

<style type="text/css">
body {
	padding-top: 140px;
}
</style>

<div class="container">
	<div class="row">
		<a href="accountprofile">View Profile</a>&nbsp;&nbsp;
		<a href="accountdetails">Account Details</a>&nbsp;&nbsp;
		<a href="accountshippingaddress">Shipping Address</a>&nbsp;&nbsp;
		<a href="logout">Logout</a>
	</div>
	<br>
	<div>
		Account Profile Page
	</div>
</div>

<%@include file="footer.jsp" %>