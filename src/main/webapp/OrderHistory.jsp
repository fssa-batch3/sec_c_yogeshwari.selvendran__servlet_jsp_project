<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
<%@ page import="com.fssa.liveon.model.*"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="/liveon-web/assets/css/History.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="sidebar">
        <h1>User</h1>
		<a href="#" autofocus>Profile</a>
         <a href="AddStudent.jsp">Orders</a> 
         <a href="#">Appointments</a>
         <a href="#">Log Out</a>
	</div>
	<div class="container">
	<%
	List<Orders> orderlist = (List<Orders>) request.getAttribute("OrderslistByUserId");
	if(orderlist != null){
		for(Orders order: orderlist ){
	
	%>
	<div class="box">
	<p><%=order.getDateAdded()%></p>
	<p><%=order.getOrderStatus()%></p>
	<p><%=order.getPaymentmethod()%></p>
	<p><%=order.getSparepartId()%></p>
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
</body>
</html>