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
import javax.swing.SpinnerNumberModel;

/**
 *
 * @author nesto
 */
public class Inicio_Snacks {
    public ResultSet comprobarSnacks(){
        Statement st;
        ResultSet rs=null;
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("SELECT * FROM snacks");
                            
        } catch (SQLException ex) {
            
        }
         return rs;   
    }
    
    public ResultSet comprobarDatos(int multi){
        Statement st;
        ResultSet rs=null;
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("SELECT disponibles FROM snacks_multiplex where multiplex_idmultiplex ="+multi+"");            
        } catch (SQLException ex) {
            
        }
         return rs;   
   }
}
