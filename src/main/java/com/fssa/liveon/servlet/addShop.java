package com.fssa.liveon.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.liveon.builder.ShopBuilder;
import com.fssa.liveon.exceptions.DAOException;
import com.fssa.liveon.model.Shop;
import com.fssa.liveon.service.ShopService;

@WebServlet("/addShop")
public class addShop extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public addShop() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		//response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		String partnerId = request.getParameter("partnerId");
		String shopName = request.getParameter("shop_name");
		String shopLicence = request.getParameter("shop_licence");
		String shopNumber = request.getParameter("shop_number");
		String shopVehicleType = request.getParameter("vehicle-type");
		String shopAddress = request.getParameter("shop_address");
		String shopCity = request.getParameter("City");
		String shopPincode = request.getParameter("pincode");
		String shopDetails = request.getParameter("shop_details");
		String shopImage1 = request.getParameter("shop_image1");
		String shopImage2 = request.getParameter("shop_image2");
		List<String> validImages=Arrays.asList(shopImage1, shopImage2);
		ShopService ss = new ShopService();
		Shop shop = new ShopBuilder().buildShopName(shopName).buildShopLicenceNumber(shopLicence)
				.buildShopServicedVehicleType(shopVehicleType).buildShopDetails(shopDetails).buildImageUrl(validImages)
				.buildShopNumber(Long.parseLong(shopNumber)).buildStreetAddress(shopAddress).buildCity(shopCity)
				.buildPostalCode(shopPincode).buildPartnerId(Integer.parseInt(partnerId)).build();
		try {
			if(ss.addShop(shop)) {
				out.append("<h1>success</h1>");
				System.out.println("successful"+"mental");
				response.sendRedirect("/liveon-web/partnerShop");
				
			}
		} catch (DAOException | SQLException e) {
			e.printStackTrace();
			request.setAttribute("ErrorMessage", e.getMessage());
			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/addShop.jsp");
			dispatcher.forward(request, response);
		}
//		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/partnerHome.jsp");
//		dispatcher.forward(request, response);
		
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
