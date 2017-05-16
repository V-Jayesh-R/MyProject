<%@include file="adminhome.jsp" %>

<div class="container">
    
<div class="row" style="margin-top:60px;margin-bottom:60px">
    <div class="col-xs-12 col-sm-8 col-md-6 col-sm-offset-2 col-md-offset-3">
    	<form role="form" action="perform_login" method="POST">
			<fieldset>
				<h2>Please Sign In</h2>
				<hr>
				<div class="form-group">
                    <input type="email" name="username" id="email" class="form-control input-lg" placeholder="Email Address" autofocus="true" required="true"/>
				</div>
				<div class="form-group">
                    <input type="password" name="password" id="password" class="form-control input-lg" min="6" placeholder="Password" required="true" />
				</div>
				<!-- <span class="button-checkbox">
					<button type="button" class="btn btn-info" data-color="info">Remember Me</button>
                    <input type="checkbox" name="remember_me" id="remember_me" checked="checked" class="hidden">
					<a href="" class="btn btn-link pull-right">Forgot Password?</a>
				</span> -->
				<hr style="height:2px;border-width:0;color:gray;background-color:gray">
				<div class="row">
					<div class="col-xs-6 col-sm-6 col-md-6">
                        <input type="submit" class="btn btn-lg btn-success btn-block" value="Sign In">
					</div>
					<div class="col-xs-6 col-sm-6 col-md-6">
						<a href="reg" class="btn btn-lg btn-primary btn-block">Register</a>
					</div>
				</div>
			</fieldset>
		</form>
	</div>
</div>

</div>  


<%@include file="footer.jsp" %>