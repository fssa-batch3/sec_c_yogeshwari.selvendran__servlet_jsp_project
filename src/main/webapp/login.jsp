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

	<section class="login">
		<div class="login_box">
			<div class="left">
				<div class="top_link">
					<a href="#"><img
						src="https://drive.google.com/u/0/uc?id=16U__U5dJdaTfNGobB_OpwAJ73vM50rPV&export=download"
						alt="">Return home</a>
				</div>
				<div class="contact">
					<form action="userLogin" method="post">
						<h3>SIGN IN</h3>
						<input type="email" placeholder="USER EMAIL" name="User_Email"
							required autofocus>
							 <input type="password" placeholder="USER PASSWORD" name="User_Password" required>
						<button type="submit" class="submit">Login in</button>
					</form>

				</div>
			</div>
		</div>
	</section>

</body>
</html>