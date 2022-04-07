
package logica;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class IngresarEmpleados {
    
    public void ingresar(int codigo, int cedula, int telefono, String cargo, int salario, String fecha, int multiplex){
        
        Statement st;
               
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            st.execute("INSERT INTO empleados (codigo, cedula, telefono, cargo, salario, fecha_contratacion, multiplex_idmultiplex) values ("+codigo+","+cedula+","+telefono+",'"+cargo+"',"+salario+",'"+fecha+"',"+multiplex+")");
            JOptionPane.showMessageDialog(null, "Empleado añadido correctamente ");
        } catch (SQLException ex) {
           JOptionPane.showMessageDialog(null, "Error en ingreso de datos "+ex); 
        }
    }
}
