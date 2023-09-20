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
import com.fssa.liveon.model.SparePart;
import com.fssa.liveon.service.SparePartService;

/**
 * Servlet implementation class AccessoriesServlet
 */
@WebServlet("/AccessoriesServlet")
public class AccessoriesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AccessoriesServlet() {
        super();
  
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		SparePartService sp = new SparePartService();
		try {
			List<SparePart> partList = sp.getSparepartDetails();
			request.setAttribute("SparePartsDetails", partList );
			
		} catch (DAOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/Accessories.jsp");
		dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
