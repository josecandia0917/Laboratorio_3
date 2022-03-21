

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de libros</h1>
        <form action="ServletLi" method="POST">
        Titulo <input type="text" name="Titulo" value="" placeholder="Titulo" />
        <br><br>
        Autor <input type="text" name="Autor" value="" placeholder="Autor" />
        <br><br>
        Resumen:<br>

        <textarea name="Resumen" placeholder="Resumen"></textarea>
        <br><br>
        Medio <br>
            <input type="radio" name="Medio" value="Fisico" id="F">
			<label for="F">Fisico</label>
		<br>
            <input type="radio" name="Medio" value="Magnetico" id="M">
                    <label for="M">Magnetico</label>
                    
        <br><br>
        <input type="submit" value="Enviar">
        </form>
    </body>
</html>
