package com.fssa.liveon.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.JSONArray;

import org.json.JSONArray;

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
PrintWriter out=response.getWriter();
		SparePartService sp = new SparePartService();
		try {
			List<SparePart> partList = sp.getSparepartDetails();
			//request.setAttribute("SparePartsDetails", partList );
			JSONArray sparePartsJSonArray = new JSONArray(partList);
			out.write(sparePartsJSonArray.toString());
			
		} catch (DAOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			
			e.printStackTrace();
		}
		//RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/Accessories.jsp");
		//dispatcher.forward(request, response);
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
