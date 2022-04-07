
package logica;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Inicio_Empleado implements Inicio{
    
    
    public int ComporbarCliente(String usuario, String contraseña){
        Statement st;
        ResultSet rs;
        int Empleado = 0;
        
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("SELECT codigo FROM empleados where cedula ="+usuario+" and codigo ="+contraseña);
            while(rs.next()){
                
                Empleado = rs.getInt(1);
            }
        } catch (SQLException ex) {
            
        }
         return Empleado;   
   }
}
