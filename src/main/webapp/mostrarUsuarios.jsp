<%@page import="java.util.List"%>
<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar Usuarios</title>
    </head>
    <body>
        <h1>Usuarios Registrados</h1>
        <% 
            List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("listaUsuarios");
            int cont = 1;
                for(Usuario usu : listaUsuarios){
        %>
        
                <p><b>Usuario Numero: <%=cont%> </b></p>
                <p>Nombre: <%=usu.getNombre()%></p>
                <p>Apellido: <%=usu.getApellido()%></p>
                <p>Correo: <%=usu.getCorreo()%></p>
                <p>Contraseña: <%=usu.getContrasenia()%></p>
                <p>Confirmar Contraseña: <%=usu.getCcontrasenia()%> </p>
                <p>-------------------------------------------------</p>
                <% cont = cont + 1;%>
        
        
        
        <% } %>
    </body>
</html>
