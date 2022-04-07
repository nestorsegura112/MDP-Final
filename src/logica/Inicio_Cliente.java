
package logica;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import logica.Conexion;

public class Inicio_Cliente implements Inicio{
    
    public Inicio_Cliente(){
        
    }

   public int ComporbarCliente(String usuario, String contraseña){
        Statement st;
        ResultSet rs;
        int cliente = 0;
        
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("SELECT documento FROM cliente where documento ="+usuario+" and contraseña ="+contraseña);
            while(rs.next()){
                
                cliente = rs.getInt(1);
            }
        } catch (SQLException ex) {
            
        }
        return cliente;
    }
   
   public int buscar(int usuario){
        Statement st;
        ResultSet rs;
        int cliente = 0;
        
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("SELECT documento FROM cliente where documento ="+usuario);
            while(rs.next()){
                
                cliente = rs.getInt(1);
            }
        } catch (SQLException ex) {
            
        }
        return cliente;
    }
}
