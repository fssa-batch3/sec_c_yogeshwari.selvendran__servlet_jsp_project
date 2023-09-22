package com.fssa.liveon.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.liveon.exceptions.DAOException;
import com.fssa.liveon.model.Orders;
import com.fssa.liveon.service.OrderService;

/**
 * Servlet implementation class BuyNowServlet
 */
@WebServlet("/buynowform")
public class BuyNowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public BuyNowServlet() {
        super();
         
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		String paymentMethod = request.getParameter("payment");
		System.out.println(paymentMethod);
		String streets = request.getParameter("Street");
		String city = request.getParameter("City");
		String pincode = request.getParameter("pincode");
String userId = request.getParameter("Id");
System.out.println(userId+"data");
String spareId = request.getParameter("SpareId");
System.out.println(spareId+"datsd2");
		OrderService order = new OrderService();
		    Orders orders = new Orders(Integer.parseInt(spareId),Integer.parseInt(userId),streets,city,pincode,paymentMethod);
			//System.out.println(orders);
			try {
				if (order.placeOrder(orders)) {
					out.append("<h1>success</h1>");
					System.out.println("Order successfuly placed");
				}
			} catch (DAOException | SQLException e) {
				e.printStackTrace();
			}
			response.sendRedirect("home.jsp");
//			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/liveon-web/OrdersHistoryServlet");
//			dispatcher.forward(request, response);
			}
//		Orders order = new Orders(Integer.parseInt(userId),Integer.parseInt(userId),streets,city,pincode,paymentMethod);
	


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
