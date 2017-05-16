<%@ include file="adminhome.jsp" %>

<div class="text-center">
<br>

<div class="login-signup-panels">
<br>


<form:form modelAttribute="user">
<div class="container">

<div class="panel panel-default">
    <div class="panel-heading text-center">
 		<h1>Your Cart</h1>
 	</div>
 
 <div class="panel-body table-responsive">
<div class="row">
<div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
<div style="margin:10px 0px 10px 0px;padding-left: 10px;padding-right: 10px;">
<div class="table-responsive">
<table class="table table-bordered text-center">

<thead>
<tr>
<th class="th-green text-center">Image</th>
<th class="th-green text-center">Name</th>
<th class="th-green text-center">Quantity</th>
<th class="th-green text-center">Actual Price Per Unit</th>
<th class="th-green text-center">Total Price</th>
</tr>
</thead>
<c:forEach var="clist" items="${user.cartItems}">

<c:if test="${clist.flag  eq 'N'}">
<c:set var="totalPrice" value="${totalPrice + clist.amount}"/>

<tr>
<td class="login-signup-panel">
<img src="resources/productImages/productImage-${clist.productId}.jpg" height="100px"/>
</td>

<td>
<b>${clist.productName}</b>
</td>

<td>
<b>${clist.quantity}</b>
</td>

<td style="text-decoration: line-through;">
<b>${clist.rate}</b>
</td>

<td>
<b>
${clist.amount}
</b>
</td>

</tr>
</c:if>
</c:forEach>

<thead>
<tr style="width: 100%;">
<td colspan="4">
<font class="pull-right" style="font-size: large; font-weight: bold; ">Total: &#8377 ${totalPrice} </font>
<td>
</tr>
</thead>

</table>
</div>
</div>
</div>
</div>


<c:if test="${not empty totalPrice}">
<input type="submit" id="continue" name="_eventId_continue" class="btn btn-lg btn-warning pull-right" value="Confirm"/>
</c:if>

</div>


</div>
</div>
</form:form>

</div>
</div>

<%@include file="footer.jsp" %>