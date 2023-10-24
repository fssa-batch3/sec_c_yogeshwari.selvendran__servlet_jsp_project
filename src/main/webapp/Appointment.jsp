<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.fssa.liveon.model.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/liveon-web/assets/css/Appointment.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp"></jsp:include>
	<main>
		<%
		User user = (User) session.getAttribute("loginUser");
		%>
		<!-- This is appoinment page -->
		<div class="appoinment">
			<!-- <img src="../../assets/New_collection/BG-Collection/vecteezy_car-repair-service-min.jpg" alt=""> -->
		</div>
		<!-- Booking appoinment -->

		<div class="app-align" id="app-book">
			<form action="bookingAppointment" method="post">
				<!-- This is appoinment section -->
				<div class="appoinment-section">
					<input type="hidden" name="userId" value="<%=user.getUserId()%>">
					<div class="date">
						<!-- This is choose the appointment date -->
						<div class="date-choose">
							<label for="appointment-date" class="top-head">APPOINTMENT
								DATE</label><br> <input id="date" type="date" name="booking_date"
								required aria-label="date" min="before">
						</div>
						<br>
						<!-- This is choose the appointment time -->
						<div class="date-choose">
							<label for="appointment-date" class="top-head">PREFFERED
								TIME FRAME</label><br>
							<!-- <input id="time" type="time" required aria-label="time" required> -->

							<input type="time" id="time" name="booking_time" required
								placeholder="12:00">
						</div>
						<br>
						<!-- This is choose the appointment vehicle type -->
						<div class="type-choose">
							<label for="appointment-date" class="top-head">VEHICLE</label><br>
							<select name="vehicle-type" class="vehi-cho"> Vehicle
								type
								<option value="Bike">BIKE</option>
							</select>
						</div>
						<br>
						<!-- This is choose the appointment servicde -->
						<div class="date-choosing">
							<label for="appointment-date" class="top-head">SELECT
								SERVICES NEEDED</label><br>
							<div id="service-select">
								<select name="check" class="vehi-cho">
									<option>Select Service</option>
									<option value="Bike wash and polish">Bike wash and
										polish</option>
									<option value="Brake Cleaning">Brake Cleaning</option>
									<option value="Engine Oil Change">Engine Oil Change</option>
									<option value="Oil Filter Change">Oil Filter Change</option>
									<option value="Air Conditioning">Air Conditioning</option>
									<option value="Brake repair">brake repair</option>
									<option value="Engine Diagnostics">Engine Diagnostics</option>
									<option value="Heating & Cooling">Heating & Cooling</option>
									<option value="Lube, Oil and Filter Service">Lube, Oil
										and Filter Service</option>
									<option value=" water Service">Water Service</option>
								</select>
							</div>
						</div>
					</div>
					<div class="addres">
						<label for="" class="top-head">CONTACT DETAILS</label><br> <input
							id="contactphone" placeholder="Street" type="text"
							pattern="^[0-9A-Za-z\\s.,-]+$" title="Enter your street address"
							name="Street" required><br> <input id="home-num"
							placeholder="City" type="text" pattern="^[A-Za-z\\s-]+$"
							name="City" title="Enter your city" required><br> <input
							class="name" id="home-state" pattern="^[1-9][0-9]{5}$"
							title="Enter your 6-digit pincode" placeholder="Pincode"
							type="text" name="pincode"> <br> <br>

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
						<button type="submit">SUBMIT NOW</button>
						<!-- <button>SUBMIT NOW</button> -->
					</div>
				</div>
			</form>
		</div>
	</main>
	<div class="booking-app">
		<div class="book-page">
			<span>BOOKING AN APPOINTMENT</span>
			<hr>
			<p>We are one of the leading auto repair shops serving customers
				in.</p>
			<p>All mechanic services are performed by highly qualified
				mechanics.</p>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
	<script>
		const date = document.getElementById("date");
		console.log(date);
		// let today = new Date().toISOString().split("T")[0];
		const today = new Date(Date.now() - new Date().getTimezoneOffset()
				* 60000).toISOString().split("T")[0];
		date.setAttribute("min", today);

		const dateInput = document.getElementById('date');
		const timeInput = document.getElementById('time');

		timeInput.addEventListener('change', validateTime);

		function validateTime() {
			const selectedDate = dateInput.value;
			const selectedTime = timeInput.value;

			if (!selectedDate) {
				return; // If date is not selected, do not perform validation
			}

			const currentDate = new Date();
			const currentYear = currentDate.getFullYear();
			const currentMonth = currentDate.getMonth() + 1;
			const currentDay = currentDate.getDate();
			const currentHour = currentDate.getHours();
			const currentMinute = currentDate.getMinutes();

			const formattedCurrentDate = `${currentYear}-${currentMonth.toString().padStart(2, '0')}-${currentDay.toString().padStart(2, '0')}`;
			const formattedCurrentTime = `${currentHour.toString().padStart(2, '0')}:${currentMinute.toString().padStart(2, '0')}`;

			const selectedDateTime = new Date(`${selectedDate}T${selectedTime}`);
			const currentDateTime = new Date(
					`${formattedCurrentDate}T${formattedCurrentTime}`);

			if (selectedDateTime <= currentDateTime) {
				alert('Please select a time in the future.');
				timeInput.value = ''; // Clear the time input value
			}
		}
</script>
</body>
</html>