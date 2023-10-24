package com.fssa.liveon.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.fssa.liveon.exceptions.DAOException;
import com.fssa.liveon.exceptions.InvalidPartnerDetailsException;
import com.fssa.liveon.model.Partners;
import com.fssa.liveon.service.PartnerService;

@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
    private static final long serialVersionUID = 1L;

    public AdminLogin() {
        super();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String email = request.getParameter("partner_email");
        String pass = request.getParameter("partner_password");
        PartnerService partnerService = new PartnerService();

        try {
            Partners partner = partnerService.getPartnerByEmailAndPassword(email, pass);

            if (partner != null) {
                HttpSession session = request.getSession();
                session.setAttribute("loginPartner", partner);
                System.out.print(partner);
                RequestDispatcher dispatcher = request.getRequestDispatcher("/PartnerProfile");
                dispatcher.include(request, response);
            }
        } catch (DAOException | InvalidPartnerDetailsException |SQLException e) {
            e.printStackTrace();
            request.setAttribute("ErrorMessage", e.getMessage());
            RequestDispatcher dispatcher = request.getServletContext().getRequestDispatcher("/AdminLogin.jsp");
            dispatcher.forward(request, response);
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // You probably want to do something here for GET requests
    }
}
