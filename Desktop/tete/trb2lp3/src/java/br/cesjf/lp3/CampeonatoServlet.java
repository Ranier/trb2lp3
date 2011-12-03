/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package br.cesjf.lp3;

import br.cesjf.lp3.modelo.Jogos;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ranier
 */
@WebServlet(name = "Campeonato", urlPatterns = {"/Campeonato"})
public class CampeonatoServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    RequestDispatcher dispacher = request.getRequestDispatcher("Tabela.jsp");

        String n1 = (request.getParameter("nt1"));
        String n2 = (request.getParameter("nt2"));
        int gol1 = Integer.parseInt(request.getParameter("golt1"));
        int gol2 = Integer.parseInt(request.getParameter("golt2"));        
        
        Jogos jog = new Jogos(); 
        jog.setNt1(n1);
        jog.setNt2(n2);
        jog.setGolt1(gol1);
        jog.setGolt2(gol2);
        
        request.setAttribute("tabela", jog);      
    
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
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
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
