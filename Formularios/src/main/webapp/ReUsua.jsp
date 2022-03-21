

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de usuario </h1>
        <form action="ServletUsuario" method="POST">
        Nombre <input type="text" name="Nombre" value="" placeholder="Nombre"/>
        <br><br>
        Apellidos <input type="text" name="Apellidos" value="" placeholder="Apellidos"/>
        <br><br>
        Correo <input type="email" name="Correo" value="" placeholder="Correo electronico"/>
        <br><br>
        Password <input type="password" name="Contraseña" value="" placeholder="password"/>
        <br><br>
        
        <input type="submit" value="Enviar">
        </form>
    </body>
</html>
