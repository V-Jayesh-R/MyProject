<%@include file="adminhome.jsp" %>

<div style="margin-top:100px;margin-bottom:100px">
	<div class="row">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
	<div class="text-center">
		<h1>Confirm Your Details</h1>
	</div>	
		
	<form:form modelAttribute="user">
	<hr>
		<div class="row">
			<div class="col-xs-4 col-sm-4 col-md-4">
				<div class="form-group">
					<label>First Name</label>
				</div>
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4">
				<div class="form-group">
					<label>:</label>
				</div>
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4">
				<div class="form-group">
					<label>${user.fname}</label>
				</div>
			</div>
		</div>
					
		<div class="row">
			<div class="col-xs-4 col-sm-4 col-md-4">
				<div class="form-group">
					<label>Last Name</label>
				</div>
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4">
				<div class="form-group">
					<label>:</label>
				</div>
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4">
				<div class="form-group">
					<label>${user.lname}</label>
				</div>
			</div>
		</div>
					
		<div class="row">
			<div class="col-xs-4 col-sm-4 col-md-4">
				<div class="form-group">
					<label>Username </label>
				</div>
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4">
				<div class="form-group">
					<label>:</label>
				</div>
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4">
				<div class="form-group">
					<label>${user.username}</label>
				</div>
			</div>
		</div>
					
		<div class="row">
			<div class="col-xs-4 col-sm-4 col-md-4">
				<div class="form-group">
					<form:label path="password">Password </form:label>
				</div>
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4">
				<div class="form-group">
					<label>:</label>
				</div>
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4">
				<div class="form-group">
					<label>${user.password}</label>
				</div>
			</div>
		</div>
					
					
		<div class="row">
			<div class="col-xs-4 col-sm-4 col-md-4">
				<div class="form-group">
					<label>Contact No </label>
				</div>
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4">
				<div class="form-group">
					<label>:</label>
				</div>
			</div>
			<div class="col-xs-4 col-sm-4 col-md-4">
				<div class="form-group">
					${user.contactNo}
				</div>
			</div>
		</div>
					
					<!-- for triggering webflow events using form submission,
					 the eventId to be triggered is given in "name" attribute as:-->
		<hr>
			<div class="row">
				<div class="col-xs-6 col-md-6">
					<input name="_eventId_edit" type="submit" value="Edit" class="btn btn-warning btn-block btn-lg"/>
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