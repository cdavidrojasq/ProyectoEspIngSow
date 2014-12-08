/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Rafa
 */
public class consultarParametroDocumento extends HttpServlet {

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
        String documento=request.getParameter("documento");
        String campo=request.getParameter("campo");
        String valor=request.getParameter("valor");
        Vector resultado;
        conexion con=new conexion();
        resultado=con.consultaGeneral(documento,campo,valor);
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
          // out.println("<%@page contentType=\"text/html\" pageEncoding=\"UTF-8\"%>");
           //out.println("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">");
           out.println("<html>");
           out.println("<head>");
           out.println("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">");
           out.println("<title>Gestor de Mensajes</title>");
           out.println("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/estilo.css\">");
           out.println("</head>");
           out.println("<body>");
           out.println("<div id=\"cabecera\">");
           out.println("<h1>Gestor de mensajes</h1>");
           out.println("</div>");
           out.println("<div id=\"contenedor_global\">");
           out.println("<div id=\"menu_lateral\">");
           out.println("<ul id=\"menu\">");
           out.println("<li><a href=\"consultar.jsp\">Consultar</a></li>");
           out.println("<li><a href=\"insertar.jsp\">Enviar</a></li>");
           out.println("<li><a href=\"index.jsp\">Inicio</a></li>");
           out.println("</ul>");
           out.println("</div>");
           out.println("<div id=\"contenedor\">");
           if(resultado.size()>0){
           out.println("<table border=\"1\">");
           out.println("<tr><th>Resultado</th></tr>");
           for(int i=0;i<resultado.size();i++){
               out.println("<tr><td>"+resultado.elementAt(i)+"</td></tr>");
           }
           out.println("</table>");
           }else{
               out.println("<h2>No hay resultados</h2>");
           }
           out.println("<a href\"consultarParametro.jsp\">VOLVER</a>");
           out.println("</div>");
           out.println("</div>");
           out.println("</body>");
           out.println("</html>");

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
