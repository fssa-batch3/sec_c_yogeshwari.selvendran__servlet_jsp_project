<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" type="text/css" href="/liveon-web/assets/css/registration.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
		<div class="login_box">
			
				<div class="contact">
					<form action="userRegistration" method="post">
						<h3>SIGN IN</h3>
						<input type="text" placeholder="USER FIRST NAME"
							name="User_First_Name" required> <input type="text"
							placeholder="USER LAST NAME" name="User_Last_Name" required>
						<select id="gender" name="gender" required>
							<option value="male">Male</option>
							<option value="female">Female</option>
							<option value="other">Other</option>
						</select> <input type="email" placeholder="USER EMAIL" name="User_Email"
							required> <input type="password" placeholder="PASSWORD"
							name="User_Password" required> <input type="tel"  name="User_Mobile"
							placeholder="MOBILE NUMBER"  required>
						<button type="submit" class="submit">Sign in</button>
					</form>
				</div>
			</div>
	

</body>
</html>