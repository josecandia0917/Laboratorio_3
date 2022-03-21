

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <h1>Incripcion en Curso</h1>
        <form action="ServletCurso" method="POST">
        Nombre <input type="text" name="nombre" value="" placeholder="Nombre"/>
         <br> <br>
        Apellido <input type="text" name="apellido" value="" placeholder="Apellido"/>
        <br> <br>
        Cursos <select name="Cursos" id="Cursos"  >
                    <option value="Prograciion 1">Prograciion 1 </option>
                    <option value="Base de Datos">Base de Datos </option>
                    <option value="Ingles">Ingles </option>
                    <option value="Fisica">Fisica </option>
                    <option value="Algebra">Algebra </option>
	</select>
        <br> <br>
        <input type="submit" value="Enviar">
        </form>
    </body>
</html>
