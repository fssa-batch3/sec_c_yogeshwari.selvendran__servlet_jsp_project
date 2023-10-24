<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.liveon.model.*"%>
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
			<!-- This is user condainer -->
			<div class="display_cls" id="profile_page">
				<div class="user-container">

					<%
					Partners login = (Partners) request.getAttribute("PartnerDetails");
					if (login != null) {
					%>
					<div class="information">
						<form id="form" action="updatePartner" method="post">
							<!-- This is First name  -->
							<input type="hidden" name="Id" value="<%=login.getPartnerId()%>">

							<div class="first-name" id="align-num">
								<label class="more">First Name</label> <input class="name"
									id="user-firstname" type="text" name="partner_first_name"
									placeholder="First Name" value="<%=login.getFirstName()%>"
									required="true">

							</div>
							<!-- This is Last name  -->
							<div class="last-name" id="align-num">
								<label class="more">Last Name</label> <input class="name"
									id="user-lastname" type="text" name="partner_last_name"
									placeholder="Last Name" value="<%=login.getLastName()%>"
									required="true">
							</div>

							<!-- This is email input  -->
							<div class="email" id="align-num">
								<label class="more"> Email</label> <input class="name"
									id="user-email" type="email" name="partner_email"
									placeholder="name@gmail.com" value="<%=login.getEmail()%>"
									required="true" title="First name connot contain spaces"
									readonly>
							</div>
							<!-- This is user mobile number -->
							<div class="number" id="align-num">
								<label class="more"> Number</label> <input class="name"
									id="user_number" type="tel" pattern="[0-9]{10}"
									title="PLease enter 10 digit number" name="partner_mobile"
									placeholder="+91 8923456789" value="<%=login.getNumber()%>"
									required="true">
							</div>
							<!-- This is update button -->
							<div>
								<button type="submit" id="btn" class="name">Edit</button>
							</div>

						</form>
					</div>
					<%
					} else {
					%>
					<p>Hey mental</p>
					<%
					}
					%>

				</div>

			</div>
		</main>


	</div>


</body>
</html>