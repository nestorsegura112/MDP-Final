package logica;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

public class Inicio_RegistroUsuarios {
    public void registrar(int id, String user, String pass){
        Statement st;
        
        try {
            System.out.println("test");
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            st.execute("INSERT INTO cliente (documento, contraseña, puntos, nombre) VALUES ("+id+", '"+pass+"', 0, '"+user+"')");
            JOptionPane.showMessageDialog(null, "Usuario registrado correctamente");
                            
        } catch (SQLException ex) {
            JOptionPane.showMessageDialog(null, "Error, el usuario no se reggistró "+ex);
        }  
   }
}
