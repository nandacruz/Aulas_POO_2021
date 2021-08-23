/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.DecimalFormat;

/**
 *
 * @author FERNANDADEMOURACRUZ
 */
@WebServlet(name = "JurosCompostoServlet", urlPatterns = {"/juros-composto.html"})
public class JurosCompostoServlet extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet JurosCompostoServlet</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Juros Composto Servlet</h1>");
            out.println("</body>");
            out.println("</html>");
            
            DecimalFormat deci = new DecimalFormat("0.000");
            double vp, j;
            int n;
            double vf;
            
            
                try{

                    vp = Double.parseDouble(request.getParameter("vp"));
                    j = Double.parseDouble(request.getParameter("j"));
                    n = Integer.parseInt(request.getParameter("n"));   

                    vf = vp * Math.pow((1+j),n);
                    
                    out.println("<h3><a href='index.html'> < Voltar</a></h3>");
                                       
                    out.println("<h3> Dados enviados:</h3>");
                    out.println("<h4> Valor presente: </h4>"+vp);
                    out.println("<h4> Período em meses:</h4>"+n);
                    out.println("<h4> Taxa de juros:</h4>"+j);
                    
                    
                    out.println("<h4> Resultado:</h4>"+(deci.format(vf)));

                }catch(Exception ex){
                    out.println("<p style = 'color:red'>Erro ao ler parâmetro: "+ex.getMessage()+"<p>");
                }
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
