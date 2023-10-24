<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.fssa.liveon.model.Shop"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/liveon-web/assets/css/SparePartDetails.css">
<meta charset="UTF-8">
<title>Shop Details</title>
</head>
<body>
	<h3>Shop Details</h3>
	<%
	Shop shopDetails = (Shop) request.getAttribute("SelectedShopDetail");
	if (shopDetails != null) {
	%>
	<div class="product-section">
		<div class="products">
			<img id="product_main-image"
				src="<%=shopDetails.getImageUrl().get(0)%>" alt="Shop Image"
				class="shop">
			<ul>
				<li><img id="sub_pic1"
					src="<%=shopDetails.getImageUrl().get(0)%>" alt="Shop"></li>
				<li><img id="sub_pic2"
					src="<%=shopDetails.getImageUrl().get(1)%>" alt="Shop"></li>
			</ul>
		</div>
		<div class="product-ditails">
			<p class="Highlights" id="about_product"></p>
			<p id="product_price" class="fa-solid fa-indian-rupee-sign"><%=shopDetails.getShopName()%></p>
			<p id="product_offer"><%=shopDetails.getShopNumber()%></p>
			<div class="star1">
				<span><%=shopDetails.getStreetAddress()%>, <%=shopDetails.getCity()%>,
					<%=shopDetails.getPostalCode()%></span>
			</div>
			<div class="description1">
				<h3>Description</h3>
				<p id="pro_description"><%=shopDetails.getShopDetails()%></p>
			</div>
			<div class="list-btn">
				<a><button id="add_card">Book Appointment</button></a>
			</div>
		</div>
	</div>
	<%
	} else {
	%>
	<p>No details available.</p>
	<%
	}
	%>
</body>
</html>
