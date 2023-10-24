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
			<div class="notification">Payment Method</div>
		</div>
		<div class="container1">
			<form action="buynowform" method="post">
				<div class="payment">
					<input type="hidden" name="Id" value="<%=user.getUserId()%>">
					<input type="hidden" name="SpareId"
						value="<%=(int) spDetails.getId()%>">

					<div class="payment__cc">
						<div class="cards">
							<div class="pay-card">
								<label for=""><input type="radio" id="expand"
									name="payment" value="Credit Card" required>Pay with
									Debit/Credit/ATM Cards</label>
							</div>
							<p>You can save your cards as per new RBI guidelines</p>
							<ul>
								<li><img src="./assets/images/visa.png" alt=""></li>
								<li><img src="./assets/images/mastercard.png" alt=""></li>
								<li><img src="./assets/images/Rupay-Logo.png" alt=""></li>
							</ul>
						</div>
						<div class="cash">
							<div class="pay-card">
								<label><input type="radio" id="cash_pay" name="payment"
									value="Upi payments" required>UPI Payments</label>
							</div>
						</div>
						<div class="cash">
							<div class="pay-card">
								<label><input type="radio" id="cash_pay" name="payment"
									value="Cash on Delivery" required>Cash on Delivery/Pay
									on Delivery</label>
							</div>
						</div>
					</div>
				</div>
				<!-- Address section -->
				<div class="payment__shipping">
					<div class="container">
						<div class="notification">Delivery Address</div>
					</div>

					<div class="input_form">
						<input
    id="contactphone" placeholder="Street" type="text" pattern="^[0-9A-Za-z\\s.,-]{5}+$" title="Enter your street address" name="Street" required><br>
<input id="home-num"
    placeholder="City" type="text"  pattern="^[A-Za-z\\s-]+$" name="City" title="Enter your city" required><br>
<input class="name" id="home-state" pattern="^[1-9][0-9]{5}$" title="Enter your 6-digit pincode" placeholder="Pincode"
    type="text" name="pincode"> <br>  <br>

					</div>
					<%
					String successmessage = (String) request.getAttribute("Successmessage");
					String errormessage = (String) request.getAttribute("ErrorMessage");
					%>

					<%
					if (successmessage != null) {
					%>

					<p><%=successmessage%></p>
					<%
					}
					%>
					<%
					if (errormessage != null) {
					%>

					<p><%=errormessage%></p>
					<%
					}
					%>
				</div>
		</div><br><br>
		<!-- Action buttons -->
		<div class="but-btn">
			<button class="button" type="submit">Place Order</button>
		</div>

		</form>
		<a href="/liveon-web/Accessories.jsp" class="backBtn">Go Back to Shop</a>

	</section>
	<%
	}
	%>
</body>
</html>