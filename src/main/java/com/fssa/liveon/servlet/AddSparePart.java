package com.fssa.liveon.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.Arrays;
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
 * Servlet implementation class AddSparePart
 */
@WebServlet("/spartpartadd")
public class AddSparePart extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddSparePart() {
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
	
		String sparePartName = request.getParameter("Spare_part_name");
		String sparePartVehicleType = request.getParameter("Spare_part_type");
		String sparePartPrice = request.getParameter("Spare_part_price");
		String sparePartRating = request.getParameter("Spare_part_rating");
		String sparePartImg1 = request.getParameter("Spare_part_image1");
		String sparePartImg2 = request.getParameter("Spare_part_image2");
		String sparePartDescription = request.getParameter("Spare_part_description");
		
		List<String> validImages=Arrays.asList(sparePartImg1, sparePartImg2);
		SparePartService sp = new SparePartService();
		
		SparePart product = new SparePart(sparePartVehicleType,sparePartName , Double.parseDouble(sparePartPrice), Integer.parseInt(sparePartRating), validImages, sparePartDescription);
		System.out.println(product);
		try {
			if(sp.addSparePart(product)) {
				out.append("<h1>success</h1>");
				System.out.println("successful");
			}
		} catch (DAOException | SQLException e) {
			e.printStackTrace();
		}
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher( "/GetAllSparePartsList");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	//	doGet(request, response);
	}
	
}
