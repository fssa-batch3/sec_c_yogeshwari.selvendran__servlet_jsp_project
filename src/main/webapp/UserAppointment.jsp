<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.fssa.liveon.service.*"%>
<%@ page import="com.fssa.liveon.model.*"%>
<%@ page import="com.fssa.liveon.dao.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="/liveon-web/assets/css/profile.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
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
					<li><a href="/liveon-web/ProfileServelt" class="active"
						id="profile1"><span class="fa-solid fa-circle-user"></span> <span>My
								Profile</span></a></li>
					<li><a href="/liveon-web/OrdersHistoryServlet" class="active"
						id="order_history1"><span class="fa-solid fa-bag-shopping"></span>
							<span>Orders</span></a></li>
					<li><a href="" autofocus class="active" id="appointment1"><span
							class="fa-solid fa-calendar-check"></span> <span>Appointments</span></a>
					</li>

					<li><a href="/liveon-web/LogoutServlet" id="log"
						class="active"><span class="fa-solid fa-right-from-bracket"></span>
							<span id="log">Logout</span></a></li>
					<li><a href="../../Page/Home/home.html" class="active"><span
							class="fa-solid fa-left-long"></span> <span>Exit</span></a></li>

				</ul>
			</div>
		</div>
		<div class="main-item">
			<main>
				<!-- This is user condainer -->
				<div class="display_cls" id="profile_page">

					<div class="booking_appoinment">
						<h1 class="heading">Appointments</h1>
						<%List<Appointment> bookinglist = (List<Appointment>) request.getAttribute("getAppointmentsByUserId");
	if(bookinglist != null){
		for(Appointment appointment: bookinglist){
	
	%>
						<div class="upcoming">
							<table>
								<thead>
									<th>Booking id</th>
									<th>Vehicle</th>
									<th>Time</th>
									<th>Date</th>
									<th>Service</th>
									<th>Address</th>
									<!-- <th>Edit</th>
                                    <th>Delete</th> -->
								</thead>
								<tbody class="table_row">
									<td><%=appointment.getBookingId()%></td>
									<td><%=appointment.getVehicletype()%></td>
									<td><%=appointment.getVehicleservice()%></td>
									<td><%=appointment.getBookingTime()%></td>
									<td><%=appointment.getBookingDate()%></td>
									<td><%=appointment.getStreetAddress()%>,<%=appointment.getCity()%>,<%=appointment.getPostalCode()%></td>
								</tbody>
							</table>
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
	</div>
</body>
</html>