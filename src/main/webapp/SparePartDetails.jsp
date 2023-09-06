<%@page import="com.fssa.liveon.model.SparePart"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/liveon-web/assets/css/SparePartDetails.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h3>Spare Part details</h3>
	<%
	SparePart spDetails = (SparePart) request.getAttribute("SelectedSparePartDetail");
	%>
	<%
	if (spDetails != null) {
	%>

	<div class="product-section">
		<div class="products">

			<img id="product_main-image" src=<%=spDetails.getImageUrl().get(0)%>
				alt="engine image" class="engine">
			<ul>
				<li><img id="sub_pic1" src=<%=spDetails.getImageUrl().get(0)%>
					alt="engine"></li>
				<li><img id="sub_pic2" src=<%=spDetails.getImageUrl().get(1)%>
					alt="parts"></li>
			</ul>

		</div>
		<div class="product-ditails">
			<p class="Highlights" id="about_product"></p>
			<p id="product_price" class="fa-solid fa-indian-rupee-sign"><%=(int) spDetails.getPrice()%></p>
			<p id="product_offer">27% 0ff</p>
			<div class="star1">
				<div class="card-button">
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
			</div>
			<div class="description1">
				<h3>Description</h3>
				<p id="pro_description"><%=spDetails.getDescription()%>
				</p>
			</div>

			<div class="list-btn">
<a href="/liveon-web/EditSparePartServlet?spartPartId=<%=spDetails.getId()%>"><button
						id="add_card">Update</button></a>
						 <a id="order-nav"><button
						id="buy_now">Delete</button></a>
			</div>
		</div>
	</div>

	<%
	}
	%>

</body>
</html>