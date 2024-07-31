package logica;

import java.util.List;
import persistencia.ControladoraPersistencia;

public class Controladora {

    ControladoraPersistencia controlPersis = new ControladoraPersistencia();

    public void crearUsuario (Usuario usu){
        controlPersis.crearUsuario(usu);

    }

    public List<Usuario> traerUsuarios () {
        return controlPersis.traerUsuarios();


    }

    public void borrarUsuario(int id_eliminar) {
        controlPersis.borrarUsuario(id_eliminar);
    }


    public Usuario traerUsuario(int id_editar) {
        controlPersis.traerUsuario(id_editar);
        return null;
    }

    public void editarUsuario(Usuario usu) {
        controlPersis.editarUsuario (usu);
    }
    
    }




