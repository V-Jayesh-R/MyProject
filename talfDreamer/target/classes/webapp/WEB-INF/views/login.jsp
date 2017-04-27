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
	<div class="container auth">
    <h1 class="text-center">LOGIN FORM <span></span> </h1>
    <div id="big-form" class="well auth-box">
      <form name="login" method="POST" action="perform_login">
      
        <fieldset>

          <!-- Form Name -->
          <legend>LOGIN</legend>


          <!-- Text input-->
          <div class="form-group">
            <label class=" control-label" for="textinput">Username</label>  
            <div class="">
              <input id="textinput" name="username" placeholder="Username" class="form-control input-md" type="text">  
            </div>
          </div>

          <!-- Password input-->
          <div class="form-group">
            <label class=" control-label" for="passwordinput">Password</label>
            <div class="">
              <input id="passwordinput" name="password" placeholder="Password" class="form-control input-md" type="password">
            </div>
          </div>

         

          <div class="form-group">
            <label class=" control-label" for="singlebutton"></label>
            <div class="">
              <button id="singlebutton" name="singlebutton" class="btn btn-primary">Submit</button>
            </div>
          </div>
         

         
          

        </fieldset>
      </form>
    </div>
    <div class="clearfix"></div>
  </div></body>
</html>