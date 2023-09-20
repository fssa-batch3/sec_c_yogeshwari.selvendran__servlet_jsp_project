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
	<header>
		<div class="logo">
			<a href="/liveon-web/home.html"> <img class="live-on"
				src="/liveon-web/assets/images/live-on.png" alt=""> <img
				class="live"
				src="/liveon-web/assets/images/text-liveon-removebg-preview.png"
				alt="">
			</a>
		</div>
		<div class="user">
			<ul>
				<!-- <li><i class="fa-solid fa-location-dot"></i></li> -->
				<!--    <li><i class="fa-solid fa-bell"></i></li> -->
				<li><a href="/liveon-web/Admin.jsp"><i
						class="fa-solid fa-add"></i>Add</a></li>
			</ul>
		</div>
	</header>
	<!-- This is profile-section -->
	<div class="account-section">
		<div class="side-item">
			<div class="side-menu">
				<ul>
					<li><a href="#product" class="active"><span
							class="fa-solid fa-circle-user"></span> <span>Products</span></a></li>
					<li><a href="" class="active"><span
							class="fa-solid fa-calendar-check"></span> <span>Appointments</span></a>
					</li>

					<li><a href="" class="active"><span
							class="fa-solid fa-bag-shopping"></span> <span>Orders</span></a></li>

					<li><a href="" class="active"><span
							class="fa-solid fa-bookmark"></span> <span>Customer
								Reviews</span></a></li>
					<li><a href="" class="active"><span
							class="fa-solid fa-tags"></span> <span>Offers</span></a></li>
					<!-- <li>
                        <a href="" class="active"><span class="fa-solid fa-calendar-check"></span>
                            <span>History</span></a>
                    </li> -->
					<li>
						<!-- <a href=""  id="log" class="active"><span class="fa-solid fa-right-from-bracket"></span>
                            <span>Logout</span></a> --> <a href=""
						class="active"><span class="fa-solid fa-right-from-bracket"></span>
							<span>Logout</span></a>
					</li>
					<!-- <li>
                        <a href="../../Page/Home/home.html" class="active"><span class="fa-solid fa-left-long"></span>
                            <span>Exit</span></a>
                    </li> -->
				</ul>
			</div>

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




</body>
</html>