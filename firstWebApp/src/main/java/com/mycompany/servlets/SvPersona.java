/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.mycompany.servlets;

import com.mycompany.models.Persona;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author it-seekers
 */
@WebServlet(name = "SvPersona", urlPatterns = {"/SvPersona"})
public class SvPersona extends HttpServlet {

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
            out.println("<title>Servlet SvPersona</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet SvPersona at " + request.getContextPath() + "</h1>");
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        var rafa = new Persona("Rafita(spectro)",23,"rafa@yopmail.com");
        var mariana = new Persona("Mariana bonita jk",23,"mariana@yopmail.com");
        var daniel = new Persona("Daniel el viejo jenkins",23,"daniel@yopmail.com");
        var ricardo = new Persona("Ricardo Torres",27,"ricardo@yopmail.com");
    
        
        var personas = new ArrayList<Persona>();
        personas.add(rafa);
        personas.add(mariana);
        personas.add(daniel);
        personas.add(ricardo);
        request.getSession().setAttribute("ListaPersonas", personas);
        response.sendRedirect("personas.jsp");
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
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        
        List<Persona> personas = (List<Persona>) request.getSession().getAttribute("ListaPersonas");
        String nombre = request.getParameter("nombre");
        String edad = request.getParameter("edad");
        String correo = request.getParameter("correo");
        var newUser = new Persona(nombre,Integer.parseInt(edad),correo);
        personas.add(newUser);
        request.getSession().setAttribute("ListaPersonas", personas);
        response.sendRedirect("personas.jsp");
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
