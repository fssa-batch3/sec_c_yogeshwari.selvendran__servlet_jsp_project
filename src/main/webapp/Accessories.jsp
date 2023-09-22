<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.util.*"%>
<%@ page import="com.fssa.liveon.model.SparePart"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" type="text/css" href="/liveon-web/assets/css/Accessories.css">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.1/css/all.min.css"
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
                    <input type="text" placeholder="Search" name="text" class="input" id="name">
                    <svg fill="#000000" width="20px" height="20px" viewBox="0 0 1920 1920" xmlns="http://www.w3.org/2000/svg">
                      <path d="M790.588 1468.235c-373.722 0-677.647-303.924-677.647-677.647 0-373.722 303.925-677.647 677.647-677.647 373.723 0 677.647 303.925 677.647 677.647 0 373.723-303.924 677.647-677.647 677.647Zm596.781-160.715c120.396-138.692 193.807-319.285 193.807-516.932C1581.176 354.748 1226.428 0 790.588 0S0 354.748 0 790.588s354.748 790.588 790.588 790.588c197.647 0 378.24-73.411 516.932-193.807l516.028 516.142 79.963-79.963-516.142-516.028Z" fill-rule="evenodd"></path>
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

			<div class="container">
				<%
				List<SparePart> sparepartList = (List<SparePart>) request.getAttribute("SparePartsDetails");
				if (sparepartList != null) {
					for (SparePart sparepart : sparepartList) {
				%>
				<div class="product">
					<a
						href="/liveon-web/AccessoriesDetails?spartPartId=<%=sparepart.getId()%>">
						<div class="card">
							<br>
							<div class="card-img">
								<img src=<%=sparepart.getImageUrl().get(0)%> alt="Spare_part">
							</div>
							<div class="card-info">
								<p class="text-title1"><%=sparepart.getName()%></p>
							</div>
							<div class="card-footer">
								<span class="text-title"><%=sparepart.getPrice()%></span>
								<div class="card-button">
									<%
									int ratingValue = sparepart.getRating();
									for (int i = 1; i <= 5; i++) {
										if (i <= ratingValue) {
									%>
									<span class="star-icon filled-star">&#9733;</span>
									<%
									} else {
									%>
									<span class="star-icon">&#9734;</span>
									<%
									}
									}
									%>
								</div>
							</div>
						</div>
					</a>
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
		</div>
        <!-- <div class="addtional">
                <img src="//cdn.shopify.com/s/files/1/0651/7715/7847/files/Shop-under-499_ac01c67d-ef69-4d65-9363-41a7985059a4.jpg?v=1665067062&amp;width=411" srcset="//cdn.shopify.com/s/files/1/0651/7715/7847/files/Shop-under-499_ac01c67d-ef69-4d65-9363-41a7985059a4.jpg?v=1665067062&amp;width=165 165w, //cdn.shopify.com/s/files/1/0651/7715/7847/files/Shop-under-499_ac01c67d-ef69-4d65-9363-41a7985059a4.jpg?v=1665067062&amp;width=360 360w" width="450" height="198" loading="lazy" class="image multiple-image" sizes="(min-width: 1200px) 550px, (min-width: 750px) calc((100vw - 130px) / 2), calc((100vw - 50px) / 2)">
                <img src="//cdn.shopify.com/s/files/1/0651/7715/7847/files/Shop-under-999_b76ac3b1-2482-4086-83ae-ec7d5abf1df2.jpg?v=1665067062&amp;width=411" srcset="//cdn.shopify.com/s/files/1/0651/7715/7847/files/Shop-under-999_b76ac3b1-2482-4086-83ae-ec7d5abf1df2.jpg?v=1665067062&amp;width=165 165w, //cdn.shopify.com/s/files/1/0651/7715/7847/files/Shop-under-999_b76ac3b1-2482-4086-83ae-ec7d5abf1df2.jpg?v=1665067062&amp;width=360 360w" width="450" height="198" loading="lazy" class="image multiple-image" sizes="(min-width: 1200px) 550px, (min-width: 750px) calc((100vw - 130px) / 2), calc((100vw - 50px) / 2)">
                <img src="//cdn.shopify.com/s/files/1/0651/7715/7847/files/Shop-under-1499_8519b15e-8aef-44b9-8e09-567d30b836fb.jpg?v=1665067062&amp;width=411" srcset="//cdn.shopify.com/s/files/1/0651/7715/7847/files/Shop-under-1499_8519b15e-8aef-44b9-8e09-567d30b836fb.jpg?v=1665067062&amp;width=165 165w, //cdn.shopify.com/s/files/1/0651/7715/7847/files/Shop-under-1499_8519b15e-8aef-44b9-8e09-567d30b836fb.jpg?v=1665067062&amp;width=360 360w" width="450" height="198" loading="lazy" class="image multiple-image" sizes="(min-width: 1200px) 550px, (min-width: 750px) calc((100vw - 130px) / 2), calc((100vw - 50px) / 2)">
            </div> -->






        <!-- <div class="page-collection">
            <ul>
                <li>1</li>
                <li>2</li>
            </ul>
        </div> -->

        <!-- This is Why choose us -->
        <!-- <div class="process">
            <h1>Why Choose Live On?</h1> -->
        <!-- <p>No time to go to a bike workshop or Scooter Service Center? No worries! With one tap in the app, we bring the two wheeler workshop to you.</p> -->
        <!-- <div class="progress">
                <div class="timing">
                    <div class="pic-item">
                        <img src="../../assets/New_collection/delivery-truck.png" alt="book time">
                    </div>
                    <div class="pec-part">
                        <h4>Free Delivery</h4>
                        <p>We provide free home delivery for products above ₹ 499</p>
                    </div>
                </div>
                <div class="timing">
                    <div class="pic-item">
                        <img src="../../assets/New_collection/box.png" alt="book time">
                    </div>
                    <div class="pec-part">
                        <h4>7-Days Return</h4>
                        <p>Return product within 7 days for any product you buy.</p>
                    </div>
                </div>
                <div class="timing">
                    <div class="pic-item">
                        <img class="tim" src="../../assets/New_collection/warranty.png" alt="book time">
                    </div>
                    <div class="pec-part">
                        <h4>Guaranteed Lowest Price</h4>
                        <p>We ensure quality products with best industry prices</p>
                    </div>
                </div>
            </div>
        </div> -->
</main>
 <jsp:include page="footer.jsp"></jsp:include>
</body>
</html>