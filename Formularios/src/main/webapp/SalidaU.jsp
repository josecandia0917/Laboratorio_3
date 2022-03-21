<%@page import ="com.emergentes.RegistroUsuario"%>
        
<%
    RegistroUsuario rU = (RegistroUsuario)request.getAttribute("rU");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registros Obtenidos</h1>
        <p>Su nombre es: <%= rU.getNombre() %> </p>
        <p>Sus apellidos son: <%= rU.getApellidos()%> </p>
        <p>Su correo es: <%= rU.getCorreo()%> </p>
        <br><br>
        <p> <b>Gracias !! :)</b> </p>
        <br><br>
            <form action="index.jsp">
                <input type="submit" value="VOLVER AL INICIO" />
            </form>
    </body>
</html>
