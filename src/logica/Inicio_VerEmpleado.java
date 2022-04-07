package logica;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Inicio_VerEmpleado {
    public ResultSet comprobarDatos(String usuario){
        Statement st;
        ResultSet rs=null;
        
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("SELECT * FROM empleados where codigo ="+usuario+"");
                            
        } catch (SQLException ex) {
            
        }
         return rs;   
   }
}
