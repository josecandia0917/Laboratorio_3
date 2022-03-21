
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletLi", urlPatterns = {"/ServletLi"})
public class ServletLi extends HttpServlet {

    
   
  
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //1
            String Titulo = request.getParameter("Titulo");
            String Autor = request.getParameter("Autor");
            String Resumen = request.getParameter("Resumen");
            String[] Medio = request.getParameterValues("Medio");
        //2
            RegiLi rL = new RegiLi();
        //3
            rL.setTiulo(Titulo);
            rL.setAutor(Autor);
            rL.setResumen(Resumen);
            rL.setMedio(Medio);
        //4
            request.setAttribute("rL", rL);
        //5
            request.getRequestDispatcher("SalidaL.jsp").forward(request, response);
            
    }

    
    

}
