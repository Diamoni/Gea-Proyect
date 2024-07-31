<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario de Registro</title>
    </head>
    <body>
        <h1>Datos del Usuario</h1>
        <form action="SvUsuarios" method="POST">
            <p><label>Nombre: </label><input type="text" name="nombre"></p>
            <p><label>Apellido: </label><input type="text" name="apellido"></p>
            <p><label>Correo: </label><input type="text" name="correo"></p>
            <p><label>Contraseña: </label><input type="text" name="contrasenia"></p>
            <p><label>Confirmar Contraseña: </label><input type="text" name="ccontrasenia"></p>
            <button type="submit">Enviar</button>
        </form>
        <h1>Ver Lista de Usuarios</h1>
        <p>Para ver Lista de Usuarios Click en el Botón</p>
        <form action="SvUsuarios" method="GET">
            <button type="submit">Mostrar Usuarios</button>
        </form>
        
        
        
        
    </body>
</html>
