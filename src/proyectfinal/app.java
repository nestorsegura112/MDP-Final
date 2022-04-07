
package proyectfinal;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import logica.Conexion;
import presentacion.vistas.Inicio_Sesion;
import presentacion.modelos.Modelo_Iniciosesion;

public class app {
    
    public static void main(String[] args) {
       
       Modelo_Iniciosesion m;
       m = new Modelo_Iniciosesion();
       m.iniciar();
    }   
}
