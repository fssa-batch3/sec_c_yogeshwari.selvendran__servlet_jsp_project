<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ page import="java.util.*"%>
<%@ page import="com.fssa.liveon.model.*"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" type="text/css" href="/liveon-web/assets/css/profile.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
    <div class="container">
        <h1>User Profile</h1>
        <%
        User userDetail = (User)request.getAttribute("UserDetails");
        if(userDetail != null){    
        %>
        <div class="profile-info">
            <label for="firstname">First Name:</label>
            <input type="text" id="firstname" value="<%=userDetail.getFirstName() %>" readonly>

            <label for="lastname">Last Name:</label>
            <input type="text" id="lastname" value="<%=userDetail.getLastName() %>" readonly>

            <label for="gender">Gender:</label>
            <input type="text" id="gender" value="<%=userDetail.getGender() %>" readonly>

            <label for="email">Email:</label>
            <input type="email" id="email" value="<%=userDetail.getEmail() %>" readonly>

            <label for="password">Password:</label>
            <input type="password" id="password" value="********" readonly>

            <label for="mobilenumber">Mobile Number:</label>
            <input type="tel" id="mobilenumber" value="<%=userDetail.getPassword() %>" readonly>
        </div>
        <%
        }
        %>
        <div class="profile-actions">
            <button id="editButton">Edit</button>
        </div>
        <div class="logout-button">
            <button id="logoutButton">Logout</button>
        </div>
    </div>
</body>
</html>