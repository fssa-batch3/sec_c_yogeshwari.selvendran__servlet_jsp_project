<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.liveon.model.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/liveon-web/assets/css/buynow.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	User user = (User) session.getAttribute("loginUser");
	%>
	<h1></h1>
	<%
			SparePart spDetails = (SparePart) request.getAttribute("SparePartDetailId");
			%>
			<%
			if (spDetails != null) {
			%>
	<header>
		<div class="container">
			<div class="notification">Payment Page</div>
		</div>
	</header>
	<section class="content">
		<div class="container">
		
			<!-- Product details -->
			<div class="details shadow">
				<div class="details__item">
					<div class="item__image">
						<img class="iphone" src=<%=spDetails.getImageUrl().get(0)%> alt="">
					</div>
					<div class="item__details">
						<div class="item__title">
							<%=spDetails.getName()%>
						</div>
						<div class="item__price"><%=(int) spDetails.getPrice()%></div>
						<div class="item__quantity">
							<%
							int ratingValue = spDetails.getRating();
							for (int i = 1; i <= 5; i++) {
								if (i <= ratingValue) {
							%>
							<span class="star-icon filled-star">&#9733;</span>
							<%
							} else {
							%>
							<span class="star-icon">&#9734;</span>
							<%
							}
							}
							%>
						</div>
						<div class="item__description">
							<!-- Description content goes here -->
							<%=spDetails.getDescription()%>
						</div>
					</div>
				</div>
			</div>
		
			<!-- Address and Payment Method section -->
			<div class="container">
				<form action="buynowform" method="post">
					<div class="payment">
						<input type="hidden" name="Id" value="<%=user.getUserId()%>">
						<input type="hidden" name="SpareId" value="<%=(int)spDetails.getId()%>">
						<div class="payment__title">Payment Method</div>
						<div class="payment__info">
							<div class="payment__cc">
								<div class="cards">
									<div class="pay-card">
										<label for=""><input type="radio" id="expand"
											name="payment" value="Credit Card" required>Pay
											with Debit/Credit/ATM Cards</label>
									</div>
									<p>You can save your cards as per new RBI guidelines</p>
									<ul>
										<li><img src="../../assets/New_collection/visa.png"
											alt=""></li>
										<li><img src="../../assets/New_collection/mastercard.png"
											alt=""></li>
										<li><img src="../../assets/New_collection/Rupay-Logo.png"
											alt=""></li>
									</ul>
								</div>
								<div class="cash">
									<div class="pay-card">
										<label><input type="radio" id="cash_pay"
											name="payment" value="Upi payments" required>UPI Payments</label>
									</div>
								</div>
								<div class="cash">
									<div class="pay-card">
										<label><input type="radio" id="cash_pay"
											name="payment" value="Cash on Delivery" required>Cash
											on Delivery/Pay on Delivery</label>
									</div>
								</div>
							</div>
							<!-- Address section -->
							<div class="payment__shipping">
								<div>
									<h2>Delivery Address</h2>
								</div>
								<div class="input_form">
									<label for=""> <input placeholder="Street" type="text"
										name="Street" class="input">
									</label> <label for=""> <input placeholder="City" type="text"
										name="City" class="input">
									</label> <label for=""> <input placeholder="Pincode"
										type="text" name="pincode" class="input">
									</label>
								</div>
							</div>
						</div>
					</div>
			</div>
			<!-- Action buttons -->
			<button type="submit">Place Order</button>
			</form>
			<a href="#" class="backBtn">Go Back to Shop</a>
		</div>
	</section>
		<%
			}
			%>
</body>
</html>