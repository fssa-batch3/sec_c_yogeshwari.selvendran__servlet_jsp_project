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
import com.fssa.liveon.model.Orders;
import com.fssa.liveon.service.OrderService;

@WebServlet("/AdminOrderList")
public class AdminOrderList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminOrderList() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		OrderService os = new OrderService();
		try {
			List<Orders> OrderList =  os.getAllOrdersForAdmin();

				request.setAttribute("OrderListForAdmin", OrderList);
				System.out.println(OrderList);
				
			
		}
	 catch (DAOException | SQLException e) {
		e.printStackTrace();
	}
	RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/AdminOrderHistory.jsp");
	dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
