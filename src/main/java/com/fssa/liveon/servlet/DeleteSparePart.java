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
import com.fssa.liveon.service.SparePartService;

/**
 * Servlet implementation class DeleteSparePart
 */
@WebServlet("/DeleteSparePart")
public class DeleteSparePart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteSparePart() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
		PrintWriter out = response.getWriter();
		String sparePartId1 = request.getParameter("spartPartId");
		out.append(sparePartId1);
		
		SparePartService sp = new SparePartService();
		try {
			if(sp.deleteSparePart((Integer.parseInt(sparePartId1)))) {
				out.append("<h1>success</h1>");
				System.out.println("successfully deleted ");
			}
			
		} catch (DAOException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
	}
//		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher( "/SparePartDetails.jsp");
//		dispatcher.forward(request, response);
	}
	

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		doPost(request, response);
	}


}
