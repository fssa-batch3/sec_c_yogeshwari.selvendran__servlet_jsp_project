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
import com.fssa.liveon.model.Appointment;
import com.fssa.liveon.service.AppointmentService;

@WebServlet("/AdminAppointmentList")
public class AdminAppointmentList extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public AdminAppointmentList() {
		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		AppointmentService as = new AppointmentService();
		try {
			List<Appointment> AdminBookinglist = as.getAllAppointmentForAdmin();
			for (Appointment userBooking : AdminBookinglist) {
				request.setAttribute("AppointmentDetailsForAdmin", AdminBookinglist);
			}
		} catch (DAOException | SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/AdminAppointment.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
