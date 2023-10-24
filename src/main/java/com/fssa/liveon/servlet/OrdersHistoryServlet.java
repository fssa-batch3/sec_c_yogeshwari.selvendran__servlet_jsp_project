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
import javax.servlet.http.HttpSession;

import com.fssa.liveon.exceptions.DAOException;
import com.fssa.liveon.model.Orders;
import com.fssa.liveon.model.SparePart;
import com.fssa.liveon.model.User;
import com.fssa.liveon.service.OrderService;
import com.fssa.liveon.service.SparePartService;

@WebServlet("/OrdersHistoryServlet")
public class OrdersHistoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public OrdersHistoryServlet() {
        super();

    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		OrderService os = new OrderService();
		SparePartService sps = new SparePartService();
//		SparePartsDAO spd = new SparePartsDAO();
//		SparePartService sp = new SparePartService();
		

		HttpSession session = request.getSession(false);
		User login = (User)session.getAttribute("loginUser");
		int id=login.getUserId();
		try {
			List<Orders> orderlist = os.getOrdersByUserId(id);
			for (Orders order : orderlist) {
		        int sparePartId = order.getSparepartId();
		        SparePart sparePart = sps.getSparePartDetailById(sparePartId);
		        order.setSparepart(sparePart);
		    }
			request.setAttribute("OrderslistByUserId", orderlist);
			
		} catch (DAOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/OrderHistory.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
