

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Productos</h1>
        <form action="ServletPro" method="POST">
        Pruducto <input type="text" name="Producto" value="" placeholder="Producto"/>
        <br><br>
        Categoria <select name="Categoria" id="Categoria"  >
                    <option value="Regrescos">Regrescos </option>
                    <option value="Golosinas"> Golosinas </option>
                    <option value="Galletas"> Galletas  </option>
                    <option value="fruta"> frutas </option>
                    <option value="Vegetales "> Vegetales </option>
	</select>
        <br><br>
        Existencia <input type="number" name="Existencia" value="" placeholder="Existencia"/>
        <br><br>
        Precio <input type="text" name="Precio" value="" placeholder="Precio"/>
        <br><br>
        <input type="submit" value="Enviar">
                
        </form>
    </body>
</html>
