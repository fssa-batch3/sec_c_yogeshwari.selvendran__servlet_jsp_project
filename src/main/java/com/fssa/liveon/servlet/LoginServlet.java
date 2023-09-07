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
@WebServlet("/userLogin")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
PrintWriter out = response.getWriter();
		

		String email = request.getParameter("User_Email");
		String pass = request.getParameter("User_Password");
		UserService gws=new UserService();
		if(email.equals("admin@gmail.com")&& pass.equals("Admin@123")) {
			response.sendRedirect("/liveon-web/GetAllSparePartsList");
		}
		else {
		 try {
	            User user = gws.getUserByEmail(email, pass);
	            if (user != null) {
	                HttpSession session = request.getSession();
	                session.setAttribute("loginUser", user);
	                response.sendRedirect("/liveon-web/home.jsp");
	                out.print("<h3>Mental</h3>");
	                System.out.println("sucess");
	            } else {
	                request.setAttribute("message", "Invalid email or password.");
	                request.getRequestDispatcher("login.jsp").forward(request, response);
	            }
	        } catch (DAOException | SQLException e) {
	            e.printStackTrace();
	        }
		}
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
