package com.fssa.liveon.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.liveon.exceptions.DAOException;
import com.fssa.liveon.model.User;
import com.fssa.liveon.service.UserService;

/**
 * Servlet implementation class UpdateUserServlet
 */
@WebServlet("/updateUser")
public class UpdateUserServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateUserServlet() {
        super();

    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		
		String userId = request.getParameter("Id");
		System.out.println(userId);
		String userFirstName = request.getParameter("user_first_name");
		System.out.println(userFirstName);
		String userLastName = request.getParameter("user_last_name");

		String userMobileNumber = request.getParameter("user_mobile");
		System.out.println(userMobileNumber);
	
		UserService userService = new UserService();
		User users = new User(Integer.parseInt(userId),userFirstName, userLastName, Long.parseLong(userMobileNumber));
		System.out.println(users);
		try {
			if( userService.updateUser(users)) {
				out.append("<h1>Update success</h1>"); 
				System.out.println("successful");
			}
		} catch (DAOException | SQLException e) {
			e.printStackTrace();
		}
//		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/ProfileServelt");
//		dispatcher.forward(request, response);
	}


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
