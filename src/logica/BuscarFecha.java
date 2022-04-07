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
public class BuscarFecha {
    public ResultSet Buscar(String multiplex,String pelicula){
        Statement st;
        ResultSet rs=null;
        
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("select fecha from funcion,multiplex,fechas,horario,pelicula where pelicula_idpelicula=idpelicula and multiplex_idmultiplex=idmultiplex and horario_idhorario=idhorario and fechas_idfecha=idfecha and pelicula.nombre= '"+pelicula+"' and multiplex.nombre='"+multiplex+"' group by fecha order by idfuncion");
        } catch (SQLException ex) {
            
        }
         return rs;   
   }
}
