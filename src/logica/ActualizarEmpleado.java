
package logica;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;
import logica.Conexion;
import logica.Conexion;

public class ActualizarEmpleado {
    
    public void Actualizar(int codigo, String cargo){
        
        Statement st;
        
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            st.execute("UPDATE empleados set cargo= '"+cargo+"' where codigo= "+codigo);
            JOptionPane.showMessageDialog(null, "Cargo actualizado correctamente.");
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "El cargo no fue actualizado");
        }  
    }
    
}
