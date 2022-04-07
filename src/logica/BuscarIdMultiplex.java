
package logica;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class BuscarIdMultiplex {
    
    public ResultSet Buscar(String Multiplex){
        Statement st;
        ResultSet rs=null;
        
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("SELECT idmultiplex FROM multiplex where nombre= '"+Multiplex+"'");
        } catch (SQLException ex) {
            
        }
         return rs;   
   }
}
