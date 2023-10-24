<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.fssa.liveon.model.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/liveon-web/assets/css/admindashboard.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta charset="ISO-8859-1">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="account-section">
		<div class="side-item">
			<div class="side-menu">
				<ul>
					<li><a href="" class="active" autofocus id="profile1"><span
							class="fa-solid fa-house-chimney-window"></span> <span>Profile</span></a></li>
					<li><a href="/liveon-web/addShop.jsp" class="active"
						id="profile1"><span class="fa-solid fa-add"></span> <span>
								Add Shop</span></a></li>




					<li><a href="/liveon-web/AdminAppointmentList" class="active"
						id="appointment1"><span class="fa-solid fa-calendar-check"></span>
							<span>Appointments</span></a></li>
					<li><a href="/liveon-web/index.jsp" id="log" class="active"><span
							class="fa-solid fa-right-from-bracket"></span> <span id="log">Logout</span></a></li>
					<li><a href="/liveon-web/index.jsp" id="log" class="active"><span
							class="fa-solid fa-arrow-left"></span> <span id="log">Exit</span></a></li>
				</ul>
			</div>
		</div>
		<main>
			<div class="product-container">

				<div class="container">
					<%
					Shop shop = (Shop) request.getAttribute("PartnerShop");
					if (shop != null) {
					%>
					<div class="product">

						<div class="card">
							<br>
							<div class="card-img">
								<img src=<%=shop.getImageUrl().get(0)%> alt="Spare_part">
							</div>
							<div class="card-info">
								<p class="text-title1"><%=shop.getShopName()%></p>
							</div>
							<div class="card-footer">
								<span class="text-title"><%=shop.getShopName()%></span>
								<div class="card-button">
									<%=shop.getStreetAddress()%>,<%=shop.getCity()%>,<%=shop.getPostalCode()%>
								</div>
							</div>
						</div>

					</div>
					<%
					} else {
					%>
					<h1>No records found</h1>
					<%
					}
					%>
				</div>
			</div>
		</main>


	</div>


</body>
</html>