package com.fssa.liveon.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.LocalTime;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.fssa.liveon.builder.AppointmentBuilder;
import com.fssa.liveon.exceptions.DAOException;
import com.fssa.liveon.model.Appointment;
import com.fssa.liveon.service.AppointmentService;

/**
 * Servlet implementation class BookingAppointmentServlet
 */
@WebServlet("/bookingAppointment")
public class BookingAppointmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public BookingAppointmentServlet() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		String bookingDate = request.getParameter("booking_date");
		String bookingTime = request.getParameter("booking_time");
		String vehicleType = request.getParameter("vehicle-type");
		String vehicleService = request.getParameter("check");
		String Address = request.getParameter("Street");
		String city = request.getParameter("City");
		String pincode = request.getParameter("pincode");
		String userId = request.getParameter("userId");
		LocalDate date = LocalDate.parse(bookingDate);
		LocalTime time = LocalTime.parse(bookingTime);
		System.out.println(bookingDate);
		System.out.println(bookingTime);
		System.out.println(vehicleType);
		System.out.println(vehicleService);
		System.out.println(Address);
		System.out.println(city);
		System.out.println(pincode);
		System.out.println(userId);
		
		int userId1 = Integer.parseInt(userId);
		AppointmentService appointment = new AppointmentService();
		Appointment booking1 = new AppointmentBuilder()
				 .buildBookingDate(date)
				    .buildBookingTime(time)
				    .buildVehicleType(vehicleType)
				    .buildVehicleService(vehicleService)
				    .buildStreetAddress(Address)
				    .buildCity(city)
				    .buildPostalCode(pincode)
				    .buildUserId(userId1)
				    .build();
		try {
			if(appointment.addAppointment(booking1)) {
				out.append("<h1>success</h1>");
				System.out.println("successful  bookedsdddd");
			}
		}catch (DAOException | SQLException e) {
			e.printStackTrace();
		}
		response.sendRedirect(request.getContextPath() + "/home.jsp");
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}
}
