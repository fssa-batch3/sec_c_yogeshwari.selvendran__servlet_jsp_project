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
import com.fssa.liveon.exceptions.InvalidUserDetailsException;
import com.fssa.liveon.model.User;
import com.fssa.liveon.service.UserService;

/**
 * Servlet implementation class registrationServlet
 */
@WebServlet("/userRegistration")
public class registrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public registrationServlet() {
		super();
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());

		PrintWriter out = response.getWriter();
		String userFirstName = request.getParameter("user_first_name");
		String userLastName = request.getParameter("user_last_name");
		String userGender = request.getParameter("gender");
		String userEmail = request.getParameter("user_email");
		String userPassword = request.getParameter("user_password");
		String userMobileNumber = request.getParameter("user_number");
		System.out.println(userMobileNumber);

		UserService user = new UserService();
		User users = new User(userFirstName, userLastName, userGender, userEmail, Long.parseLong(userMobileNumber),
				userPassword);
		System.out.println(users);
		try {
			if (user.addUser(users)) {
				out.append("<h1>success</h1>");
				System.out.println("successful");
			}
		} catch (DAOException | SQLException |InvalidUserDetailsException e) {
			e.printStackTrace();
			request.setAttribute("ErrorMessage", e.getMessage());
			RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/registration.jsp");
			dispatcher.forward(request, response);
		}	
		
		response.sendRedirect(request.getContextPath() + "/login.jsp");
		}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
