
package presentacion.modelos;

import static java.lang.Integer.parseInt;
import logica.Inicio_RegistroUsuarios;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import logica.BuscarNombreMultiplex;
import logica.Inicio_RegistroUsuarios;
import presentacion.vistas.RegistroUsuarios;


public class Modelo_RegistroUsuarios{
    
    private RegistroUsuarios Vista ;
    
    public RegistroUsuarios getVentana() {
        if (Vista == null) {
            Vista = new RegistroUsuarios(this);
        }
        return Vista;
    }
    
    public Modelo_RegistroUsuarios(){
        
    }
    
    public void iniciar(){
        getVentana().setVisible(true);
    }

    public void registrar(){
        Inicio_RegistroUsuarios r = new Inicio_RegistroUsuarios();
        int id = parseInt(getVentana().getCedula().getText());
        String user = getVentana().getNombre().getText();
        String pass = getVentana().getContrasena().getText();
        r.registrar(id, user, pass);
        getVentana().setVisible(false);
    }
}
