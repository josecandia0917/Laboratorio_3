<%@page import ="com.emergentes.RePro"%>
        
<%
    RePro rP = (RePro)request.getAttribute("rP");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Inventario</h1>
        <p>Su nombre es: <%= rP.getProducto() %> </p>
        <p>La categoria  es : </p>
        <%
                String Categoria[] = rP.getCategoria();
                if(Categoria != null){
                    for (int i = 0; i < Categoria.length; i++) {
            %>
            <option> <%=  Categoria[i]  %>  </option>
            <%
                          }
                }
            %>
         
         <p>La existencia es: <%= rP.getExistencia() %> </p>
         <p>El precio es: <%= rP.getPrecio() %> </p>
           <p> <b>Gracias  !! :)</b> </p>
        <br><br>
            <form action="index.jsp">
                <input type="submit" value="VOLVER AL INICIO" />
            </form>
</html>
