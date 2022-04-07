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

public class BuscarNombreMultiplex { 
    public ResultSet Buscar(int Multiplex){
        Statement st;
        ResultSet rs=null;
        
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("SELECT nombre FROM multiplex where idmultiplex= "+Multiplex+"");
        } catch (SQLException ex) {
            
        }
         return rs;   
   }   
}
