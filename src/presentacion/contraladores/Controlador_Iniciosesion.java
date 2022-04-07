
package presentacion.contraladores;

import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import javax.swing.JOptionPane;
import logica.Usuario;
import presentacion.vistas.Inicio_Sesion;
import presentacion.modelos.Modelo_Iniciosesion;

public class Controlador_Iniciosesion implements ActionListener {
    
    private Modelo_Iniciosesion modelo;
    private int usuario;
    
    public Controlador_Iniciosesion(Inicio_Sesion aThis) {
        modelo = aThis.getModelo();
    }

    @Override
    public void actionPerformed(ActionEvent e) {
        if(e.getSource()==modelo.getVentana().getIniciar()){
            usuario = modelo.getCliente(modelo.getVentana().getUsuario(), modelo.getVentana().getContraseña());
            if(usuario!=0){
                modelo.getVentana().mostrarMenucliente();
                Usuario u = Usuario.crearUsuario(modelo.getVentana().getUsuario());
                u.desLoggear();
                u = Usuario.crearUsuario(modelo.getVentana().getUsuario());
            }else{
                usuario = modelo.getAdmin(modelo.getVentana().getUsuario(), modelo.getVentana().getContraseña());
                if(usuario!=0){
                    modelo.getVentana().mostrarMenuAdmin();
                }else{
                    usuario = modelo.getEmpleado(modelo.getVentana().getUsuario(), modelo.getVentana().getContraseña());
                    if(usuario!=0){
                    modelo.getVentana().mostrarMenuEmpleado();
                    }else{
                        JOptionPane.showMessageDialog(null, "no encontrado");
                    }
                }
            }
        }else if(e.getSource()==modelo.getVentana().getRegistro()){
            modelo.getVentana().mostrarRegistro();
        }
    }
}
