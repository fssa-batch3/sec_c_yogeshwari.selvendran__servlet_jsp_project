<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge" />
<!-- displays site properly based on user's device -->
<link rel="stylesheet" href="/liveon-web/assets/css/registration.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
	integrity="sha512-MV7K8+y+gLIBoVD59lQIYicR65iaqukzvf/nwasF0nqhPay5w/9lJmVM2hMDcnK1OnMGCdVK+iQrJ7lzPJQd1w=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<title>Live-On_signup_page</title>
</head>
<body>

	<div class="container">

		<!--     <img src="../assets/images/shape.png" class="square" alt="icon" /> -->
		<header>
			<p>Registration Form
		</header>
		<form action="userRegistration" method="post" class="form">
			<div class="input-box">
				<label>First Name</label> <input type="text" name="user_first_name"
					placeholder="First name" required />
			</div>
			<div class="input-box">
				<label>Last Name</label> <input type="text" name="user_last_name"
					placeholder="Last name" required />
			</div>
			<div class="input-box">
				<label>Email Address</label> <input type="text" name="user_email"
					placeholder="Enter email address" required />
			</div>
			<div class="column">
				<div class="input-box">
					<label>Phone Number</label> <input type="tel" name="user_number"
						placeholder="Enter phone number" required />
				</div>


			</div>
			<div class="gender-box">
				<h3>Gender</h3>
				<div class="gender-option">
					<div class="gender">
						<input type="radio" id="check-male" name="gender" value="male"
							checked /> <label for="check-male">male</label>
					</div>
					<div class="gender">
						<input type="radio" id="check-female" name="gender" value="female" />
						<label for="check-female">Female</label>
					</div>
					<div class="gender">
						<input type="radio" id="check-other" name="gender" value="others" />
						<label for="check-other">Others</label>
					</div>
				</div>
			</div>
			<div class="input-box">
				<label>Password</label> <input type="password" name="user_password"
					placeholder="Enter your password" required />
			</div>
			<button type="submit">Submit</button>
		</form>
		<div class="signin">
			<span>Already have an account?<a href="./login.jsp">Log in
					here</a></span>
		</div>
	</div>
</body>
</html>