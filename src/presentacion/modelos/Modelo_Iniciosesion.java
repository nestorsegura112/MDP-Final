
package presentacion.modelos;

import logica.Inicio_Cliente;
import logica.Inicio_Admin;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import logica.Conexion;
import logica.Inicio;
import logica.Inicio_Empleado;
import presentacion.vistas.Inicio_Sesion;

public class Modelo_Iniciosesion implements Runnable{
    
    private Inicio_Sesion Vista ;
    private Inicio a;
    
    public Inicio_Sesion getVentana() {
        if (Vista == null) {
            Vista = new Inicio_Sesion(this);
        }
        return Vista;
    }
    
    public Modelo_Iniciosesion(){
        
    }
    
    public void iniciar(){
        getVentana().setVisible(true);
        
    }
    
    public int getCliente (String usuario, String contraseña){
        a=new Inicio_Cliente();
        return a.ComporbarCliente(usuario, contraseña);
    }
    
    public int getAdmin (String usuario, String contraseña){
        a = new Inicio_Admin();
        return a.ComporbarCliente(usuario, contraseña);
    }
    
    public int getEmpleado (String usuario, String contraseña){
        a = new Inicio_Empleado();
        return a.ComporbarCliente(usuario, contraseña);
    }
            
   
    @Override
    public void run() {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
}
