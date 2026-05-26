/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package mypkg;

import jakarta.servlet.RequestDispatcher;
import java.util.HashMap;
import java.sql.*;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author zed
 */
public class CountryModel extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
            String driver="com.mysql.cj.jdbc.Driver";
            DAO mydao=new DAO();
            HashMap<Integer, String> hm=new HashMap<>();
            try {
                Connection con=mydao.toConnect(driver);
                PreparedStatement pstm=con.prepareStatement("SELECT * FROM country_new;");
                ResultSet rs=mydao.toFetch(pstm);
                while(rs.next()) {
                    String cname=rs.getString("country_name");
                    int ccode=rs.getInt("country_code");
                    hm.put(ccode, cname);
                }
                mydao.toClose();
            } catch(ClassNotFoundException | SQLException e) {
                out.println("<h2>"+e.getMessage()+"</h2>");
            }
            request.setAttribute("hashmap", hm);
            String k="Lucknow-Kanpur-Allahabad-Delhi";
            request.setAttribute("str", k);
            RequestDispatcher rd=request.getRequestDispatcher("/countrydisplay");
            rd.forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
