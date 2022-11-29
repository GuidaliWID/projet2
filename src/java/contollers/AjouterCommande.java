/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package contollers;

import entities.Cart;
import entities.Client;
import entities.Commande;
import entities.DBConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import service.CommandService;
import service.Connexion;

/**
 *
 * @author hp
 */
@WebServlet(name = "AjouterCommande", urlPatterns = {"/AjouterCommande"})
public class AjouterCommande extends HttpServlet {

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
         try (PrintWriter out = response.getWriter()) {
            SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            Date date = new Date();

            //Client auth = (Client) request.getSession().getAttribute("auth");

            //if (auth != null) {
                String productId = request.getParameter("id");
                //int productQuantity = Integer.parseInt(request.getParameter("quantity"));
                //if (productQuantity <= 0) {
                //	productQuantity = 1;
                //}
                Commande commandeModel = new Commande();
                //commandeModel.setId(Integer.parseInt(productId));
                commandeModel.setClient(null);
                commandeModel.setEtat("En cours");
                commandeModel.setDate(new Date(formatter.format(date)));

                CommandService orderDao = new CommandService(Connexion.getInstance().getConnection());
                boolean result = orderDao.insertOrder(commandeModel);
                //if (result) {
                    ArrayList<Cart> cart_list = (ArrayList<Cart>) request.getSession().getAttribute("listpr");
                    if (cart_list != null) {
                        for (Cart c : cart_list) {
                            if (c.getId() == Integer.parseInt(productId)) {
                                cart_list.remove(cart_list.indexOf(c));
                                break;
                            }
                        }
                    }
                    response.sendRedirect("Commande.jsp");
                //} else {
                //    out.println("order failed");
               // }
           // } else {
            //    response.sendRedirect("Authen.jsp");
           // }

        } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
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
