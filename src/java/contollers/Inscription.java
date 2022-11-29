/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package contollers;

import entities.Admin;
import entities.Client;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.AdminService;
import service.ClientService;
import util.Util;

/**
 *
 * @author hp
 */
@WebServlet(name = "Inscription", urlPatterns = {"/Inscription"})
public class Inscription extends HttpServlet {

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
        /*String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        int telephone = Integer.parseInt(request.getParameter("telephone"));
        String adresse = request.getParameter("adresse");*/
        //String email = request.getParameter("email");
        //String date = request.getParameter("date").replace("-", "/");
       // String password = Util.md5(request.getParameter("password"));
       
        ClientService cs = new ClientService ();
        AdminService as = new AdminService ();
        String type  = request.getParameter("type");
        
        String email = request.getParameter("email");
        String emails = request.getParameter("emails");
        if(type.equals("Admin")){
            String password = Util.md5(request.getParameter("passwords"));
            as.create(new Admin(emails, password));
            response.sendRedirect("Authen.jsp?email="+emails);
        }
        
        if(type.equals("Client")){
            String nom = request.getParameter("nom");
            String prenom = request.getParameter("prenom");
            String telephone = request.getParameter("telephone");
            String adresse = request.getParameter("adresse");
            String password = Util.md5(request.getParameter("password"));
            cs.create(new Client(nom,prenom,telephone,adresse,email,password));
            response.sendRedirect("Authen.jsp?email="+email);
        }
        
        //cs.create(new Client(nom,prenom,telephone,adresse,email,password));
      
        //response.sendRedirect("Authentification.jsp");
        //?email="+email
        
      
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
