
package logica;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;


public class Conexion {
    
    private static Connection cn = null;
    private String driver;
    private String url;
    private String usuario;
    private String password;
    
    private Conexion(){
        
        String url = "jdbc:mysql://localhost:3306/cine";
        String driver = "com.mysql.jdbc.Driver";
        String usuario = "root";
        String password = "database";
        
        try
        {   
            Class.forName("com.mysql.jdbc.Driver");
            cn = DriverManager.getConnection(url,usuario,password);
            
            
        }catch(Exception e)
        {
            JOptionPane.showMessageDialog(null, "Error en la conexión");
        }
    }
    
    public static Connection getConexion(){
        if (cn == null){
            new Conexion();
        }
        
        return cn;
    }
}
