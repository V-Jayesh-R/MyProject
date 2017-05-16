<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="adminhome.jsp" %>

<!-- Designed registration Page -->
<div class="container">
    
<div class="row" style="margin-top:30;margin-bottom:60px">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    	<form:form modelAttribute="billingAddress">
			<fieldset>
				<h2>Please Sign Up for TalfDreamer</h2>
				<h3>Add Your Billing  Address</h3>
				<hr>
				<div class="form-group">
					<form:input class="form-control input-lg" type="hidden" path="userId" />
                    <form:input class="form-control input-lg" type="hidden" path="billAddId" />                    
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="billAddName" placeholder="Fill your name" autofocus="true" />
                </div>    
                <div class="form-group">    
                    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('billAddName')}" var="err"> 
 					  <span style="color: #e32828 " cssClass="error" >${err.text}</span>
 					</c:forEach>                    
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="bPrefix" placeholder="Enter the first line of address" />
                </div>
                <div class="form-group">    
                    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('bPrefix')}" var="err"> 
 					  <span style="color: #e32828 ">${err.text}</span>
 					</c:forEach>                    
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="bLandmark" placeholder="Landmark" />
                </div>
                <div class="form-group">     
                    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('bLandmark')}" var="err">
					  <span style="color: #e32828 ">${err.text}</span>
					</c:forEach>                    
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="bStreet" placeholder="Street" />
                </div>
                <div class="form-group">     
                    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('bStreet')}" var="err"> 
 					  <span style="color: #e32828 ">${err.text}</span> 
 					</c:forEach>
                    
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="bCity" placeholder="City" />
				</div>
				<div class="form-group">     
                    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('bCity')}" var="err">
					  <span style="color: #e32828 ">${err.text}</span>
					</c:forEach>                    
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="bDistrict" placeholder="District" />
                </div>
                <div class="form-group">     
                    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('bDistrict')}" var="err"> 
 					  <span style="color: #e32828 ">${err.text}</span>
 					</c:forEach>                    
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="bState" placeholder="State"/>
				</div>
				<div class="form-group">     
                    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('bState')}" var="err"> 
 					  <span style="color: #e32828 ">${err.text}</span>
 					</c:forEach>                    
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="bPIN" placeholder="PIN Code"/>
				</div>				
				<hr>
				<div class="row">
					<div class="col-xs-4 col-md-4">
						<input name="_eventId_skip" type="submit" value="Skip"
							class="btn btn-primary btn-block btn-lg" />
					</div>
					<div class="col-xs-4 col-md-4">
						<input name="_eventId_submit" type="submit" value="Submit"
							class="btn btn-success btn-block btn-lg" />
					</div>
					<div class="col-xs-4 col-md-4">
						<input name="_eventId_back" type="submit" value="Back"
							class="btn btn-danger btn-block btn-lg">
					</div>
				</div>
			</fieldset>
		</form:form>
	</div>
</div>

</div>  


<%@include file="footer.jsp" %>