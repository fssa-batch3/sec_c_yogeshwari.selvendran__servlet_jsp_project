<%@ page import="com.fssa.liveon.model.*"%>
<header>
	<div class="center">
		<div class="logo">
			<a href="/liveon-web/home.jsp"> <img class="live-on"
				src="/liveon-web/assets/images/live-on.png" alt=""> <img
				class="live"
				src="/liveon-web/assets/images/text-liveon-removebg-preview.png"
				alt="">
			</a>
		</div>
		<ul class="cen-ul">
			<li class="list"><a href="/liveon-web/home.jsp">Home</a></li>
			<li class="list"><a href="/liveon-web/about.jsp">About</a></li>
			<li class="list"><a href="/liveon-web/getAllShop">Shop</a></li>
			<li class="list"><a href="/liveon-web/Appointment.jsp">Appointment</a>
			</li>
			<li class="list"><a href="/liveon-web/Accessories.jsp">Accessories</a></li>
		</ul>
	</div>
	<div class="user">
		<ul>
			<%
			User user = (User) session.getAttribute("loginUser");
			boolean isLogin = user != null;
			if (isLogin != false) {
			%>
			<li><a href="/liveon-web/ProfileServelt"><i
					class="fa-solid fa-user" style="color: #000000;"></i></a></li>

			<%
			} else {
			%>
			<li><a href="/liveon-web/login.jsp"><button>login</button></a></li>
			<%
			}
			%>


		</ul>
	</div>
</header>