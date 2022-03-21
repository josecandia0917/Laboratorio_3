<%@page import ="com.emergentes.RegiLi"%>
        
<%
    RegiLi rL = (RegiLi)request.getAttribute("rL");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro resivido </h1>
        <p>El titulo es: <%= rL.getTiulo() %> </p>
        <p>El autor es: <%= rL.getAutor() %> </p>
        <p>El resumen  es: <%= rL.getResumen() %> </p>
        
        <p>La categoria  es : </p>
        <%
                String Medio[] = rL.getMedio();
                if(Medio != null){
                    for (int i = 0; i < Medio.length; i++) {
            %>
            <option> <%=  Medio[i]  %>  </option>
            <%
                          }
                }
            %>
            <br>
            <form action="index.jsp">
                <input type="submit" value="VOLVER AL INICIO" />
            </form>
    </body>
</html>
