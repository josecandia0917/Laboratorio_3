
package com.emergentes;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "ServletPro", urlPatterns = {"/ServletPro"})
public class ServletPro extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

  
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //1
            String Producto = request.getParameter("Producto");
            String[] Categoria = request.getParameterValues("Categoria");
            String Existencia = request.getParameter("Existencia");
            String Precio = request.getParameter("Precio");
        //2
             RePro reg = new RePro();
        //3
            reg.setProducto(Producto);
            reg.setCategoria(Categoria);
            reg.setPrecio(Precio);
            reg.setExistencia(Existencia);
        //4
            request.setAttribute("rP", reg);
        //5
        request.getRequestDispatcher("SalidaP.jsp").forward(request, response);
            
    }


}
