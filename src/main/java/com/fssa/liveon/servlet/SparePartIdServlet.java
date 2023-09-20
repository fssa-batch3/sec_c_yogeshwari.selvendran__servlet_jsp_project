package com.fssa.liveon.servlet;

import java.io.IOException;

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
 * Servlet implementation class SparePartIdServlet
 */
@WebServlet("/SparePartIdServlet")
public class SparePartIdServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public SparePartIdServlet() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		 SparePartService sp = new SparePartService();
		try {
			   String sparePartIdParam = request.getParameter("spartPartId");
	 	        if(sparePartIdParam != null) {
	 	           SparePart sparePartId = sp.getSparePartDetailById(Integer.parseInt(sparePartIdParam));
	 	          request.setAttribute("SparePartDetailId", sparePartId);
	 	            System.out.println("Sparepart Id: " + sparePartId); 
	 	        }
		 } catch(DAOException e) {
 			
	 			e.printStackTrace();
	 		}  
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/buyNow.jsp");
		dispatcher.forward(request, response);
	}



}
