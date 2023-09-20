<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/liveon-web/assets/css/registration.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<div class="wrapper">
		<div class="container main">
			<div class="row">
				<div class="col-md-6 side-image">

					<!-------------      image   ------------->

					<img src="/liveon-web/assets/images/sign-in-page.jpg" alt="">
					<div class="text">
						<p>
							Join the community of developers <i>ludiflex</i>
						</p>
					</div>

				</div>

				<div class="col-md-6 right">

					<div class="input-box">

						<header>Create account</header>
						<form action="userRegistration" method="post">
							<div class="input-field">
								<input type="text" name="user_first_name" required class="input" id="email"> <label
									for="email">First Name</label>
							</div>
							<div class="input-field">
								<input type="text" name="user_last_name" required class="input" id="email"> <label
									for="email">Last Name</label>
							</div>
							<div class="input-field">
								<select id="gender" name="gender" required class="input" id="email">
									<option value="male">Male</option>
									<option value="female">Female</option>
									<option value="other">Other</option>
								</select>
							</div>
							<div class="input-field">
								<input type="email" name="user_email" required class="input" id="email"> <label
									for="email">Email</label>
							</div>
							<div class="input-field">
								<input type="password" name="user_password" required class="input" id="pass"> <label
									for="pass">Password</label>
							</div>
							<div class="input-field">
								<input type="tel" name="user_number" required class="input" id="email"> <label
									for="pass">Mobile Number</label>
							</div>
							<div class="input-field">

								<button type="submit" class="submit">Sign in</button>
							</div>
						</form>
						<div class="signin">
							<span>Already have an account? <a href="#">Log in here</a></span>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>