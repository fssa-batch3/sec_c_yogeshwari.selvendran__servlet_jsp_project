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
 * Servlet implementation class GetSparePartDetail
 */
@WebServlet("/GetSparePartDetail")
public class GetSparePartDetail extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public GetSparePartDetail() {
        super();

    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		SparePartService sp=new SparePartService();
		try {

		 // Store selected ground details as session attributes
        String selectedSparepartId = request.getParameter("spartPartId");
        if (selectedSparepartId != null) {
            SparePart selectedSparePartDetail = sp.getSparePartDetailById(Integer.parseInt(selectedSparepartId)); 
            request.setAttribute("SelectedSparePartDetail", selectedSparePartDetail);
            System.out.println("Selected Sparepart: " + selectedSparePartDetail); 
            
            
        }
		
		} catch (DAOException e) {
		
			e.printStackTrace();
		} 
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/SparePartDetails.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
