<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.fssa.liveon.model.SparePart"%>
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
<title>Insert title here</title>
</head>
<body>
	<!-- This is profile-section -->
	<div class="account-section">
		<div class="side-item">
			<div class="side-menu">
				<ul>
				<li><a href="/liveon-web/Admin.jsp" class="active" autofocus
						id="profile1"><span class="fa-solid fa-house-chimney-window"></span> <span>
								Spare parts</span></a></li>
					<li><a href="/liveon-web/Admin.jsp" class="active" 
						id="profile1"><span class="fa-solid fa-add"></span> <span>
								Add Spare parts</span></a></li>
							
					<li><a href="/liveon-web/AdminOrderList" class="active"
						id="order_history1"><span class="fa-solid fa-bag-shopping"></span>
							<span>Orders</span></a></li>
								<li><a href="/liveon-web/getAllShop" class="active"
						id="order_history1"><span class="fa-solid fa-bag-shopping"></span>
							<span>Shops</span></a></li>
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
					List<SparePart> sparepartList = (List<SparePart>) request.getAttribute("SparePartsDetails");
					if (sparepartList != null) {
						for (SparePart sparepart : sparepartList) {
					%>
					<div class="product">
						<a
							href="/liveon-web/GetSparePartDetail?spartPartId=<%=sparepart.getId()%>">
							<div class="card">
								<br>
								<div class="card-img">
									<img src=<%=sparepart.getImageUrl().get(0)%> alt="Spare_part">
								</div>
								<div class="card-info">
									<p class="text-title1"><%=sparepart.getName()%></p>
								</div>
								<div class="card-footer">
									<span class="text-title"><%=sparepart.getPrice()%></span>
									<div class="card-button">
										<%
										int ratingValue = sparepart.getRating();
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
							</div>
						</a>
					</div>
					<%
					}
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