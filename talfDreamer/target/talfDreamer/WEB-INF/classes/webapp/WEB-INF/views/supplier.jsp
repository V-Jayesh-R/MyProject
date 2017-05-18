<%@ include file="adminhome.jsp" %>
	
	
		<div class="container">
	<div class="text-center">  		   
	 	 <a href="category" class="btn btn-info" type="button">Category</a>
		 <a href="subcategory" class="btn btn-info" type="button">SubCategory</a>
		 <a href="product" class="btn btn-info" type="button">Product</a>
	</div>
	</div>
	<br>
	<h2 align="center">ADD SUPPLIER</h2>
	
	<form:form method="POST" modelAttribute="supplier" action="addsupplier" class="form">
	<div class="container">
	<form:input type="hidden" path="supplierId" class="form-control"/>
	
	
	<form:input path="supplierName" placeholder="Supplier Name" class="form-control"/>
			<form:errors path="supplierName" cssClass="error" />
	<br>
	
	<form:input path="supplierContact" placeholder="Supplier Contact" class="form-control"/>
	<br>
	
	<form:input path="address" placeholder="Supplier Address" class="form-control"/>
			<form:errors path="address" cssClass="error" />
	<br>
	
	<form:input path="city" placeholder="Supplier City" class="form-control"/>
			<form:errors path="city" cssClass="error" />
	<br>
	<form:input path="country" placeholder="Supplier Country" class="form-control"/>
			<form:errors path="country" cssClass="error" />
	<br>
	<input class="btn btn-primary" type="Submit" name="Add supplier">
	</div>
	</form:form>		
<br>
<br>		

	<table class="table table-hover">
                
		              <tr>
                        <th>Supplier Id</th>
                        <th>Supplier Name</th>
                        <th>Supplier Contact</th>
                        <th>Supplier Address</th>
                        <th>Supplier City</th>
                        <th>Supplier Country</th>
                        <th>Edit</th>
                        <th>Delete</th>
                    </tr>
                  <c:forEach items="${supplierList}" var="c">
                  <tr>  
                    <td>${c.supplierId}</td>
                    <td>${c.supplierName}</td>
                    <td>${c.supplierContact}</td>
                    <td>${c.address}</td>
                    <td>${c.city}</td>
                    <td>${c.country}</td>
                    <td><a href="editsupplier-${c.supplierId}"><button type="button" class="btn btn-success">Edit</button></a></td>
                    <td><a href="deletesupplier-${c.supplierId}"><button type="button" class="btn btn-success">Delete</button></a></td>
                    
                    </tr>
                </c:forEach>
            </table>

</body>
</html>