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
import com.fssa.liveon.model.Appointment;
import com.fssa.liveon.model.User;
import com.fssa.liveon.service.AppointmentService;

@WebServlet("/AppointmentHistory")
public class AppointmentHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AppointmentHistory() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		AppointmentService as = new AppointmentService();
		HttpSession session = request.getSession(false);
		User login = (User) session.getAttribute("loginUser");
		int id = login.getUserId();
		try {
			List<Appointment> bookinglist = as.getAppointmentsByUserId(id);
			for (Appointment appointment : bookinglist) {
				request.setAttribute("AppointmentDetails", bookinglist);
			}
		} catch (DAOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/UserAppointment.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
