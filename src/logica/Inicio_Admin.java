
package logica;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import logica.Conexion;

public class Inicio_Admin implements Inicio{
    
    public int ComporbarCliente(String usuario, String contraseña){
        Statement st;
        ResultSet rs;
        int admin = 0;
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("SELECT codigo FROM empleados where cargo= 'Admin' and cedula ="+usuario+" and codigo ="+contraseña);
            while(rs.next()){
                admin = rs.getInt(1);
            }
        } catch (SQLException ex) {
            
        }
        return admin;
    }
}
