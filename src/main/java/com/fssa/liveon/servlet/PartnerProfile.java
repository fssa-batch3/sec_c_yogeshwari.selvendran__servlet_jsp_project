package com.fssa.liveon.servlet;

import java.io.IOException;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.liveon.exceptions.DAOException;
import com.fssa.liveon.model.Partners;
import com.fssa.liveon.service.PartnerService;

@WebServlet("/PartnerProfile")
public class PartnerProfile extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public PartnerProfile() {
        super();
    }
    // Handle GET requests
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session != null) {
            Partners loginPartner = (Partners) session.getAttribute("loginPartner");
            if (loginPartner != null) {
                int partnerId = loginPartner.getPartnerId();
                PartnerService partnerService = new PartnerService();
                try {
                    Partners partnerDetails = partnerService.getPartnerById(partnerId);
                    request.setAttribute("PartnerDetails", partnerDetails);
                    System.out.print(partnerDetails+"Summa");
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/partnerHome.jsp");
                    dispatcher.forward(request, response);
                } catch (DAOException | SQLException e) {
                    // Handle exceptions properly, e.g., by displaying an error message
                    e.printStackTrace();
                }
            } else {
                // Handle the case where there's no logged-in partner
                response.sendRedirect("/PartnerLogin.jsp"); // Redirect to the login page
            }
        } else {
            // Handle the case where there's no active session
            response.sendRedirect("/PartnerLogin.jsp"); // Redirect to the login page
        }
    }
    // Handle POST requests
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Call the doGet method for POST requests
        doGet(request, response);
    }
}
