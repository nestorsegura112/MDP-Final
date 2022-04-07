/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package logica;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author jhosd
 */
public class CalificarPelicula {
    public void calificar(int peli,int nota){
        Usuario u=Usuario.crearUsuario("");
        String cliente = u.getUser();
        Statement st;
        ResultSet rs=null;
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("SELECT idcalificacion,valor FROM calificacion where pelicula_idpelicula = "+peli+" and cliente_documento = "+cliente);
            if(rs.next()){
                int id = rs.getInt(1);
                JOptionPane.showMessageDialog(null, "Cambio correctamente su calificacion de "+rs.getInt(2)+" a "+nota);
                st.execute("UPDATE calificacion set valor= "+nota+" where idcalificacion= "+id);
            }
            else{
                st.execute("insert into calificacion (valor,pelicula_idpelicula,cliente_documento) values ("+nota+","+peli+","+cliente+")");
                JOptionPane.showMessageDialog(null, "Calificacion de "+nota+" registrada correctamente");
            }
        } catch (SQLException ex) {
            
        }
    }
}
