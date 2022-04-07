
package logica;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import logica.Conexion;
import logica.Conexion;

public class BuscarEmpleado {
        
    public ResultSet Buscar(int Codigo){
        Statement st;
        ResultSet rs=null;
        
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("SELECT codigo FROM empleados where codigo= "+Codigo+"");
        } catch (SQLException ex) {
            
        }
         return rs;   
   }
}
