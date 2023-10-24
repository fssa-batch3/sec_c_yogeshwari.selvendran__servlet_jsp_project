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
<title>Live-On_signin_page</title>
</head>
<body>
		<%
        String successmessage=(String)request.getAttribute("Successmessage");
        String errormessage=(String)request.getAttribute("ErrorMessage");
        
        %>
        
        <%
        
        if(successmessage!=null){
        
        %>
            
        <p><%=successmessage %></p>
           <%
        
        }%>
		<!--     <img src="../assets/images/shape.png" class="square" alt="icon" /> -->
	
        
	<div class="container">
		<header>
			<p>Login Form
		</header>
		<form action="AdminLogin" method="post" class="form">

			<div class="input-box">
				<label>Email Address</label> <input type=email name="partner_email"
					placeholder="Enter email address"  required />
			</div>
			<div class="input-box">
				<label>Password</label> <input type="password"  name="partner_password"
					placeholder="Enter your password" required />
			</div>
	
         <% 
        
        
           if(errormessage!=null){
        
        %>
         <br>   
        <p class="error">*<%=errormessage%></p>
           <%
        
        }
         
        %>
			<button type="submit">Submit</button>
		</form>
		<div class="signin">
			<span>Create a Account As Partner?<a href="./PartnerRegistration.jsp">Sign up here</a></span>
		</div>
	</div>

</body>
</html>