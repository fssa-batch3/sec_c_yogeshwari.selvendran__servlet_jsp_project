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
 * Servlet implementation class EditSparePartServlet
 */
@WebServlet("/EditSparePartServlet")
public class EditSparePartServlet extends HttpServlet {
	 private static final long serialVersionUID = 1L;

	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	    	 SparePartService sp = new SparePartService();
	    	 try {
	 	        String sparePartIdParam = request.getParameter("spartPartId");
	 	        if(sparePartIdParam != null) {
	 	           SparePart updateSparePart = sp.getSparePartDetailById(Integer.parseInt(sparePartIdParam));
	 	          request.setAttribute("UpdateSparePartDetail", updateSparePart);
	 	            System.out.println("Update Sparepart: " + updateSparePart); 
	 	        }
		    
	    	 } catch(DAOException e) {
	    			
	 			e.printStackTrace();
	 		} 
	 		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/UpdateSpareParts.jsp");
			dispatcher.forward(request, response);

	    }
	}