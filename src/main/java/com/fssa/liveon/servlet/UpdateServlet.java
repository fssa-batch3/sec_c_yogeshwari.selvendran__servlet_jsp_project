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

@WebServlet("/UpdateServlet")
public class UpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public UpdateServlet() {
        super();

    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		String sparePartId1 = request.getParameter("sparePartId");
		String sparePartName = request.getParameter("Spare_part_name");
		String sparePartVehicleType = request.getParameter("Spare_part_type");
		String sparePartPrice = request.getParameter("Spare_part_price");
		String sparePartRating = request.getParameter("Spare_part_rating");
		String sparePartImg1 = request.getParameter("Spare_part_image1");
		String sparePartImg2 = request.getParameter("Spare_part_image2");
		String sparePartDescription = request.getParameter("Spare_part_description");
		
		List<String> validImages=Arrays.asList(sparePartImg1, sparePartImg2);
		SparePartService sp = new SparePartService();
		
		SparePart sparepart = new SparePart(Integer.parseInt(sparePartId1),sparePartVehicleType,sparePartName , Double.parseDouble(sparePartPrice), Integer.parseInt(sparePartRating), validImages, sparePartDescription);
		try {
			if(sp.addSparePart(sparepart)) {
				out.append("<h1>success</h1>");
				System.out.println("successful");
			}
			
		} catch (DAOException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		
	}
		RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher( "/GetAllSparePartsList");
		dispatcher.forward(request, response);

	}


}
