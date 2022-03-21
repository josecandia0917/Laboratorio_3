<%@page import ="com.emergentes.Registro"%>
        
<%
    Registro regis = (Registro)request.getAttribute("regi");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1> Gracias por Registarse </h1>
        <p>Su nombre es: <%= regis.getNombre() %> </p>
        <p>Su apellido es : <%= regis.getApellido()%></p>
        <p>Curso a inscribirse es : </p>
        <%
                String Cursos[] = regis.getCursos();
                if(Cursos != null){
                    for (int i = 0; i < Cursos.length; i++) {
            %>
            <option> <%= Cursos[i]%> </option>
            <%
                          }
                }
            %>
            
            <p> <b>Gracias por inscribirse !! :)</b> </p>
            
            <form action="index.jsp">
                <input type="submit" value="VOLVER AL INICIO" />
            </form>
    </body>
</html>
