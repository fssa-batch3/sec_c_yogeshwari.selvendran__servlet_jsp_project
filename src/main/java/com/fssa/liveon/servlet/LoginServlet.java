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
import javax.servlet.http.HttpSession;

import com.fssa.liveon.exceptions.DAOException;
import com.fssa.liveon.exceptions.InvalidUserDetailsException;
import com.fssa.liveon.model.User;
import com.fssa.liveon.service.UserService;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public LoginServlet() {
		super();
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		String email = request.getParameter("User_Email");
		String pass = request.getParameter("User_Password");
		UserService gws = new UserService();
		if (email.equals("admin@gmail.com") && pass.equals("Admin@123")) {
			response.sendRedirect("/liveon-web/GetAllSparePartsList");
		} else {
			try {
				User user = gws.getUserByEmailAndPassword(email, pass);
				if (user != null) {
					// Login successful
					HttpSession session = request.getSession();
					session.setAttribute("loginUser", user);
					System.out.println("success");
					response.sendRedirect("/liveon-web/home.jsp");
					out.print("<h3>Mental</h3>");
					System.out.println(session.getId());
				}
			} catch (DAOException | SQLException | InvalidUserDetailsException e) {
				e.printStackTrace();
				request.setAttribute("ErrorMessage", e.getMessage());
				RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/login.jsp");
				dispatcher.forward(request, response);
			}
		}
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
