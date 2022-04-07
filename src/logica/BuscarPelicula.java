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
public class BuscarPelicula {
    public ResultSet Buscar(String multiplex){
        Statement st;
        ResultSet rs=null;
        
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("select imagen,pelicula.nombre,idpelicula from funcion,multiplex,pelicula where pelicula_idpelicula=idpelicula and multiplex_idmultiplex=idmultiplex and multiplex.nombre = '"+multiplex+"' group by imagen order by idpelicula");
        } catch (SQLException ex) {
            
        }
         return rs;   
   }
    public ResultSet BuscarCalificacion(int id){
        Statement st;
        ResultSet rs=null;
        try {
            Connection cn = Conexion.getConexion();
            st=cn.createStatement();
            rs=st.executeQuery("select avg(valor) from calificacion where pelicula_idpelicula = "+id);
        } catch (SQLException ex) {
            
        }
         return rs;   
   }
}
