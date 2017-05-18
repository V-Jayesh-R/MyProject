<%@ include file="adminhome.jsp"%>
<div class="clothback">
	<div class="container">
		<div class="row">
			<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
				<div class="clothback">
					<p style="font-size: 30px">MY ACCOUNT</p>
				</div>
				<div style="padding-bottom: 30px;"></div>
				<div class="accountcard">
					<div class="row">
						<div class="col-lg-3">
								<a class="accounttext" href="/talfDreamer/Account">DASHBOARD</a>
								<p class="accountline"></p>
								<a href="/talfDreamer/Order" class="accounttext">ORDERS</a>
								<p class="accountline"></p>
								<a href="/talfDreamer/ShippingAddress" class="accounttext">ADDRESSES</a>
								<p class="accountline"></p>
								<a href="/talfDreamer/AccountWishlist" class="accounttext">WISHLIST</a>
								<p class="accountline"></p>
								<a href="/talfDreamer/AccountDetails" class="accounttext">ACCOUNT DETAILS</a>
								<p class="accountline"></p>
								<a href="logout" class="accounttext">LOGOUT</a>
						</div>
						<div class="col-lg-9">
							No Order has been made yet. Go to <a href="Clothing">Clothing</a>.
						</div>
						
					</div>
				</div>
			</div>
		</div>			
	</div>
<%@ include file="footer.jsp"%>