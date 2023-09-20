<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.fssa.liveon.model.SparePart"%>
<%@ page import="com.fssa.liveon.model.User"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="/liveon-web/assets/css/profile.css">
<title>Insert title here</title>
</head>

<body>
	<!-- This is profile-section -->
	<div class="account-section">
		<div class="side-item">
			<div class="page">
				<img class="pro_image"
					src="../../assets/New_collection/Acc-cover.png" alt="profile">
				<label for="upload-file"><i class="fa-solid fa-camera"
					style="color: #a322ee;"></i></label> <input type="file"
					accept="image/jpeg,image/png,image/jpg" id="upload-file">

			</div>
			<div class="side-menu">
				<ul>
					<li><a href="" class="active"><span
							class="fa-solid fa-circle-user"></span> <span>My Profile</span></a></li>
					<li><a href="/liveon-web/OrdersHistoryServlet" class="active"><span
							class="fa-solid fa-bag-shopping"></span> <span>Orders</span></a></li>
							
					<li><a href="" class="active"><span
							class="fa-solid fa-calendar-check"></span> <span>Appointments</span></a>
					</li>
					<li><a href="" class="active"><span
							class="fa-solid fa-bookmark"></span> <span>Wishlist</span></a></li>
					<li><a href="" class="active"><span
							class="fa-solid fa-tags"></span> <span>Offers</span></a></li>
					<li>
					<a href="/liveon-web/LogoutServlet">
						<button id="log" class="active">
							<span class="fa-solid fa-right-from-bracket"></span> <span>Logout</span>
						</button></a>
					</li>
					<li><a href="../../Page/Home/home.html" class="active"><span
							class="fa-solid fa-left-long"></span> <span>Exit</span></a></li>
				</ul>
			</div>

		</div>

		<div class="main-item">
		</div>
		<!-- This is profile update section-->
		<div class="user-container">
<%
				User userDetail = (User) request.getAttribute("UserDetails");
				if (userDetail != null) {
				%>
			<div class="information">
				
				<form id="form" action ="updateUser" method="post">
					<!-- This is First name  -->
		<input type="hidden" name="Id" value="<%=userDetail.getUserId()%>">
					<div class="first-name" id="align-num">
						<label class="more">First Name</label> <input class="name"
							id="user-firstname" type="text"
							name="user_first_name" placeholder="First Name"
							value="<%=userDetail.getFirstName()%>" required="true">

					</div>
					<!-- This is Last name  -->
					<div class="last-name" id="align-num">
						<label class="more">Last Name</label> <input class="name"
							id="user-lastname" type="text" name="user_last_name"
							placeholder="Last Name" value="<%=userDetail.getLastName()%>"
							required="true">
					</div>
					
					<!-- This is email input  -->
					<div class="email" id="align-num">
						<label class="more"> Email</label> <input class="name"
							id="user-email" type="email" name="user email"
							placeholder="name@gmail.com"
							value="<%=userDetail.getEmail()%>" required="true"
							title="First name connot contain spaces" readonly>
					</div>
					<!-- This is user mobile number -->
					<div class="number" id="align-num">
						<label class="more"> Number</label> <input class="name"
							id="user_number" type="tel" pattern="[0-9]{10}"
							title="PLease enter 10 digit number" name="user_mobile"
							placeholder="+91 8923456789" value="<%=userDetail.getNumber()%>" required="true">
					</div>
					<!-- This is update button -->
					<div>
						<button type="submit" id="btn" class="name">Edit</button>
					</div>
				
				</form>
				
			</div>
			<%
				}
				%>
		</div>
	</div>


</body>
</html>