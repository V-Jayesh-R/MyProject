<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="adminhome.jsp" %>

<!-- Designed registration Page -->
<div class="container">
    
<div class="row" style="margin-top:30;margin-bottom:30px">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    	<form:form modelAttribute="shippingAddress" commandName="shippingAddress">
			<fieldset>
				<h2>Please Sign Up for MobilesEra</h2>
				<h3>Add Your Shipping Address</h3>				
				<hr>
				<div class="form-group">
					<form:input  type="hidden" path="userId" />
                    <form:input  type="hidden" path="shipAddId" />                    
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="sName" placeholder="Fill Receiver's Name" autofocus="true" />
                </div>   
                <div class="form-group">    
                    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('sName')}" var="err"> 
 					  <span style="color: #e32828 " >${err.text}</span>
 					</c:forEach>                    
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="sPrefix" placeholder="Enter Flat No/Building/Society" />
                </div>
                <div class="form-group">    
                    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('sPrefix')}" var="err"> 
 					  <span style="color: #e32828 ">${err.text}</span>
 					</c:forEach>                    
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="sLandmark" placeholder="Landmark" />
                </div>
                <div class="form-group">     
                    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('sLandmark')}" var="err">
					  <span style="color: #e32828 ">${err.text}</span>
					</c:forEach>                    
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="sStreet" placeholder="Street" />
                </div>
                <div class="form-group">     
                    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('sStreet')}" var="err"> 
 					  <span style="color: #e32828 ">${err.text}</span> 
 					</c:forEach>
                    
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="sCity" placeholder="City" />
				</div>
				<div class="form-group">     
                    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('sCity')}" var="err">
					  <span style="color: #e32828 ">${err.text}</span>
					</c:forEach>                    
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="sDistrict" placeholder="District" />
                </div>
                <div class="form-group">     
                    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('sDistrict')}" var="err"> 
 					  <span style="color: #e32828 ">${err.text}</span>
 					</c:forEach>                    
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="sState" placeholder="State"/>
				</div>
				<div class="form-group">     
                    <c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('sState')}" var="err"> 
 					  <span style="color: #e32828 ">${err.text}</span>
 					</c:forEach>                    
				</div>
				<div class="form-group">
                    <form:input type="text" class="form-control input-lg" path="sPIN" placeholder="PIN Code"/>
				</div>				
				<hr>
				<div class="row">
					
					<div class="col-xs-6 col-md-6">
						<input name="_eventId_submit" type="submit" value="Submit" class="btn btn-success btn-block btn-lg" />
					</div>
					<div class="col-xs-6 col-md-6">
						<input name="_eventId_cancel" type="submit" value="Cancel" class="btn btn-danger btn-block btn-lg" />
					</div>
				</div>
			</fieldset>
		</form:form>
	</div>
</div>
</div>  


<%@include file="footer.jsp" %>