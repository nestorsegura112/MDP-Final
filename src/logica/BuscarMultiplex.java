
package logica;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import logica.Conexion;

public class BuscarMultiplex {
    
    public ResultSet Buscar(){
        Statement st;
        ResultSet rs=null;
        
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("SELECT nombre FROM multiplex");
        } catch (SQLException ex) {
            
        }
         return rs;   
   }
}
