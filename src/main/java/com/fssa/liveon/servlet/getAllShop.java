package com.fssa.liveon.servlet;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.liveon.exceptions.DAOException;
import com.fssa.liveon.model.Shop;
import com.fssa.liveon.service.ShopService;


@WebServlet("/getAllShop")
public class getAllShop extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public getAllShop() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		ShopService sp = new ShopService();
		try {
			List<Shop> shop = sp.getAllShopDetails();
			request.setAttribute("ShopDetails", shop);
			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/AllShop.jsp");
			dispatcher.forward(request, response);
		} catch (DAOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
