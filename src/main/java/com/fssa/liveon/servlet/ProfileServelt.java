package com.fssa.liveon.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.liveon.exceptions.DAOException;
import com.fssa.liveon.model.User;
import com.fssa.liveon.service.UserService;

/**
 * Servlet implementation class ProfileServelt
 */
@WebServlet("/ProfileServelt")
public class ProfileServelt extends HttpServlet {
	private static final long serialVersionUID = 1L;       
   
    public ProfileServelt() {
        super();
 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.getWriter().append("Served at: ").append(request.getContextPath());
		

		HttpSession session = request.getSession(false);
		User login = (User)session.getAttribute("loginUser");
		int id=login.getUserId();
		System.out.println(id+"vada");
		
		
		UserService us = new UserService();
		try {
			User userDetails = us.getUserById(id);
			request.setAttribute("UserDetails", userDetails);
		} catch (DAOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/profile.jsp");
		dispatcher.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
