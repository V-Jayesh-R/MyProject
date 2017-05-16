<%@include file="adminhome.jsp" %>

<div style="margin-top:100px;margin-bottom:100px">
	<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
	<div class="text-center">
		<h1>Confirm Your Billing Address</h1>
	</div>	
		
	<form:form modelAttribute="billingAddress">
	<hr>
		<div class="row">
			<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>Payee's Name:</label>
				</div>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>${billingAddress.billAddName}</label>
				</div>
			</div>
		</div>
					
		<div class="row">
			<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>Flat No/Building/Society:</label>
				</div>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>${billingAddress.bPrefix}</label>
				</div>
			</div>
		</div>
					
		<div class="row">
			<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>LandMark :</label>
				</div>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>${billingAddress.bLandmark}</label>
				</div>
			</div>
		</div>
					
		<div class="row">
			<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>Street :</label>
				</div>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>${billingAddress.bStreet}</label>
				</div>
			</div>
		</div>
					
					
		<div class="row">
			<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>City :</label>
				</div>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>${billingAddress.bCity}</label>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>District :</label>
				</div>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>${billingAddress.bDistrict}</label>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>State :</label>
				</div>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>${billingAddress.bState}</label>
				</div>
			</div>
		</div>
		
		<div class="row">
			<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>PIN :</label>
				</div>
			</div>
			<div class="col-xs-6 col-sm-6 col-md-6">
				<div class="form-group">
					<label>${billingAddress.bPIN}</label>
				</div>
			</div>
		</div>
					
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:-->
		<hr>
			<div class="row">
				<div class="col-xs-6 col-md-6">
					<input name="_eventId_edit" type="submit" value="Edit" class="btn btn-warning btn-block btn-lg" />
				</div> 
				<div class="col-xs-6 col-md-6" class="btn btn-primary btn-block btn-lg">
					<input name="_eventId_submit" type="submit" value="Confirm Details" class="btn btn-success btn-block btn-lg"/>
				</div>
			</div>
	</form:form>
	
	
</div>
</div>
</div>
<%@include file="footer.jsp" %>