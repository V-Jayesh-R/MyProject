<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="adminhome.jsp" %>

<!-- Designed registration Page -->
<div class="container">
    
<a href="product" class="btn btn-info" type="button">Product</a>
		<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row">
							<div style="align: center">
								<h2>Add User</h2>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form:form method="POST" path ="addUser" modelAttribute="user" action="addUser" class="form" >
			<fieldset>
				<h2>Please Sign Up for TalfDreamer</h2>
				<hr>
				<div class="form-group">
                    <form:input class="form-control input-lg" type="hidden" path="userId" placeholder="User Id" />                    
				</div>
				<div class="form-group">
                    <form:input type="email" class="form-control input-lg" path="userName" placeholder="Email Id" autofocus="true" />
                </div>    
                <div class="form-group">    
                    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('username')}" var="err"> 
 					  <span style="color: #e32828 ">${err.text}</span>
 					</c:forEach>                    
				</div>
				<div class="form-group">
                    <form:input type="password" class="form-control input-lg" path="password" placeholder="Password" />
                </div>
                <div class="form-group">    
                    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err"> 
 					  <span style="color: #e32828 ">${err.text}</span>
 					</c:forEach>                    
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="fname" placeholder="First Name" />
                </div>
                <div class="form-group">     
                    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('fname')}" var="err">
					  <span style="color: #e32828 ">${err.text}</span>
					</c:forEach>                    
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="lname" placeholder="Last Name" />
                </div>
                <div class="form-group">     
                    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('lname')}" var="err"> 
 					  <span style="color: #e32828 ">${err.text}</span> 
 					</c:forEach>
                    
				</div>
				
				<div class="form-group">
                    <form:input type="tel" class="form-control input-lg" path="contactnumber" placeholder="Contact Number" />
                </div>
                <div class="form-group">     
                    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('contactNo')}" var="err"> 
 					  <span style="color: #e32828 ">${err.text}</span>
 					</c:forEach>
                    
				</div>
							
				<hr style="height:2px;border-width:0;color:gray;background-color:gray">
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">                        
                        <input type="submit" name="_eventId_submit" class="btn btn-lg btn-success btn-block" id="addUser" value="Register" />
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6">						
						<input type="reset" name="_eventId_reset" class="btn btn-lg btn-danger btn-block" value="Reset" />
					</div>
				</div>
			</fieldset>
		</form:form>
	</div>
</div>

</div>  


<%@include file="footer.jsp" %>
