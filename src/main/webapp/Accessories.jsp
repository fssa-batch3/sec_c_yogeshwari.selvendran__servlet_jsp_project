<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.fssa.liveon.model.SparePart"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/liveon-web/assets/css/Accessories.css">
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
		<!-- Accessories -->
		<div class="accessories">
			<div class="head-part">
				<img src="./assets/images/Acc-cover.png" alt="">
			</div>
			<div class="side-item">
				<div class="top-pic">
					<img src="./assets/images/Acc-sub-cover.png" alt="">
				</div>
				<div class="sec-pic">
					<img src="./assets/images/Acc-sub-cover2.png" alt="">
				</div>
			</div>
		</div>
		<div class="options">
			<div class="bike-car">
				<div class="container-input">
					<input type="text" placeholder="Search" name="text" class="input"
						id="name">
					<svg fill="#000000" width="20px" height="20px"
						viewBox="0 0 1920 1920" xmlns="http://www.w3.org/2000/svg">
                      <path
							d="M790.588 1468.235c-373.722 0-677.647-303.924-677.647-677.647 0-373.722 303.925-677.647 677.647-677.647 373.723 0 677.647 303.925 677.647 677.647 0 373.723-303.924 677.647-677.647 677.647Zm596.781-160.715c120.396-138.692 193.807-319.285 193.807-516.932C1581.176 354.748 1226.428 0 790.588 0S0 354.748 0 790.588s354.748 790.588 790.588 790.588c197.647 0 378.24-73.411 516.932-193.807l516.028 516.142 79.963-79.963-516.142-516.028Z"
							fill-rule="evenodd"></path>
                  </svg>
				</div>
			</div>
			<select name="part-store" id="store">
				<option value="">Select parts</option>
				<option value="all">All</option>
				<option value="Car">Car</option>
				<option value="Bike">Bike</option>
			</select>
		</div>
		<!-- This is product design -->
		<!-- <div class="card">
            <div class="card-img">
                <img src="../../assets/New_collection/Bik-part/Air filter.png" alt="">
            </div>
            <div class="card-info">
              <p class="text-title">Product title </p>
              <p class="text-body">Product description and details</p>
            </div>
            <div class="card-footer">
            <span class="text-title">$499.49</span>
            <div class="card-button">
              
            </div>
          </div></div> -->
		<!-- This is products-section -->
		<div class="product-container">

			<div class="container"></div>
		</div>
	</main>
	<script src="https://cdn.jsdelivr.net/npm/axios/dist/axios.min.js"></script>
	<script src="/liveon-web/assets/js/accessories.js"></script>
</body>
</html>