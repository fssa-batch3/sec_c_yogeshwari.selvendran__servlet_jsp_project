<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.fssa.liveon.model.*"%>
<%@ page import="com.fssa.liveon.model.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" type="text/css"
	href="/liveon-web/assets/css/admindashboard.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Admin Appointment List</title>
</head>
<body>
	<!-- This is profile-section -->
	<div class="account-section">
		<div class="side-item">
			<div class="side-menu">
				<ul>
				<li><a href="/liveon-web//GetAllSparePartsList"  class="active" 
						id="profile1"><span class="fa-solid fa-house-chimney-window"></span> <span>
								Spare parts</span></a></li>
					<li><a href="/liveon-web/Admin.jsp" class="active" 
						id="profile1"><span class="fa-solid fa-add"></span> <span>
								Add Spare parts</span></a></li>
					<li><a href="/liveon-web/AdminOrderList" class="active"
						id="order_history1"><span class="fa-solid fa-bag-shopping"></span>
							<span>Orders</span></a></li>
					<li><a href="/liveon-web/AppointmentHistory" class="active"  autofocus
						id="appointment1"><span class="fa-solid fa-calendar-check"></span>
							<span>Appointments</span></a></li>

					<li><a href="/liveon-web/LogoutServlet" id="log"
						class="active"><span class="fa-solid fa-right-from-bracket"></span>
							<span id="log">Logout</span></a></li>
					<li><a href="/liveon-web//GetAllSparePartsList" id="log"
						class="active"><span class="fa-solid fa-arrow-left"></span> <span
							id="log">Exit</span></a></li>

				</ul>
			</div>
		</div>
		<div class="main-item">
			<main>
				<!-- This is user condainer -->
				<div class="display_cls" id="profile_page">

					<div class="booking_appoinment">
						<h1 class="heading">Appointments</h1>

						<div class="upcoming">
							<table>
								<thead>
									<th>Booking id</th>
									<th>Vehicle</th>
									<th>Time</th>
									<th>Date</th>
									<th>Service</th>
									<th>Address</th>
									<th>User Name</th>
									<th>User Mobile</th>
									<!-- <th>Edit</th>
                                    <th>Delete</th> -->
								</thead>
								<%
								List<Appointment> AdminBookinglist = (List<Appointment>) request.getAttribute("AppointmentDetailsForAdmin");
								if (AdminBookinglist != null) {
									for (Appointment userBooking : AdminBookinglist) {
								%>
								<tbody class="table_row">

									<td><%=userBooking.getBookingId()%></td>
									<td><%=userBooking.getVehicletype()%></td>
									<td><%=userBooking.getVehicleservice()%></td>
									<td><%=userBooking.getBookingTime()%></td>
									<td><%=userBooking.getBookingDate()%></td>
									<td><%=userBooking.getStreetAddress()%>,<%=userBooking.getCity()%>,<%=userBooking.getPostalCode()%></td>
									<td><%=userBooking.getUser().getFirstName()%></td>
									<td><%=userBooking.getUser().getNumber()%></td>
								</tbody>
								<%
								}
								} else {
								%>
								<h1>No records found</h1>
								<%
								}
								%>
							</table>
						</div>

					</div>
				</div>
			</main>

		</div>
	</div>
</body>
</html>