
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "ServletCurso", urlPatterns = {"/ServletCurso"})
public class ServletCurso extends HttpServlet {

    
  

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //1
            String Nombre = request.getParameter("nombre");
            String Apellido = request.getParameter("apellido");
            String[] Curso = request.getParameterValues("Cursos");
        //2
            Registro re = new Registro();
        //3
            re.setNombre(Nombre);
            re.setApellido(Apellido);
            re.setCursos(Curso);
        //4
             request.setAttribute("regi", re);
        //5
        request.getRequestDispatcher("Salida.jsp").forward(request, response);
        
    }

  

}
