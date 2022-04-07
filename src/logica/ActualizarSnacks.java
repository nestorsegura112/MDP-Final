/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author nesto
 */
public class ActualizarSnacks {
    public void actualizar(int id, int cantidad, int producto){
        Statement st;
        try {
            System.out.println("Entró");
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            st.execute("UPDATE snacks_multiplex set disponibles= '"+cantidad+"' where multiplex_idmultiplex= "+id+" AND snacks_idsnack = "+producto);
        } catch (SQLException ex) {
            
        }
    }
}
