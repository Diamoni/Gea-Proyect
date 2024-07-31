<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Editar Usuario</title>
    </head>
    <body>
        <%Usuario usu = (Usuario)request.getSession().getAttribute("usuEditar");%>
        <h1>Datos del Usuario</h1>
        <form action="SvEditar" method="POST">
            <p><label>Nombre: </label><input type="text" name="nombre" value="<%=usu.getNombre()%>"></p>
            <p><label>Apellido: </label><input type="text" name="apellido" value="<%=usu.getApellido()%>"></p>
            <p><label>Correo: </label><input type="text" name="correo" value="<%=usu.getCorreo()%>"></p>
            <p><label>Contraseña: </label><input type="text" name="contrasenia" value="<%=usu.getContrasenia()%>"></p>
            <p><label>Confirmar Contraseña: </label><input type="text" name="ccontrasenia" value="<%=usu.getCcontrasenia()%>"></p>
            <button type="submit">Guardar</button>
        </form>
    </body>
</html>
