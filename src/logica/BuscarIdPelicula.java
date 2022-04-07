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

/**
 *
 * @author jhosd
 */
public class BuscarIdPelicula {
    public ResultSet Buscar(String peli){
        Statement st;
        ResultSet rs=null;
        
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("SELECT idpelicula FROM pelicula where nombre= '"+peli+"'");
        } catch (SQLException ex) {
            
        }
         return rs;   
   }
}
