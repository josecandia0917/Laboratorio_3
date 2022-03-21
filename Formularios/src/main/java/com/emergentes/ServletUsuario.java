
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletUsuario", urlPatterns = {"/ServletUsuario"})
public class ServletUsuario extends HttpServlet {
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //1
            String Nombre = request.getParameter("Nombre");
            String Apellidos = request.getParameter("Apellidos");
            String Correo = request.getParameter("Correo");
            String Password = request.getParameter("Password");
        //2
            RegistroUsuario reg = new RegistroUsuario();
        //3
            reg.setNombre(Nombre);
            reg.setApellidos(Apellidos);
            reg.setCorreo(Correo);
            reg.setPassword(Password);
        //4
            request.setAttribute("rU", reg);
        //5
            request.getRequestDispatcher("SalidaU.jsp").forward(request, response);
            
    }
}
