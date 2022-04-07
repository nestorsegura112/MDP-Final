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
import logica.Conexion;

/**
 *
 * @author jhosd
 */
public class BuscarOcupados {
    public ResultSet Buscar(int funcion){
        Statement st;
        ResultSet rs=null;
        
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("select posicion from asiento,ticket,funcion where funcion_idfuncion=idfuncion and asiento_idasiento=idasiento and idfuncion="+funcion);
        } catch (SQLException ex) {
            
        }
         return rs;   
   }
}
