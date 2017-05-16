<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Access Denied </title>
<link rel="stylesheet" href="resources/css/bootstrap.min.css"/>

</head>
<body>


<div style="margin-top: 200px; " class="container pushfooter text-center">
<a href="login"><img class="animated infinite wobble tenpxtop" alt="Logo" src="./resources/DataFolder/logo3.jpg" width="175" height="150"></a>
<div class="row">
	<a href="login">
		<div role="button" class="btn cartbutton tenpxtop">Please Login With A Valid Account</div>
	</a>
	<div class="row">
		<a href="/talfDreamer/">
			<div role="button" class="btn cartbutton tenpxtop">Back to Home</div>
		</a>
	</div>
<div class="container">
<h1 class="text-center blink_me color">Error 403. Access Denied you can't see this page.</h1>
</div>
</div>
</div>


<script src="resources/js/jquery-3.1.1.min.js"></script>
<script>
$("#wrapper").toggleClass("toggled");
(function blink() { 
	  $('.blink_me').fadeOut(500).fadeIn(500, blink); 
	})();
</script>
</body>
</html>