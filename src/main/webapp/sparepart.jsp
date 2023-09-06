<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="com.fssa.liveon.model.SparePart"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" type="text/css" href="/liveon-web/assets/css/sparepart.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>SpareParts</h1>
	
	<div class="product-container">
	
		<div class="container">
			<%
			List<SparePart> sparepartList = (List<SparePart>) request.getAttribute("SparePartsDetails");
			if (sparepartList != null) {
				for (SparePart sparepart : sparepartList) {
			%>
			<div class="product">
<a href="/liveon-web/GetSparePartDetail?spartPartId=<%= sparepart.getId()%>">
				<div class="card">
					<br>
					<div class="card-img">
						<img src=<%= sparepart.getImageUrl().get(0) %> alt="Spare_part">
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
</body>
</html>
