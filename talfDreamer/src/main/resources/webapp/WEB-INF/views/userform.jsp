<%@ include file="adminhome.jsp" %>
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
								<form:form method="POST" path ="adduser" modelAttribute="user" action="adduser" class="form" >

									<div class="form-group">
										<form:input path="fname" placeholder="First Name"
											tabindex="1" class="form-control" />
									</div>
									<br>
									<div class="form-group">
										<form:input path="lname" placeholder="Last Name"
											tabindex="1" class="form-control" />
									</div>
									<br>
									<div class="form-group">
										<form:input path="userName" placeholder="User Name"
											tabindex="1" class="form-control" />
									</div>
									<br>
									<div class="form-group">
										<form:input path="contactnumber" placeholder="Contact Number"
											tabindex="1" class="form-control" />
									</div>
									<br>
									<div class="form-group">
										<form:input path="password"
											placeholder="**********" tabindex="2" type="password"
											class="form-control" />
									</div>
									<br>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" value="addUser" tabindex="4"
													class="form-control btn btn-login" />
											</div>
										</div>
									</div>
								</form:form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




</body>
</html>