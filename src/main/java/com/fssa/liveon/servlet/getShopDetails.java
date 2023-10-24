package com.fssa.liveon.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.fssa.liveon.exceptions.DAOException;
import com.fssa.liveon.model.Shop;
import com.fssa.liveon.service.ShopService;

@WebServlet("/getShopDetails")
public class getShopDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public getShopDetails() {
        super();
     
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.getWriter().append("Served at: ").append(request.getContextPath());
        ShopService sp = new ShopService();
        
        try {
            String selectedShopId = request.getParameter("shopId");
            if (selectedShopId != null) {
                Shop selectedShopDetail = sp.getShopById(Integer.parseInt(selectedShopId)); 
                request.getSession().setAttribute("SelectedShopDetail", selectedShopDetail);
                System.out.println("Selected shop: " + selectedShopDetail); 
                response.sendRedirect(request.getContextPath() + "/ShopDetails.jsp");
            }
        } catch (DAOException | SQLException e) {
            e.printStackTrace();
        }
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	}

}
