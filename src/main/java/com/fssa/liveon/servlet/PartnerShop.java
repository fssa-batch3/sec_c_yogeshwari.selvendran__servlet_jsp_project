package com.fssa.liveon.servlet;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.fssa.liveon.exceptions.DAOException;
import com.fssa.liveon.model.Shop;
import com.fssa.liveon.service.ShopService;

@WebServlet("/PartnerShop")
public class PartnerShop extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
    public PartnerShop() {
        super();
    
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
		ShopService sp = new ShopService();
		try {
			String selectedPartnerId = request.getParameter("PartnerId");
			if (selectedPartnerId != null) {
				Shop selectedPartnerShop = sp.getShopByPartnerId(Integer.parseInt(selectedPartnerId));
				request.setAttribute("PartnerShop", selectedPartnerShop);
				System.out.println("Selected Shop: " + selectedPartnerShop+" "+"giyo");
			}
		}catch (DAOException |SQLException e) {

			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/partnerShop.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
