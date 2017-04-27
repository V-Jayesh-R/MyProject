<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
    <%@ page isELIgnored="false" %>
    <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="Resources/css/styles.css" rel="stylesheet">
  <link rel="stylesheet" href="Resources/css/bootstrap.min.css">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
</head>
<body>
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