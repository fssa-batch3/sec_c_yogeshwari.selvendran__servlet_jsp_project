package com.fssa.liveon.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

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
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
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
				} else {
					// Login failed
					request.setAttribute("message", "Invalid email or password.");
//					request.setAttribute("password",);
					request.getRequestDispatcher("/liveon-web/error.jsp").forward(request, response);
				}
			} catch (DAOException | SQLException e) {
				e.printStackTrace();
			}
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
