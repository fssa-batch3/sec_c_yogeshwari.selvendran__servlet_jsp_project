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

import com.fssa.liveon.builder.PartnerBuilder;
import com.fssa.liveon.exceptions.DAOException;
import com.fssa.liveon.exceptions.InvalidPartnerDetailsException;
import com.fssa.liveon.exceptions.InvalidUserDetailsException;
import com.fssa.liveon.model.Partners;
import com.fssa.liveon.service.PartnerService;

@WebServlet("/partnerRegistration")
public class partnerRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public partnerRegistration() {
		super();

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		String partnerFirstName = request.getParameter("partner_first_name");
		String partnerLastName = request.getParameter("partner_last_name");
		String partnerGender = request.getParameter("gender");
		String partnerEmail = request.getParameter("partner_email");
		String partnerPassword = request.getParameter("partner_password");
		String partnerMobileNumber = request.getParameter("partner_number");
		PartnerService partner = new PartnerService();
		Partners partners = new PartnerBuilder().buildPartnerFirstName(partnerFirstName)
				.buildPartnerLastName(partnerLastName).buildPartnerEmail(partnerEmail).buildPartnerGender(partnerGender)
				.buildPartnerNumber(Long.parseLong(partnerMobileNumber)).buildPartnerPassword(partnerPassword).build();
		try {
			if (partner.addPartner(partners)) {
				out.append("<h1>success</h1>");
				System.out.println("successful");
			}

		} catch (DAOException | SQLException | InvalidPartnerDetailsException e) {
			e.printStackTrace();
			request.setAttribute("ErrorMessage", e.getMessage());
			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/PartnerRegistration.jsp");
			dispatcher.forward(request, response);
		}

		response.sendRedirect(request.getContextPath() + "/PartnerLogin.jsp");
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
