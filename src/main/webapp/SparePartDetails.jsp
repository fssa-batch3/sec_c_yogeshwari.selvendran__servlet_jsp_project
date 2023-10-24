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

		<div class="user"></div>
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
                            <span>Logout</span></a> -->
						<button id="log" class="active">
							<span class="fa-solid fa-right-from-bracket"></span> <span>Logout</span>
						</button>
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
					<a
						href="/liveon-web/EditSparePartServlet?spartPartId=<%=spDetails.getId()%>"><button
							id="add_card">Update</button></a> <a
						href="/liveon-web/DeleteSparePart?spartPartId=<%=spDetails.getId()%>"
						id="order-nav">
						<button id="buy_now">Delete</button>
					</a>
				</div>
			</div>
		</div>

		<%
		}
		%>
	</main>
</body>
</html>