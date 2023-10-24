<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.fssa.liveon.model.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/liveon-web/assets/css/registration.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	Partners partner = (Partners) request.getAttribute("PartnerDetails");
	%>
	<div class="container">
		<!--     <img src="../assets/images/shape.png" class="square" alt="icon" /> -->
		<header>
			<p>User Registration Form
		</header>
		<form action="addShop" method="post" class="form">
			<input type="hidden" name="partnerId"
				value="<%=partner.getPartnerId()%>">
			<div class="input-box">
				<label>Shop Name</label> <input type="text" name="shop_name"
					placeholder="First name" pattern="^[A-Za-z]{2,30}$"
					title="First name should contains only alphabets and atleast of 2 charateers"
					required />
			</div>
			<div class="input-box">
				<label>Shop LicenceNumber</label> <input type="text"
					name="shop_licence" placeholder="Ex.ABC123"
					pattern="^[A-Za-z0-9]*$"
					title="Licence number should contains  alphabets and numeric of 6 charateers"
					required />
			</div>
			<div class="input-box">
				<label>Shop Number</label> <input type="tel" name="shop_number"
					placeholder="Enter phone number" pattern="(0/91)?[7-9][0-9]{9}"
					title="Enter valid mobile number" required />
			</div>

			<div class="column">
				<div class="input-box">
					<label>Upload image URL </label> <input type="url"
						title="Enter your shop images here"
						placeholder="enter your shop images here" name="shop_image1">
				</div>
				<div class="input-box">
					<label>Upload image URL </label> <input type="url"
						title="Enter your shop images here"
						placeholder="enter your shop images here" name="shop_image2">
				</div>


			</div>
			<div class="gender-box">
				<h3>Serviced VehicleType</h3>
				<select name="vehicle-type" class="input">
					<option>Choose your serviced vehicle type</option>
					<option value="Bike">Bike</option>
					<option value="Car">Car</option>
					<option value="Both">Both</option>
				</select>
			</div>

			<div class="input-box">
				<label>Address</label> <input type="text" name="shop_address"
					placeholder="ex.2/220,north street,nellikuppam road,guduvancheri"
					pattern="^[0-9A-Za-z\\s.,-]+$" title="Enter your street address"
					required />
			</div>
			<div class="input-box">
				<label>City</label> <input placeholder="ex. Chennai" type="text"
					pattern="^[A-Za-z\\s-]+$" name="City" title="Enter your city"
					required />
			</div>
			<div class="input-box">
				<label>Pin Code</label> <input pattern="^[1-9][0-9]{5}$"
					title="Enter your 6-digit pincode" placeholder="ex.654321"
					type="text" name="pincode" />

			</div>
			<div class="input-box">
				<label>Shop Details</label> <input type="text" name="shop_details"
					placeholder="Shop details" title="Write shop tetails" />
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
			<br>
			<p class="error">
				*<%=errormessage%></p>
			<%
			}
			%>
			<button type="submit">Submit</button>
		</form>
		<div class="signin">

			<span>Already have an account?<a href="./login.jsp">Log in
					here</a></span> <span>Join as a PARTNER?<a
				href="./PartnerRegistration.jsp">Join here</a></span>
		</div>


	</div>
</body>
</html>