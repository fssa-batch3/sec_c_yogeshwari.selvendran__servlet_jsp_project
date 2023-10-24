<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="/liveon-web/assets/css/Admin.css">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="spartpartadd" method="post">
		<div class="container">
			<div class="pro-price">
				<p class="head">Spare Part</p>
				<br>
				<br>
				<br>
				<div class="pro-price1">
					<div>
						<label id="type">Vehicle type</label><br>
						<br> <input type="text" class="inputs" id="vehicle-type"
							name="Spare_part_type" required>
					</div>
					<div>
						<label>Spare Part Name</label><br>
						<br> <input type="text" class="inputs" id="pr_name"
							name="Spare_part_name" required>
					</div>

					<div>
						<label> Spare Part price</label><br>
						<br> <input type="text" class="inputs" id="product_price"
							name="Spare_part_price" required>
					</div>
					<div>
						<label id="add">Spare Part Rating</label><br>
						<br> <input type="text" class="inputs" id="rating"
							name="Spare_part_rating" required>
					</div>
				</div>

			</div>
			<br>
			<br>
			<br>

			<div class="product-img">
				<p class="head">Spare Part-Images</p>
				<br>
				<br>
				<br>
				<div class="pro-img1">
					<div>
						<label>Upload image URL </label><br>
						<br> <input type="url" class="inputs"
							name="Spare_part_image1" id="pr_img_1">
					</div>
					<div>
						<label>Upload image URL</label><br>
						<br> <input type="url" class="inputs"
							name="Spare_part_image2" id="pr_img_2">
					</div>

				</div>

			</div>
			<br>
			<br>
			<br>
			<div class="high-pro">
				<p class="head">Spare Part-Details</p>
				<br>
				<br>
				<br>
				<div class="high-pro1">


					<div>
						<label id="add2">Description</label><br>
						<br> <input type="text" id="description"
							name="Spare_part_description" required>
					</div>

				</div>

			</div>
			<br>
			<br>
			<br>

			<div class="buttons">
				<button type="submit" class="pr_btn" id="sub">Upload</button>
				<!-- <button type="button" class="pr_btn" id="edit">EDIT</button>
                    <button type="button" class="pr_btn" id="delete">DELETE</button> -->
			</div>
		</div>
	</form>
</body>
</html>