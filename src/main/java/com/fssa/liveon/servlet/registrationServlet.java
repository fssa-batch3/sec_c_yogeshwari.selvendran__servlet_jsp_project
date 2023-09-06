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
import com.fssa.liveon.model.User;
import com.fssa.liveon.service.UserService;

/**
 * Servlet implementation class registrationServlet
 */
@WebServlet("/registrationServlet")
public class registrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public registrationServlet() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		String userFirstName = request.getParameter("User_First_Name");
		String userLastName = request.getParameter("User_Last_Name");
		String userGender = request.getParameter("User_Gender");
		String userEmail = request.getParameter("User_Email");
		String userPassword = request.getParameter("User_Password");
		String userMobileNumber = request.getParameter("User_Mobile_number");
		
		UserService user = new UserService();
		User users = new User(userFirstName,userLastName,userGender,userEmail,Long.parseLong(userMobileNumber),userPassword);
		try {
			if(user.addUser(users)){
				out.append("<h1>success</h1>");
				System.out.println("successful");
			}
		} catch (DAOException | SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher( "/GetAllSparePartsList");
		dispatcher.forward(request, response);
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
