package com.gea.geaproyecto.servlests;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import logica.Controladora;
import logica.Usuario;

@WebServlet(name = "SvUsuarios", urlPatterns = {"/SvUsuarios"})
public class SvUsuarios extends HttpServlet {
Controladora control = new Controladora ();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
   
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        
        @SuppressWarnings("UnusedAssignment")
        List<Usuario> listaUsuarios = new ArrayList<>();
        listaUsuarios = control.traerUsuarios();

        HttpSession misesion = request.getSession();
        misesion.setAttribute("listaUsuarios",listaUsuarios);

        response.sendRedirect("mostrarUsuarios.jsp");

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String correo = request.getParameter("correo");
        String contrasenia = request.getParameter("contrasenia");
        String ccontrasenia = request.getParameter("ccontrasenia");

        Usuario usu = new Usuario ();
        usu.setNombre(nombre);
        usu.setApellido(apellido);
        usu.setCorreo(correo);
        usu.setContrasenia(contrasenia);
        usu.setCcontrasenia(ccontrasenia);

        control.crearUsuario(usu);

        response.sendRedirect("index.jsp");

    }

  
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
